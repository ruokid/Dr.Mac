Dr.Mac
---

记录一些平时使用时发现的问题或者感觉不爽的地方

**开发中的各种CommandLineTools问题**

多出现在更新系统之后

处理方法：
```
$ sudo rm -rf $(xcode-select -print-path)
$ xcode-select --install
```
第一条命令会要求输入密码，第二条命令会弹出一个窗口，点击下载

---

**没有声音**

有时候你会发现，在系统偏好设置 -> 声音下配置都是正确的，音量也调过了，但就是没有声音

处理方法：重启进程 *coreaudiod*

---

**输入法切换要按多次**

这是一个不常见的情况，我也是长时间使用中遇到了几次之后才确认的，一开始以为是切换键下面有灰尘所以按键失灵了，但是我的笔记本是安装有虚拟机的，在虚拟机中切换居然是可以的，真是费解

处理方法：重启进程 *TISwitcher*（catalina中需要重启的进程名称是*TextInputSwitcher*和*TextInputMenuAgent*）

---

**“讨厌”的文件 .DS_Store**

在拷贝文件夹、远程访问其他系统或者外接设备的文件夹时会出现.DS_Store，这个文件你只需要知道它仅在苹果系统有用，而且没多大用就行了，具体功能可以自行搜索

如果你觉得它很烦很不美观，那么怎么办呢？

处理方法：[请看这个](https://github.com/scp404/Dr.MacBook/blob/master/rm.DS_Store.sh)

---

**便笺数据丢失（已修复）**

这个是在更新到macOS Catalina 10.15.3时候发现的，之前保存了重要数据在便笺里，今天一打开就剩下一张空白便笺，重开了几次还是这样，当场心肺停止。

别急，这个是可以恢复的，主要目录在
> ~/Library/Containers/com.apple.Stickies/Data/Library/Stickies

这个目录里面有很多随机名称文件夹，大概是用来存放各个便笺数据的，里面的TXT.rtf就是文本数据
我在处理方法的脚本里只实现里还原文本数据的功能，原理就是把这些rtf拷贝出来，但是只能用*文本编辑.app*查看

处理方法：[请看这个](https://github.com/scp404/Dr.MacBook/blob/master/find_sticky.sh)
