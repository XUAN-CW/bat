setx "JAVA_HOME" "C:\Program Files\Java\jdk-11.0.4" /m
setx "CLASSPATH" "%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar;" /m
set currentPath=%Path%
setx "Path" "%currentPath%;%%JAVA_HOME%%\bin;%%JAVA_HOME%%\jre\bin;" /m
