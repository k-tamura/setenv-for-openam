set JAVA_OPTS=%JAVA_OPTS% ^
-Xms2048m ^
-Xmx2048m ^
-XX:PermSize=256m ^
-XX:MaxPermSize=256m ^
-Xloggc:%CATALINA_HOME%/logs/gc.log ^
-XX:+UseConcMarkSweepGC ^
-XX:+UseCMSCompactAtFullCollection ^
-XX:+CMSClassUnloadingEnabled ^
-XX:+PrintHeapAtGC ^
-XX:+PrintGCDetails ^
-XX:+PrintGCDateStamps ^
-XX:+UseGCLogFileRotation ^
-XX:NumberOfGCLogFiles=5 ^
-XX:GCLogFileSize=10M ^
-XX:+HeapDumpOnOutOfMemoryError ^
-XX:HeapDumpPath=%CATALINA_HOME%/logs/ ^
-XX:ErrorFile=%CATALINA_HOME%/logs/hs_err_pid%p.log ^
-server 
set LANG=en_US
