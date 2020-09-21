rem 对系统变量 Path 追加 新变量 newpath1、newpath2
set currentPath=%Path%
setx "Path" "%currentPath%;newpath1;newpath2" /m
pause