// Generated by gencpp from file turtle_control/TurtleCreateResponse.msg
// DO NOT EDIT!


#ifndef TURTLE_CONTROL_MESSAGE_TURTLECREATERESPONSE_H
#define TURTLE_CONTROL_MESSAGE_TURTLECREATERESPONSE_H


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
struct TurtleCreateResponse_
{
  typedef TurtleCreateResponse_<ContainerAllocator> Type;

  TurtleCreateResponse_()
    : status()  {
    }
  TurtleCreateResponse_(const ContainerAllocator& _alloc)
    : status(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TurtleCreateResponse_

typedef ::turtle_control::TurtleCreateResponse_<std::allocator<void> > TurtleCreateResponse;

typedef boost::shared_ptr< ::turtle_control::TurtleCreateResponse > TurtleCreateResponsePtr;
typedef boost::shared_ptr< ::turtle_control::TurtleCreateResponse const> TurtleCreateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtle_control::TurtleCreateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::turtle_control::TurtleCreateResponse_<ContainerAllocator1> & lhs, const ::turtle_control::TurtleCreateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::turtle_control::TurtleCreateResponse_<ContainerAllocator1> & lhs, const ::turtle_control::TurtleCreateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace turtle_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4fe5af303955c287688e7347e9b00278";
  }

  static const char* value(const ::turtle_control::TurtleCreateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4fe5af303955c287ULL;
  static const uint64_t static_value2 = 0x688e7347e9b00278ULL;
};

template<class ContainerAllocator>
struct DataType< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtle_control/TurtleCreateResponse";
  }

  static const char* value(const ::turtle_control::TurtleCreateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string status\n"
;
  }

  static const char* value(const ::turtle_control::TurtleCreateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TurtleCreateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtle_control::TurtleCreateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtle_control::TurtleCreateResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLE_CONTROL_MESSAGE_TURTLECREATERESPONSE_H
