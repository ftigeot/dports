--- Source/ThirdParty/ANGLE/src/compiler/osinclude.h.orig	2012-08-20 16:26:06.000000000 +0000
+++ Source/ThirdParty/ANGLE/src/compiler/osinclude.h
@@ -16,6 +16,7 @@
 #define ANGLE_OS_WIN
 #elif defined(__APPLE__) || defined(__linux__) || \
       defined(__FreeBSD__) || defined(__OpenBSD__) || \
+      defined(__DragonFly__) || \
       defined(__sun) || defined(ANDROID)
 #define ANGLE_OS_POSIX
 #else
