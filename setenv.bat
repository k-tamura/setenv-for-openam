set JAVA_OPTS=%JAVA_OPTS% -server 
set JAVA_OPTS=%JAVA_OPTS% -Xms2048m
set JAVA_OPTS=%JAVA_OPTS% -Xmx2048m

REM For JDK 7
REM set JAVA_OPTS=%JAVA_OPTS% -XX:PermSize=256m
REM set JAVA_OPTS=%JAVA_OPTS% -XX:MaxPermSize=256m
REM For JDK 8
set JAVA_OPTS=%JAVA_OPTS% -XX:MetaspaceSize=256m
set JAVA_OPTS=%JAVA_OPTS% -XX:MaxMetaspaceSize=256m

set JAVA_OPTS=%JAVA_OPTS% -Dsun.net.client.defaultReadTimeout=60000
set JAVA_OPTS=%JAVA_OPTS% -Dsun.net.client.defaultConnectTimeout=30000
set JAVA_OPTS=%JAVA_OPTS% -Dhttps.protocols=TLSv1,TLSv1.1,TLSv1.2

set JAVA_OPTS=%JAVA_OPTS% -Xloggc:%CATALINA_HOME%\logs\gc.log
set JAVA_OPTS=%JAVA_OPTS% -XX:+UseConcMarkSweepGC
set JAVA_OPTS=%JAVA_OPTS% -XX:+UseCMSCompactAtFullCollection
set JAVA_OPTS=%JAVA_OPTS% -XX:+CMSClassUnloadingEnabled
set JAVA_OPTS=%JAVA_OPTS% -XX:+PrintHeapAtGC
set JAVA_OPTS=%JAVA_OPTS% -XX:+PrintGCDetails
set JAVA_OPTS=%JAVA_OPTS% -XX:+PrintGCDateStamps
set JAVA_OPTS=%JAVA_OPTS% -XX:+UseGCLogFileRotation
set JAVA_OPTS=%JAVA_OPTS% -XX:NumberOfGCLogFiles=5
set JAVA_OPTS=%JAVA_OPTS% -XX:GCLogFileSize=10M

set JAVA_OPTS=%JAVA_OPTS% -XX:+HeapDumpOnOutOfMemoryError
set JAVA_OPTS=%JAVA_OPTS% -XX:HeapDumpPath=%CATALINA_HOME%\logs\
set JAVA_OPTS=%JAVA_OPTS% -XX:ErrorFile=%CATALINA_HOME%\logs\hs_err_pid%p.log

REM For commercial use when using Oracle Java
REM set JAVA_OPTS=%JAVA_OPTS% -XX:+UnlockCommercialFeatures
REM set JAVA_OPTS=%JAVA_OPTS% -XX:+FlightRecorder

set LANG=en_US

exit /b 0
