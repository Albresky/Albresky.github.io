# imisu网站更新日志

更新了一些功能，修复了许多Bug。
<!--more-->
{{< admonition type=abstract title="2021-10-11更新日志" open=true >}}
## 更新：
 - 将服务器DNS解析从阿里云迁移到了CloudFlare
 - 使用了CloudFlare CDN
 - 开启了JsDelivr加速js加载
 - 将评论系统更换为了valine，已实现免登录的评论功能
   - **缺点：** 免费版Valine对服务时长有限制，每天会有6小时宕机（**后期通过脚本可解决**）
 - 添加了Google Analytics，实现后台网站访问数据的概览

## Bugs:
 - 评论系统Valine使用的Gavatar头像，大多数评论者评论时提交的邮箱并非Gavatar邮箱，故他们的头像无法显示
 - 搜索框依旧不可用（正在解决:happy:）
{{< /admonition >}}

{{< admonition type=abstract title="2021-10-05更新日志" open=true >}}
## 更新:
 - 作者的头像
 - mapbox（~~我也不知道有什么用 ~~:sweat_smile:）(-->网页中可以显示地图)
 - Cookies 请求页面(~~Bugs: ain't appear sometimes~~)
 - 页脚的版权标识
 - ~~动态标题~~(已改为动态副标题)
 - 增加了表情系统~~但还未测试~~
## Bugs:
 - ~~一些内容不会显示在主页的上，如“2021年”~~
 - ~~一些东西没有同步到Github，比如主页上的帖子是不可见的，网页发布时，“文章”页面上的标题仍然是默认的~~
 - 搜索框~~不知何故~~不可用
{{< /admonition >}}
