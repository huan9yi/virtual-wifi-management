@ECHO OFF

:LOOP
echo 1. 启用无线网卡
echo 2. 禁用无线网卡
echo 3. 查询无线网卡是否支持虚拟WiFi
echo 4. 启用虚拟WiFi网卡
echo 5. 禁用虚拟WiFi网卡
echo 6. 启动虚拟WiFi
echo 7. 停止虚拟WiFi
echo 8. 退出
echo.

set /p option=请选择：
if %option%==1 netsh interface set interface "无线网络连接" enabled
if %option%==2 netsh interface set interface "无线网络连接" disabled
if %option%==3 netsh wlan show drivers
if %option%==4 netsh wlan set hostednetwork mode=allow ssid=wifi key=123456789
if %option%==5 netsh wlan set hostednetwork mode=disallow
if %option%==6 netsh wlan start hostednetwork
if %option%==7 netsh wlan stop hostednetwork
if %option%==8 exit

goto LOOP
