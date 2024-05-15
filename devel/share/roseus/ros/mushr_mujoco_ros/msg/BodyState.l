;; Auto-generated. Do not edit!


(when (boundp 'mushr_mujoco_ros::BodyState)
  (if (not (find-package "MUSHR_MUJOCO_ROS"))
    (make-package "MUSHR_MUJOCO_ROS"))
  (shadow 'BodyState (find-package "MUSHR_MUJOCO_ROS")))
(unless (find-package "MUSHR_MUJOCO_ROS::BODYSTATE")
  (make-package "MUSHR_MUJOCO_ROS::BODYSTATE"))

(in-package "ROS")
;;//! \htmlinclude BodyState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass mushr_mujoco_ros::BodyState
  :super ros::object
  :slots (_name _ctrl_steering_angle _ctrl_velocity _pose _imu _velocity ))

(defmethod mushr_mujoco_ros::BodyState
  (:init
   (&key
    ((:name __name) "")
    ((:ctrl_steering_angle __ctrl_steering_angle) 0.0)
    ((:ctrl_velocity __ctrl_velocity) 0.0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:imu __imu) (instance sensor_msgs::Imu :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _ctrl_steering_angle (float __ctrl_steering_angle))
   (setq _ctrl_velocity (float __ctrl_velocity))
   (setq _pose __pose)
   (setq _imu __imu)
   (setq _velocity __velocity)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:ctrl_steering_angle
   (&optional __ctrl_steering_angle)
   (if __ctrl_steering_angle (setq _ctrl_steering_angle __ctrl_steering_angle)) _ctrl_steering_angle)
  (:ctrl_velocity
   (&optional __ctrl_velocity)
   (if __ctrl_velocity (setq _ctrl_velocity __ctrl_velocity)) _ctrl_velocity)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _ctrl_steering_angle
    8
    ;; float64 _ctrl_velocity
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; sensor_msgs/Imu _imu
    (send _imu :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _ctrl_steering_angle
       (sys::poke _ctrl_steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ctrl_velocity
       (sys::poke _ctrl_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; sensor_msgs/Imu _imu
       (send _imu :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _ctrl_steering_angle
     (setq _ctrl_steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ctrl_velocity
     (setq _ctrl_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; sensor_msgs/Imu _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get mushr_mujoco_ros::BodyState :md5sum-) "b8f1fd9bf43972d4a95f5b5f903bf644")
(setf (get mushr_mujoco_ros::BodyState :datatype-) "mushr_mujoco_ros/BodyState")
(setf (get mushr_mujoco_ros::BodyState :definition-)
      "string name
float64 ctrl_steering_angle
float64 ctrl_velocity
geometry_msgs/Pose pose
sensor_msgs/Imu imu
geometry_msgs/Vector3 velocity

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :mushr_mujoco_ros/BodyState "b8f1fd9bf43972d4a95f5b5f903bf644")


