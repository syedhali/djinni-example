{
    "targets" : [
        {
            "target_name": "libsong_objc",
            "type": "static_library",
            "dependencies": [
                "deps/djinni/support-lib/support_lib.gyp:djinni_objc"
            ],
            "sources": [
                "<!@(python glob.py generated-src/objc  '*.cpp' '*.mm' '*.m')",
                "<!@(python glob.py generated-src/cpp   '*.cpp')",
                "<!@(python glob.py handwritten-src/cpp '*.cpp')",
            ],
            "include_dirs": [
                "generated-src/objc",
                "generated-src/cpp",
                "handwritten-src/objc",
                "handwritten-src/cpp",
            ]
        }
    ]
}
