JAVA_OPTS="$JAVA_OPTS -server"
JAVA_OPTS="$JAVA_OPTS -Xms2048m"
JAVA_OPTS="$JAVA_OPTS -Xmx2048m"

# For JDK 7
# JAVA_OPTS="$JAVA_OPTS -XX:PermSize=256m"
# JAVA_OPTS="$JAVA_OPTS -XX:MaxPermSize=256m"
# For JDK 8
JAVA_OPTS="$JAVA_OPTS -XX:MetaspaceSize=256m"
JAVA_OPTS="$JAVA_OPTS -XX:MaxMetaspaceSize=256m"

JAVA_OPTS="$JAVA_OPTS -Dsun.net.client.defaultReadTimeout=60000"
JAVA_OPTS="$JAVA_OPTS -Dsun.net.client.defaultConnectTimeout=30000"
JAVA_OPTS="$JAVA_OPTS -Dhttps.protocols=TLSv1,TLSv1.1,TLSv1.2"

JAVA_OPTS="$JAVA_OPTS -Xloggc:$CATALINA_HOME/logs/gc.log"
JAVA_OPTS="$JAVA_OPTS -XX:+UseConcMarkSweepGC"
JAVA_OPTS="$JAVA_OPTS -XX:+UseCMSCompactAtFullCollection"
JAVA_OPTS="$JAVA_OPTS -XX:+CMSClassUnloadingEnabled"
JAVA_OPTS="$JAVA_OPTS -XX:+PrintHeapAtGC"
JAVA_OPTS="$JAVA_OPTS -XX:+PrintGCDetails"
JAVA_OPTS="$JAVA_OPTS -XX:+PrintGCDateStamps"
JAVA_OPTS="$JAVA_OPTS -XX:+UseGCLogFileRotation"
JAVA_OPTS="$JAVA_OPTS -XX:NumberOfGCLogFiles=5"
JAVA_OPTS="$JAVA_OPTS -XX:GCLogFileSize=10M"

JAVA_OPTS="$JAVA_OPTS -XX:+HeapDumpOnOutOfMemoryError"
JAVA_OPTS="$JAVA_OPTS -XX:HeapDumpPath=$CATALINA_HOME/logs/"
JAVA_OPTS="$JAVA_OPTS -XX:ErrorFile=$CATALINA_HOME/logs/hs_err_pid%p.log"

# For commercial use when using Oracle Java
# JAVA_OPTS="$JAVA_OPTS -XX:+UnlockCommercialFeatures"
# JAVA_OPTS="$JAVA_OPTS -XX:+FlightRecorder"

LANG="en_US"
