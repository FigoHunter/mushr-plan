;; Auto-generated. Do not edit!


(when (boundp 'mushr_mujoco_ros::BodyStateArray)
  (if (not (find-package "MUSHR_MUJOCO_ROS"))
    (make-package "MUSHR_MUJOCO_ROS"))
  (shadow 'BodyStateArray (find-package "MUSHR_MUJOCO_ROS")))
(unless (find-package "MUSHR_MUJOCO_ROS::BODYSTATEARRAY")
  (make-package "MUSHR_MUJOCO_ROS::BODYSTATEARRAY"))

(in-package "ROS")
;;//! \htmlinclude BodyStateArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mushr_mujoco_ros::BodyStateArray
  :super ros::object
  :slots (_header _simtime _states ))

(defmethod mushr_mujoco_ros::BodyStateArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:simtime __simtime) 0.0)
    ((:states __states) (let (r) (dotimes (i 0) (push (instance mushr_mujoco_ros::BodyState :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _simtime (float __simtime))
   (setq _states __states)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:simtime
   (&optional __simtime)
   (if __simtime (setq _simtime __simtime)) _simtime)
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _simtime
    8
    ;; mushr_mujoco_ros/BodyState[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _simtime
       (sys::poke _simtime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; mushr_mujoco_ros/BodyState[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _simtime
     (setq _simtime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; mushr_mujoco_ros/BodyState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance mushr_mujoco_ros::BodyState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mushr_mujoco_ros::BodyStateArray :md5sum-) "9408c5e387da4b9bce0d27803251ba74")
(setf (get mushr_mujoco_ros::BodyStateArray :datatype-) "mushr_mujoco_ros/BodyStateArray")
(setf (get mushr_mujoco_ros::BodyStateArray :definition-)
      "std_msgs/Header header
float64 simtime
mushr_mujoco_ros/BodyState[] states

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
MSG: mushr_mujoco_ros/BodyState
string name
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



(provide :mushr_mujoco_ros/BodyStateArray "9408c5e387da4b9bce0d27803251ba74")


