--- cmake_modules/CMakeUseBison.cmake.orig	2012-06-28 14:18:14.000000000 +0200
+++ cmake_modules/CMakeUseBison.cmake	2012-06-28 14:18:33.000000000 +0200
@@ -40,7 +40,9 @@
 IF(NOT BISON_EXECUTABLE)
   MESSAGE(STATUS "Looking for bison")
   FIND_PROGRAM(BISON_EXECUTABLE bison)
-  IF(BISON_EXECUTABLE)
+ENDIF(NOT BISON_EXECUTABLE)
+
+IF(BISON_EXECUTABLE)
     EXEC_PROGRAM(
 	    	${BISON_EXECUTABLE}  
         	ARGS --version
@@ -55,9 +57,8 @@
   ELSE (BISON_EXECUTABLE)
   	SET (BISON_MAJOR_VERSION "0")
 	SET (BISON_MINOR_VERSION "0")
-  ENDIF(BISON_EXECUTABLE)
-  SET (BISON_VERSION_FULL ${BISON_MAJOR_VERSION}.${BISON_MINOR_VERSION} CACHE STRING "The Bison version"  FORCE)
-ENDIF(NOT BISON_EXECUTABLE)
+ENDIF(BISON_EXECUTABLE)
+SET (BISON_VERSION_FULL ${BISON_MAJOR_VERSION}.${BISON_MINOR_VERSION} CACHE STRING "The Bison version"  FORCE)
 
 IF(BISON_EXECUTABLE)
   MACRO(BISON_FILE FILENAME)
