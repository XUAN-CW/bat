d:
cd %~dp0

rem 对系统变量 Path 追加 新变量
setx "Path" "%Path%;%~dp0bin" /m

echo basedir = %~dp0>>my-default.ini
echo datadir = %~dp0data>>my-default.ini
cd bin

mysqld -install

rem 启动：命令行输入：
net start mysql
rem 停止：命令行输入：
rem net stop mysql

rem 验证是否成功：在命令行输入：services.msc ,打开服务查看器可以看到mysql
services.msc
@cmd /k