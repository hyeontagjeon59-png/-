@echo off
chcp 65001 >nul
set "PYTHON_EXE=C:\Program Files\Blender Foundation\Blender 5.2\5.2\python\bin\python.exe"

if not exist "%PYTHON_EXE%" (
  echo Python을 찾을 수 없습니다.
  echo Python을 설치한 뒤 server.py를 실행해 주세요.
  pause
  exit /b 1
)

echo 신라의 세 금관 전시를 시작합니다: http://localhost:8000
start "3D Viewer Server" /b "%PYTHON_EXE%" server.py
timeout /t 1 /nobreak >nul
start "" http://localhost:8000
echo 서버를 종료하려면 이 창을 닫으세요.
pause
