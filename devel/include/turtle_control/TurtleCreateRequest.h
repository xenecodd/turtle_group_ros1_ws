// Generated by gencpp from file turtle_control/TurtleCreateRequest.msg
// DO NOT EDIT!


#ifndef TURTLE_CONTROL_MESSAGE_TURTLECREATEREQUEST_H
#define TURTLE_CONTROL_MESSAGE_TURTLECREATEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turtle_control
{
template <class ContainerAllocator>
struct TurtleCreateRequest_
{
  typedef TurtleCreateRequest_<ContainerAllocator> Type;

  TurtleCreateRequest_()
    : num(0)  {
    }
  TurtleCreateRequest_(const ContainerAllocator& _alloc)
    : num(0)  {
  (void)_alloc;
    }



   typedef int32_t _num_type;
  _num_type num;





  typedef boost::shared_ptr< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TurtleCreateRequest_

typedef ::turtle_control::TurtleCreateRequest_<std::allocator<void> > TurtleCreateRequest;

typedef boost::shared_ptr< ::turtle_control::TurtleCreateRequest > TurtleCreateRequestPtr;
typedef boost::shared_ptr< ::turtle_control::TurtleCreateRequest const> TurtleCreateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtle_control::TurtleCreateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::turtle_control::TurtleCreateRequest_<ContainerAllocator1> & lhs, const ::turtle_control::TurtleCreateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.num == rhs.num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::turtle_control::TurtleCreateRequest_<ContainerAllocator1> & lhs, const ::turtle_control::TurtleCreateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace turtle_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54b3c80efd6fae6e6ffff8a4b9facd69";
  }

  static const char* value(const ::turtle_control::TurtleCreateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54b3c80efd6fae6eULL;
  static const uint64_t static_value2 = 0x6ffff8a4b9facd69ULL;
};

template<class ContainerAllocator>
struct DataType< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtle_control/TurtleCreateRequest";
  }

  static const char* value(const ::turtle_control::TurtleCreateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 num\n"
;
  }

  static const char* value(const ::turtle_control::TurtleCreateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TurtleCreateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtle_control::TurtleCreateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtle_control::TurtleCreateRequest_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLE_CONTROL_MESSAGE_TURTLECREATEREQUEST_H
