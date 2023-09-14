// Generated by gencpp from file albert_skills/LookForItemResult.msg
// DO NOT EDIT!


#ifndef ALBERT_SKILLS_MESSAGE_LOOKFORITEMRESULT_H
#define ALBERT_SKILLS_MESSAGE_LOOKFORITEMRESULT_H


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
struct LookForItemResult_
{
  typedef LookForItemResult_<ContainerAllocator> Type;

  LookForItemResult_()
    : success(false)  {
    }
  LookForItemResult_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::albert_skills::LookForItemResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::albert_skills::LookForItemResult_<ContainerAllocator> const> ConstPtr;

}; // struct LookForItemResult_

typedef ::albert_skills::LookForItemResult_<std::allocator<void> > LookForItemResult;

typedef boost::shared_ptr< ::albert_skills::LookForItemResult > LookForItemResultPtr;
typedef boost::shared_ptr< ::albert_skills::LookForItemResult const> LookForItemResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::albert_skills::LookForItemResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::albert_skills::LookForItemResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::albert_skills::LookForItemResult_<ContainerAllocator1> & lhs, const ::albert_skills::LookForItemResult_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::albert_skills::LookForItemResult_<ContainerAllocator1> & lhs, const ::albert_skills::LookForItemResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace albert_skills

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::albert_skills::LookForItemResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::albert_skills::LookForItemResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::albert_skills::LookForItemResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::albert_skills::LookForItemResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::albert_skills::LookForItemResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::albert_skills::LookForItemResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::albert_skills::LookForItemResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::albert_skills::LookForItemResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::albert_skills::LookForItemResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "albert_skills/LookForItemResult";
  }

  static const char* value(const ::albert_skills::LookForItemResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::albert_skills::LookForItemResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"bool success\n"
;
  }

  static const char* value(const ::albert_skills::LookForItemResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::albert_skills::LookForItemResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LookForItemResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::albert_skills::LookForItemResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::albert_skills::LookForItemResult_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALBERT_SKILLS_MESSAGE_LOOKFORITEMRESULT_H