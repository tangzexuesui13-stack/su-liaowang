@echo off
rem 智能瞭望数据分析处理系统启动脚本

rem 检查是否安装了必要的依赖
python -c "import flask, flask_sqlalchemy" >nul 2>&1
if %errorlevel% neq 0 (
    echo 正在安装必要的依赖...
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple flask flask-sqlalchemy
)

echo 启动智能瞭望数据分析处理系统...
echo 访问地址: http://localhost:5000
echo 按 Ctrl+C 停止服务

python run.py