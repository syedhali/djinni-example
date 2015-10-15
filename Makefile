all: ios android

GypAndroid.mk:
	sh run.sh
	ANDROID_BUILD_TOP=$(shell dirname `which ndk-build`) deps/gyp/gyp --depth=. -f "gyp_extensions/android.py" -DOS=android -Icommon.gypi libsong.gyp --root-target=libsong_jni

android: GypAndroid.mk 
	cd build_android/djinniExample/ && ./gradlew app:assembleDebug

ios: 
	sh run.sh
	./deps/gyp/gyp --depth=. -f xcode -DOS=ios --generator-output ./build_ios -Icommon.gypi libsong.gyp