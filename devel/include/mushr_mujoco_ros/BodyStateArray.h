// Generated by gencpp from file mushr_mujoco_ros/BodyStateArray.msg
// DO NOT EDIT!


#ifndef MUSHR_MUJOCO_ROS_MESSAGE_BODYSTATEARRAY_H
#define MUSHR_MUJOCO_ROS_MESSAGE_BODYSTATEARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mushr_mujoco_ros/BodyState.h>

namespace mushr_mujoco_ros
{
template <class ContainerAllocator>
struct BodyStateArray_
{
  typedef BodyStateArray_<ContainerAllocator> Type;

  BodyStateArray_()
    : header()
    , simtime(0.0)
    , states()  {
    }
  BodyStateArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , simtime(0.0)
    , states(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _simtime_type;
  _simtime_type simtime;

   typedef std::vector< ::mushr_mujoco_ros::BodyState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::mushr_mujoco_ros::BodyState_<ContainerAllocator> >::other >  _states_type;
  _states_type states;





  typedef boost::shared_ptr< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> const> ConstPtr;

}; // struct BodyStateArray_

typedef ::mushr_mujoco_ros::BodyStateArray_<std::allocator<void> > BodyStateArray;

typedef boost::shared_ptr< ::mushr_mujoco_ros::BodyStateArray > BodyStateArrayPtr;
typedef boost::shared_ptr< ::mushr_mujoco_ros::BodyStateArray const> BodyStateArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mushr_mujoco_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'mushr_mujoco_ros': ['/home/robot/catkin_ws/src/mushr_mujoco_ros/msg'], 'ackermann_msgs': ['/opt/ros/melodic/share/ackermann_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9408c5e387da4b9bce0d27803251ba74";
  }

  static const char* value(const ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9408c5e387da4b9bULL;
  static const uint64_t static_value2 = 0xce0d27803251ba74ULL;
};

template<class ContainerAllocator>
struct DataType< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mushr_mujoco_ros/BodyStateArray";
  }

  static const char* value(const ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float64 simtime\n"
"mushr_mujoco_ros/BodyState[] states\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: mushr_mujoco_ros/BodyState\n"
"string name\n"
"float64 ctrl_steering_angle\n"
"float64 ctrl_velocity\n"
"geometry_msgs/Pose pose\n"
"sensor_msgs/Imu imu\n"
"geometry_msgs/Vector3 velocity\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/Imu\n"
"# This is a message to hold data from an IMU (Inertial Measurement Unit)\n"
"#\n"
"# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec\n"
"#\n"
"# If the covariance of the measurement is known, it should be filled in (if all you know is the \n"
"# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)\n"
"# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the\n"
"# data a covariance will have to be assumed or gotten from some other source\n"
"#\n"
"# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation \n"
"# estimate), please set element 0 of the associated covariance matrix to -1\n"
"# If you are interpreting this message, please check for a value of -1 in the first element of each \n"
"# covariance matrix, and disregard the associated estimate.\n"
"\n"
"Header header\n"
"\n"
"geometry_msgs/Quaternion orientation\n"
"float64[9] orientation_covariance # Row major about x, y, z axes\n"
"\n"
"geometry_msgs/Vector3 angular_velocity\n"
"float64[9] angular_velocity_covariance # Row major about x, y, z axes\n"
"\n"
"geometry_msgs/Vector3 linear_acceleration\n"
"float64[9] linear_acceleration_covariance # Row major x, y z \n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.simtime);
      stream.next(m.states);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BodyStateArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mushr_mujoco_ros::BodyStateArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "simtime: ";
    Printer<double>::stream(s, indent + "  ", v.simtime);
    s << indent << "states[]" << std::endl;
    for (size_t i = 0; i < v.states.size(); ++i)
    {
      s << indent << "  states[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mushr_mujoco_ros::BodyState_<ContainerAllocator> >::stream(s, indent + "    ", v.states[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MUSHR_MUJOCO_ROS_MESSAGE_BODYSTATEARRAY_H
