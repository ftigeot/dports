--- admin/cvs.sh.orig	2007-01-27 00:25:03.000000000 -0800
+++ admin/cvs.sh	2012-04-24 09:20:18.000000000 -0700
@@ -65,8 +65,3 @@
 case $AUTOMAKE_STRING in
-  automake*1.5d* | automake*1.5* | automake*1.5-* )
-    echo "*** YOU'RE USING $AUTOMAKE_STRING."
-    echo "*** KDE requires automake $required_automake_version"
-    exit 1
-    ;;
-  automake*1.6.* | automake*1.7* | automake*1.8* | automake*1.9*)
+  automake*%%AUTOMAKE_VERSION%%* )
     echo "*** $AUTOMAKE_STRING found."
