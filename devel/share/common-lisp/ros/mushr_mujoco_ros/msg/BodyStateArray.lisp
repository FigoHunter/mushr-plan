; Auto-generated. Do not edit!


(cl:in-package mushr_mujoco_ros-msg)


;//! \htmlinclude BodyStateArray.msg.html

(cl:defclass <BodyStateArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (simtime
    :reader simtime
    :initarg :simtime
    :type cl:float
    :initform 0.0)
   (states
    :reader states
    :initarg :states
    :type (cl:vector mushr_mujoco_ros-msg:BodyState)
   :initform (cl:make-array 0 :element-type 'mushr_mujoco_ros-msg:BodyState :initial-element (cl:make-instance 'mushr_mujoco_ros-msg:BodyState))))
)

(cl:defclass BodyStateArray (<BodyStateArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyStateArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyStateArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mushr_mujoco_ros-msg:<BodyStateArray> is deprecated: use mushr_mujoco_ros-msg:BodyStateArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BodyStateArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mushr_mujoco_ros-msg:header-val is deprecated.  Use mushr_mujoco_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'simtime-val :lambda-list '(m))
(cl:defmethod simtime-val ((m <BodyStateArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mushr_mujoco_ros-msg:simtime-val is deprecated.  Use mushr_mujoco_ros-msg:simtime instead.")
  (simtime m))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <BodyStateArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mushr_mujoco_ros-msg:states-val is deprecated.  Use mushr_mujoco_ros-msg:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyStateArray>) ostream)
  "Serializes a message object of type '<BodyStateArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'simtime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyStateArray>) istream)
  "Deserializes a message object of type '<BodyStateArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'simtime) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mushr_mujoco_ros-msg:BodyState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyStateArray>)))
  "Returns string type for a message object of type '<BodyStateArray>"
  "mushr_mujoco_ros/BodyStateArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyStateArray)))
  "Returns string type for a message object of type 'BodyStateArray"
  "mushr_mujoco_ros/BodyStateArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyStateArray>)))
  "Returns md5sum for a message object of type '<BodyStateArray>"
  "9408c5e387da4b9bce0d27803251ba74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyStateArray)))
  "Returns md5sum for a message object of type 'BodyStateArray"
  "9408c5e387da4b9bce0d27803251ba74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyStateArray>)))
  "Returns full string definition for message of type '<BodyStateArray>"
  (cl:format cl:nil "std_msgs/Header header~%float64 simtime~%mushr_mujoco_ros/BodyState[] states~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mushr_mujoco_ros/BodyState~%string name~%float64 ctrl_steering_angle~%float64 ctrl_velocity~%geometry_msgs/Pose pose~%sensor_msgs/Imu imu~%geometry_msgs/Vector3 velocity~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyStateArray)))
  "Returns full string definition for message of type 'BodyStateArray"
  (cl:format cl:nil "std_msgs/Header header~%float64 simtime~%mushr_mujoco_ros/BodyState[] states~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mushr_mujoco_ros/BodyState~%string name~%float64 ctrl_steering_angle~%float64 ctrl_velocity~%geometry_msgs/Pose pose~%sensor_msgs/Imu imu~%geometry_msgs/Vector3 velocity~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyStateArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyStateArray>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyStateArray
    (cl:cons ':header (header msg))
    (cl:cons ':simtime (simtime msg))
    (cl:cons ':states (states msg))
))
