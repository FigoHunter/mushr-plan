#!/usr/bin/env python

import rospy
from ackermann_msgs.msg import AckermannDrive, AckermannDriveStamped
from geometry_msgs.msg import PoseStamped 
import numpy as np

from geometry_msgs.msg import (
    Point,
    Pose,
    PoseWithCovariance,
    PoseWithCovarianceStamped,
    Quaternion,
)
from tf.transformations import quaternion_from_euler


init_pose = np.array([0,0,0])

def send_init_plan(pub_init_pose, pub_controls, plan):
    send_init_pose(pub_init_pose, plan[0])

def run_plan(pub_init_pose, pub_controls, plan):
    init = plan.pop(0)
    send_init_pose(pub_init_pose, init)

    for c in plan:
        send_command(pub_controls, c)


def send_init_pose(pub_init_pose, pose):
    pose_data = pose.split(",")
    assert len(pose_data) == 3

    global init_pose

    init_pose = np.array([float(x) for x in pose_data]) * 0.02

    x, y, theta = 0,0,0
    q = Quaternion(*quaternion_from_euler(0, 0, theta))
    point = Point(x=x, y=y)
    pose = PoseWithCovariance(pose=Pose(position=point, orientation=q))
    print('init_pose:', pose)
    pub_init_pose.publish(PoseWithCovarianceStamped(pose=pose))


def send_command(pub_controls, vel, steer):
    drive = AckermannDrive(steering_angle=steer, speed=vel)
    pub_controls.publish(AckermannDriveStamped(drive=drive))



    # dur = rospy.Duration(1.0)
    # rate = rospy.Rate(10)
    # start = rospy.Time.now()

    # drive = AckermannDrive(steering_angle=steer, speed=vel)

    # while rospy.Time.now() - start < dur:
        # pub_controls.publish(AckermannDriveStamped(drive=drive))
        # rate.sleep()


plan_id = 1
update_flag = True
target = np.array([0,0,0])
plan = None
pub_controls = None


if __name__ == "__main__":
    rospy.init_node("path_publisher")

    control_topic = rospy.get_param("~control_topic", "/car/mux/ackermann_cmd_mux/input/navigation")
    pub_controls = rospy.Publisher(control_topic, AckermannDriveStamped, queue_size=1)

    init_pose_topic = rospy.get_param("~init_pose_topic", "/initialpose")
    pub_init_pose = rospy.Publisher(init_pose_topic, PoseWithCovarianceStamped, queue_size=1)

    dist_thresh = rospy.get_param("~dist_thresh", 0.1)
    angle_thresh = rospy.get_param("~angle_thresh", 0.1)
    max_speed = rospy.get_param("~max_speed", 1.0)
    min_speed = rospy.get_param("~min_speed", 0.1)
    steer = rospy.get_param("~steer", 0.0)

    print('dist_thresh:', dist_thresh)
    print('angle_thresh:', angle_thresh)
    print('max_speed:', max_speed)
    print('min_speed:', min_speed)
    print('steer:', steer)


    plan_file = rospy.get_param("~plan_file")

    with open(plan_file) as f:
        plan = f.readlines()

    # Publishers sometimes need a warm-up time, you can also wait until there
    # are subscribers to start publishing see publisher documentation.
    rospy.sleep(1.0)
    send_init_plan(pub_init_pose, pub_controls, plan)
    print('init_sent')

    plan_id = 1
    update_flag = True
    target = plan[0][:-1].split(",")
    target = np.array([float(x) for x in target])*0.05
    
    def pos_callback(msg):
        global update_flag
        global plan_id
        global target
        global plan
        global dist_thresh, angle_thresh, steer, max_speed, min_speed
        global pub_controls, init_pose

        pos = msg.pose.position
        orient = msg.pose.orientation
        pos = np.array([pos.x, pos.y, pos.z])
        orient = np.array([orient.x, orient.y, orient.z, orient.w])
        if update_flag:
            print('plan: ',plan)
            print('plan_id:', plan_id)
            if plan_id >= len(plan):
                rospy.signal_shutdown("Plan finished")
                update_flag=False
                return
            target = plan[plan_id][:-1].split(",")[:2]
            target.append(0)
            target = np.array([float(x) for x in target])*0.02 - init_pose
            print('target:', target)
            update_flag=False
        dir_x = 1-2*orient[2]*orient[2]
        dir_y = 2*orient[3]*orient[2]
        angle = np.arctan2(dir_y, dir_x)
        # dir = np.array([dir_x, dir_y])
        target_dir = target - pos
        target_dist = np.linalg.norm(target_dir)
        if target_dist < 1:
            plan_id += 1
            update_flag = True
            return
        target_dir = target_dir / target_dist
        target_angle = np.arctan2(target_dir[1], target_dir[0])
        angle_diff = target_angle - angle
        if angle_diff < -np.pi:
            angle_diff += 2*np.pi
        if angle_diff > np.pi:
            angle_diff -= 2*np.pi

        angle_coef = max(min(angle_diff/np.deg2rad(angle_thresh),1), -1)
        speed_coef = min(target_dist/dist_thresh,1)
        print(target, angle_diff, target_dist)
        steer_cmd = angle_coef * steer
        speed_cmd = speed_coef * max_speed
        send_command(pub_controls, speed_cmd, steer_cmd)
        # target_dir = target_dir / np.linalg.norm(target_dir)

    odom_sub = rospy.Subscriber('/car/car_pose', PoseStamped, pos_callback)
    rospy.spin()

