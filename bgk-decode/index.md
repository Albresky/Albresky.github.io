# 《不挂科APP》基于旧版的精简与去更新

**不挂科APP**基于旧版的精简与去更新
<!--more-->
## 微信公众号

<span style="color:red;">本文剩余部分已更新补全，添加了fiddler、charles等工具的使用，详情请关注公众号：</span>

{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/wechat.png" caption="公众号：代码之火" title="公众号：代码之火">}}

# 前言
{{< admonition type=info title="说在前面" open=true >}}　　
妈的，工作到一半同学发来了综评表，德育分非常低，导员评的比我自评的都低（明天去找他:cry:）。一等奖没了。

很烦。

下面的文字从简，有心情（空）了再二改. 
{{< /admonition >}}　


## 1 为什么要选择“不挂科App”作为第一个逆向apk

~~说在前面，因为不挂科App还没加壳，目前我还不会脱壳。~~


话还得从今天下午5点说起：

本来想联系概率论，刷课后习题的，发现课本没有答案，于是想下载电子版pdf答案作为参考。

然而市面上的此类APP经我尝试，都很臃肿，还很流氓。

然后我就想起了刚上大学的时候用过的这款APP--->**不挂科**:star:,

但是当我安装好最新版，发现它已经被原配程序媛小姐姐更新得**面目全非**，完全感觉不到它当年
**清新儒雅**、**简洁实用**的风范:

{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/bgk_new.jpg" caption="面目全非的你" title="面目全非的你">}}

...

（**凌晨了**）

 **此处省略两百字**

## 2 使用了哪些工具来进行逆向

俗话说，工欲善其事，必先利其器。下面简述所用

**工具**：
 - **MT管理器**
 - **NP管理器**
 - **AndroidKiller**
 - JEB
 - Nox夜神模拟器
  
**环境**：
 - Windows 11 x64 专业工作站版（其实我上次没有**滚回**10）
 - jdk-7-80

## 3 逆向过程（文字细节下次补充）

### 3.1 原旧版（V1.2.2）信息
 - 原样式： 
如下图所示，原旧版APP虽能安装，但总频繁地弹出更新提示，反复想让用户更新到最新的臃肿版本。
{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/bgk_ori_update.jpg" caption="频繁的更新提示" title="频繁的更新提示">}}

转到设置，即使不检查更新，也会显示一个小红点，不仅看着不舒服，也暗示着随时可能弹出地更新窗口。
{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/settings_red.jpg" caption="设置更新小红点" title="设置更新小红点">}}

 - apk信息：
使用MT/NP管理器查看apk版本信息如下：
{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/bgk_origin.png" caption="apk信息" title="apk信息">}}

### 3.2 去除更新
 - JEB反编译：
  使用JEB反编译该apk，Manifest中找到VersionCode（经过测试，服务器不仅校验VersionName，还会检查Version Code是否最新，以此来推送更新）和VersionName。

 - 版本修改：
  对比新旧版本信息，打开NP管理器修改Manifest中的版本号和版本名称：

   - 原版本：
{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/version_ori.png" caption="原版本" title="原版本">}}

   - 新版本（修改图忘记截屏了）：

将版本名改为了imisu@9.9.9，版本号与最新版app同步（2213）

{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/version_new.png" caption="新版本" title="新版本">}}

 - 效果如下：
   - 版本信息：

{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/bgk_old_about.png" caption="版本" title="版本">}}

   - 小红点已消除，更新弹窗不会再弹出，手动检查版本也提示“已为最新版”
{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/bgk-old_check.png" caption="检查更新" title="检查更新">}}

### 3.3 去除多余推广
如图所示，”我的“界面有几项推广我们都用不到，可以去除这几项。

{{< image src="bgk_ads.png" caption="推广" title="推广">}}

打开MT管理器，找到resources.arsc：

{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/arsc.png" caption="resources.arsc" title="resources.arsc">}}

，使用Arsc编辑器打开resources.arsc，在其中中搜索字符串常量”新人礼包“：

{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/search.png" caption="新人礼包" title="新人礼包">}}

搜索结果中复制资源ID：

{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/id.png" caption="复制ID" title="复制ID">}}

返回apk根目录，在XML中搜索资源ID（尝试通过修改页面布局来隐藏推广横幅），

{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/searchRes.png" caption="搜索结果" title="搜索结果">}}

反编译其对应的xml，在xml中搜索之前的资源ID：

定位如下：

{{< image src="https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/BGK-Decode/ID_xml.png" caption="资源ID代码定位" title="资源ID代码定位">}}

删除图中框选部分即可。

成果出了点问题，下次展示。。。。

**（凌晨0:40分了）**

明天周一，得睡觉了，下次继续更新本文。

## 4 【不挂科APP】去更新版本链接

 - 下载链接：

   - {{< link "https://wwi.lanzoui.com/ieWvswf58fa" "2021/11/12更新-蓝奏云【解压密码：imisu】" "点击跳转到蓝奏云" >}}

   - {{< link "https://pan.baidu.com/s/12q2R2qL7nHP-dOHOV5l0qQ" "百度云盘【解压密码：issk】" "点击跳转到百度网盘" >}}





