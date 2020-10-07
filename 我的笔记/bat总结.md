# 单元

## 解决中文乱码

```bash
chcp 65001
```

## 执行脚本后不退出窗口

```bash
@cmd /k
```

## 暂停

```bash
pause
```

## 写入

### 清空后写入

```bash
echo "empty" > a.txt
```

### 追加

```bash
echo "append" >> a.txt
```

### 环境变量

#### 直接赋值

设置系统变量 BAT_HOME ，其值为 C:\bat，需要以管理员身份运行

```bash
setx /M BAT_HOME C:\bat
```

#### 追加

对系统变量 Path 追加 新变量 newpath1

```bash
setx "Path" "%Path%newpath1;" /m
```

# 符号

## 路径

| 符号   | 含义              |
| ------ | ----------------- |
| %~d0   | 当前盘符          |
| %cd%   | 当前路径          |
| %0     | 当前执行命令行    |
| %~dp0  | 当前bat文件路径   |
| %~sdp0 | 当前bat文件短路径 |

# 模块

### 判断

判断当前路径是否在 Path 变量中，如果在，显示 true， 否则显示 false


```bash
set EXISTS_FLAG=false
 %Path%|find "%~dp0">nul&&set EXISTS_FLAG=true
if "%EXISTS_FLAG%"=="true" (
	echo true
) else (
	echo false
)
@cmd /k
```

# 实用脚本

## 模板

```
chcp 65001


@cmd /k
```

## 配置

放在解压目录下，含有 bin 目录那个，然后以管理员身份运行

### mysql-5.6.49-winx64

```bash
chcp 65001
d:
cd %~dp0

rem 对系统变量 Path 追加新变量
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
```

### maven-3.6.3

```bash
chcp 65001
setx "M2_HOME" "%~dp0" /m
setx "Path" "%Path%;%%M2_HOME%%\bin;" /m
@cmd /k
```

### jdk-11.0.4

```bash
chcp 65001
setx "JAVA_HOME" "%~dp0" /m
setx "CLASSPATH" "%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar;" /m
setx "Path" "%Path%;%%JAVA_HOME%%\bin;%%JAVA_HOME%%\jre\bin;" /m
@cmd /k
```



































































































































