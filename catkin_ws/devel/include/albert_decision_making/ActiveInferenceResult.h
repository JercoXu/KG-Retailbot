// Generated by gencpp from file albert_decision_making/ActiveInferenceResult.msg
// DO NOT EDIT!


#ifndef ALBERT_DECISION_MAKING_MESSAGE_ACTIVEINFERENCERESULT_H
#define ALBERT_DECISION_MAKING_MESSAGE_ACTIVEINFERENCERESULT_H


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
struct ActiveInferenceResult_
{
  typedef ActiveInferenceResult_<ContainerAllocator> Type;

  ActiveInferenceResult_()
    : res(false)  {
    }
  ActiveInferenceResult_(const ContainerAllocator& _alloc)
    : res(false)  {
  (void)_alloc;
    }



   typedef uint8_t _res_type;
  _res_type res;





  typedef boost::shared_ptr< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> const> ConstPtr;

}; // struct ActiveInferenceResult_

typedef ::albert_decision_making::ActiveInferenceResult_<std::allocator<void> > ActiveInferenceResult;

typedef boost::shared_ptr< ::albert_decision_making::ActiveInferenceResult > ActiveInferenceResultPtr;
typedef boost::shared_ptr< ::albert_decision_making::ActiveInferenceResult const> ActiveInferenceResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator1> & lhs, const ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator2> & rhs)
{
  return lhs.res == rhs.res;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator1> & lhs, const ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace albert_decision_making

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e27848a10f8e7e4030443887dfea101b";
  }

  static const char* value(const ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe27848a10f8e7e40ULL;
  static const uint64_t static_value2 = 0x30443887dfea101bULL;
};

template<class ContainerAllocator>
struct DataType< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "albert_decision_making/ActiveInferenceResult";
  }

  static const char* value(const ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"bool res\n"
;
  }

  static const char* value(const ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.res);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ActiveInferenceResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::albert_decision_making::ActiveInferenceResult_<ContainerAllocator>& v)
  {
    s << indent << "res: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.res);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALBERT_DECISION_MAKING_MESSAGE_ACTIVEINFERENCERESULT_H