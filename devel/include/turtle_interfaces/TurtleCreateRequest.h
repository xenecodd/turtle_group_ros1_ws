// Generated by gencpp from file turtle_interfaces/TurtleCreateRequest.msg
// DO NOT EDIT!


#ifndef TURTLE_INTERFACES_MESSAGE_TURTLECREATEREQUEST_H
#define TURTLE_INTERFACES_MESSAGE_TURTLECREATEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turtle_interfaces
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





  typedef boost::shared_ptr< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TurtleCreateRequest_

typedef ::turtle_interfaces::TurtleCreateRequest_<std::allocator<void> > TurtleCreateRequest;

typedef boost::shared_ptr< ::turtle_interfaces::TurtleCreateRequest > TurtleCreateRequestPtr;
typedef boost::shared_ptr< ::turtle_interfaces::TurtleCreateRequest const> TurtleCreateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator1> & lhs, const ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.num == rhs.num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator1> & lhs, const ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace turtle_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54b3c80efd6fae6e6ffff8a4b9facd69";
  }

  static const char* value(const ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54b3c80efd6fae6eULL;
  static const uint64_t static_value2 = 0x6ffff8a4b9facd69ULL;
};

template<class ContainerAllocator>
struct DataType< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtle_interfaces/TurtleCreateRequest";
  }

  static const char* value(const ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 num\n"
;
  }

  static const char* value(const ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> >
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
struct Printer< ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtle_interfaces::TurtleCreateRequest_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLE_INTERFACES_MESSAGE_TURTLECREATEREQUEST_H
