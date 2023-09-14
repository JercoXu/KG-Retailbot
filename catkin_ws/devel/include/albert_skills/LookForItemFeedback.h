// Generated by gencpp from file albert_skills/LookForItemFeedback.msg
// DO NOT EDIT!


#ifndef ALBERT_SKILLS_MESSAGE_LOOKFORITEMFEEDBACK_H
#define ALBERT_SKILLS_MESSAGE_LOOKFORITEMFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace albert_skills
{
template <class ContainerAllocator>
struct LookForItemFeedback_
{
  typedef LookForItemFeedback_<ContainerAllocator> Type;

  LookForItemFeedback_()
    : product_name()  {
    }
  LookForItemFeedback_(const ContainerAllocator& _alloc)
    : product_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _product_name_type;
  _product_name_type product_name;





  typedef boost::shared_ptr< ::albert_skills::LookForItemFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::albert_skills::LookForItemFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct LookForItemFeedback_

typedef ::albert_skills::LookForItemFeedback_<std::allocator<void> > LookForItemFeedback;

typedef boost::shared_ptr< ::albert_skills::LookForItemFeedback > LookForItemFeedbackPtr;
typedef boost::shared_ptr< ::albert_skills::LookForItemFeedback const> LookForItemFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::albert_skills::LookForItemFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::albert_skills::LookForItemFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::albert_skills::LookForItemFeedback_<ContainerAllocator1> & lhs, const ::albert_skills::LookForItemFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.product_name == rhs.product_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::albert_skills::LookForItemFeedback_<ContainerAllocator1> & lhs, const ::albert_skills::LookForItemFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace albert_skills

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::albert_skills::LookForItemFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::albert_skills::LookForItemFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::albert_skills::LookForItemFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::albert_skills::LookForItemFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::albert_skills::LookForItemFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::albert_skills::LookForItemFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::albert_skills::LookForItemFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "43c214cbd68be8e1dc94727572e25071";
  }

  static const char* value(const ::albert_skills::LookForItemFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x43c214cbd68be8e1ULL;
  static const uint64_t static_value2 = 0xdc94727572e25071ULL;
};

template<class ContainerAllocator>
struct DataType< ::albert_skills::LookForItemFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "albert_skills/LookForItemFeedback";
  }

  static const char* value(const ::albert_skills::LookForItemFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::albert_skills::LookForItemFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"string product_name\n"
"\n"
;
  }

  static const char* value(const ::albert_skills::LookForItemFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::albert_skills::LookForItemFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.product_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LookForItemFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::albert_skills::LookForItemFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::albert_skills::LookForItemFeedback_<ContainerAllocator>& v)
  {
    s << indent << "product_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.product_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALBERT_SKILLS_MESSAGE_LOOKFORITEMFEEDBACK_H