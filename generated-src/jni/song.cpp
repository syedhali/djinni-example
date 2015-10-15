// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from song.djinni

#include "song.hpp"  // my header
#include "Marshal.hpp"

namespace djinni_generated {

NativeSong::NativeSong() = default;

NativeSong::~NativeSong() = default;

auto NativeSong::fromCpp(JNIEnv* jniEnv, const CppType& c) -> ::djinni::LocalRef<JniType> {
    const auto& data = ::djinni::JniClass<NativeSong>::get();
    auto r = ::djinni::LocalRef<JniType>{jniEnv->NewObject(data.clazz.get(), data.jconstructor,
                                                           ::djinni::get(::djinni::String::fromCpp(jniEnv, c.title)),
                                                           ::djinni::get(::djinni::String::fromCpp(jniEnv, c.artist)))};
    ::djinni::jniExceptionCheck(jniEnv);
    return r;
}

auto NativeSong::toCpp(JNIEnv* jniEnv, JniType j) -> CppType {
    ::djinni::JniLocalScope jscope(jniEnv, 3);
    assert(j != nullptr);
    const auto& data = ::djinni::JniClass<NativeSong>::get();
    return {::djinni::String::toCpp(jniEnv, (jstring)jniEnv->GetObjectField(j, data.field_title)),
            ::djinni::String::toCpp(jniEnv, (jstring)jniEnv->GetObjectField(j, data.field_artist))};
}

}  // namespace djinni_generated
