setx "M2_HOME" "D:\core\Java\MyMaven\apache-maven-3.6.3" /m
set currentPath=%Path%
setx "Path" "%currentPath%;%%M2_HOME%%\bin;" /m
mvn -v
pause