// Generated by gencpp from file albert_skills/PickGoal.msg
// DO NOT EDIT!


#ifndef ALBERT_SKILLS_MESSAGE_PICKGOAL_H
#define ALBERT_SKILLS_MESSAGE_PICKGOAL_H


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
struct PickGoal_
{
  typedef PickGoal_<ContainerAllocator> Type;

  PickGoal_()
    : goal_id()  {
    }
  PickGoal_(const ContainerAllocator& _alloc)
    : goal_id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _goal_id_type;
  _goal_id_type goal_id;





  typedef boost::shared_ptr< ::albert_skills::PickGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::albert_skills::PickGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PickGoal_

typedef ::albert_skills::PickGoal_<std::allocator<void> > PickGoal;

typedef boost::shared_ptr< ::albert_skills::PickGoal > PickGoalPtr;
typedef boost::shared_ptr< ::albert_skills::PickGoal const> PickGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::albert_skills::PickGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::albert_skills::PickGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::albert_skills::PickGoal_<ContainerAllocator1> & lhs, const ::albert_skills::PickGoal_<ContainerAllocator2> & rhs)
{
  return lhs.goal_id == rhs.goal_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::albert_skills::PickGoal_<ContainerAllocator1> & lhs, const ::albert_skills::PickGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace albert_skills

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::albert_skills::PickGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::albert_skills::PickGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::albert_skills::PickGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::albert_skills::PickGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::albert_skills::PickGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::albert_skills::PickGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::albert_skills::PickGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1390c9c033b60649917fd23f66f91703";
  }

  static const char* value(const ::albert_skills::PickGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1390c9c033b60649ULL;
  static const uint64_t static_value2 = 0x917fd23f66f91703ULL;
};

template<class ContainerAllocator>
struct DataType< ::albert_skills::PickGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "albert_skills/PickGoal";
  }

  static const char* value(const ::albert_skills::PickGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::albert_skills::PickGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"#int32 product_id\n"
"string goal_id\n"
;
  }

  static const char* value(const ::albert_skills::PickGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::albert_skills::PickGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PickGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::albert_skills::PickGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::albert_skills::PickGoal_<ContainerAllocator>& v)
  {
    s << indent << "goal_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.goal_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALBERT_SKILLS_MESSAGE_PICKGOAL_H
