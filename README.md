luci-app-apfree_wifidog是apfree wifidog的luci配置页面，将其集成到LEDE&OpenWrt步骤如下：

### 准备工作

```shell
#使用主目录
cd ~
#从GitHub拉取lede代码，放在lede目录下
git clone https://github.com/lede-project/source.git lede
cd lede
git checkout -b v17.01.4 v17.01.4
#返回上级目录
cd ..
#下载apfree_wifidog源码
git clone https://github.com/KunTengRom/package_apfree_wifidog.git 
#将apfree的packag复制到lede目录下
cp -r package_apfree_wifidog/apfree_wifidog lede/package/
#替换LEDE编译环境的libevent2
git clone https://github.com/KunTengRom/package_kunteng_libevent2.git
cp -fr package_kunteng_libevent2/libevent2 ~/lede/package/libs/
#下载本项目
git clone https://github.com/KunTengRom/luci-app-apfree_wifidog.git
cp -fr luci-app-apfree_wifidog ~/lede/feeds/luci/application
./script/feed install -a
#进入lede目录
cd lede/
```

## ### 编译配置

```
make menuconfig
```
选择 luci->application->apfree_wifidog

make V=s


## 联系我们
[331230369](https://jq.qq.com/?_wv=1027&k=4ADDSev)

### 如果您觉得我们的开源对您有帮助，请不要犹豫 star
