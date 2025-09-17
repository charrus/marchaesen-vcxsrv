diff --git a/AuFileName.c b/AuFileName.c
index 4ccda9d..cc5f39f 100644
--- a/AuFileName.c
+++ b/AuFileName.c
@@ -31,6 +31,9 @@ in this Software without prior written authorization from The Open Group.
 #include <X11/Xos.h>
 #include <assert.h>
 #include <stdlib.h>
+#ifdef HAVE_UNISTD_H
+# include <unistd.h>
+#endif
 
 static char *buf = NULL;
 
diff --git a/AuUnlock.c b/AuUnlock.c
index b817246..7a0c3a8 100644
--- a/AuUnlock.c
+++ b/AuUnlock.c
@@ -27,6 +27,9 @@ in this Software without prior written authorization from The Open Group.
 #ifdef HAVE_CONFIG_H
 #include <config.h>
 #endif
+#ifdef HAVE_UNISTD_H
+# include <unistd.h>
+#endif
 #include <X11/Xauth.h>
 #include <X11/Xos.h>
 
