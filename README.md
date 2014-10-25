Win7中启用虚拟WIFI的方法：

1.查询无线网卡是否支持虚拟WiFi
netsh wlan show drivers

2.开启系统服务
Windows Firewall、WLAN AutoConfig

3.启用虚拟WiFi网卡 
运行命令：netsh wlan set hostednetwork mode=allow ssid=xxx key=xxx
mode：是否启用虚拟WiFi网卡，改为disallow则为禁用
ssid：无线网络名称，最好用英文
key：无线网络密码，八个以上字符
以上三个参数可以单独使用，例如单独使用mode=disallow可以直接禁用虚拟Wifi网卡，开启成功后，网络连接中会多出一个叫“Microsoft Virtual WiFi Miniport Adapter”的连接

4.设置Internet连接共享
将本地连接或者宽带连接（取决于是直接上网还是拨号上网）共享给虚拟WiFi网卡

5.启动虚拟WiFi
运行命令：netsh wlan start hostednetwork

6.停止虚拟WiFi
运行命令：netsh wlan stop hostednetwork
