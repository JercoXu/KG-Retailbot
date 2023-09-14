// Generated by gencpp from file albert_decision_making/SymbolicPerceptionRequest.msg
// DO NOT EDIT!


#ifndef ALBERT_DECISION_MAKING_MESSAGE_SYMBOLICPERCEPTIONREQUEST_H
#define ALBERT_DECISION_MAKING_MESSAGE_SYMBOLICPERCEPTIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace albert_decision_making
{
template <class ContainerAllocator>
struct SymbolicPerceptionRequest_
{
  typedef SymbolicPerceptionRequest_<ContainerAllocator> Type;

  SymbolicPerceptionRequest_()
    : state_name()
    , product_id()  {
    }
  SymbolicPerceptionRequest_(const ContainerAllocator& _alloc)
    : state_name(_alloc)
    , product_id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _state_name_type;
  _state_name_type state_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _product_id_type;
  _product_id_type product_id;





  typedef boost::shared_ptr< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SymbolicPerceptionRequest_

typedef ::albert_decision_making::SymbolicPerceptionRequest_<std::allocator<void> > SymbolicPerceptionRequest;

typedef boost::shared_ptr< ::albert_decision_making::SymbolicPerceptionRequest > SymbolicPerceptionRequestPtr;
typedef boost::shared_ptr< ::albert_decision_making::SymbolicPerceptionRequest const> SymbolicPerceptionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator1> & lhs, const ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.state_name == rhs.state_name &&
    lhs.product_id == rhs.product_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator1> & lhs, const ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace albert_decision_making

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fa1af8ee22a6e69ca23a094ee7dc1b07";
  }

  static const char* value(const ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfa1af8ee22a6e69cULL;
  static const uint64_t static_value2 = 0xa23a094ee7dc1b07ULL;
};

template<class ContainerAllocator>
struct DataType< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "albert_decision_making/SymbolicPerceptionRequest";
  }

  static const char* value(const ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string state_name\n"
"string product_id\n"
;
  }

  static const char* value(const ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state_name);
      stream.next(m.product_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SymbolicPerceptionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::albert_decision_making::SymbolicPerceptionRequest_<ContainerAllocator>& v)
  {
    s << indent << "state_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.state_name);
    s << indent << "product_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.product_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALBERT_DECISION_MAKING_MESSAGE_SYMBOLICPERCEPTIONREQUEST_H