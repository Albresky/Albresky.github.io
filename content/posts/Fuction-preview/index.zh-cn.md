---
title: "功能预览"
subtitle: ""
date: 2021-10-04T17:20:00+08:00
lastmod: 2021-10-05T20:20:00+08:00
draft: false
author: "Albresky"
authorLink: ""
description: ""
resources:
- name: "featured-image"
  src: ""
- name: "featured-image-preview"
  src: ""

featuredImage: "https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/Fuction-preview/preview-l.jpg"
featuredImagePreview: "https://cdn.jsdelivr.net/gh/Albresky/Albresky.github.io@master/content/posts/Fuction-preview/preview-s.png"
tags: []
categories: ["Web-Maintain"]

toc:
  enable: true
math:
  enable: true
lightgallery: true
mermaid: true
mapbox:
  lightStyle: mapbox://styles/mapbox/light-zh-v1?optimize=true
  darkStyle: mapbox://styles/mapbox/dark-zh-v1?optimize=true
---
imisu | **功能预览 Function Preview**
<!--more-->

## 1 Style 自定义样式

{{< admonition >}}
Hugo **extended** 版本对于 `style` shortcode 是必需的.
{{< /admonition >}}

`style` shortcode 用来在你的文章中插入自定义样式.

`style` shortcode 有两个位置参数.

第一个参数是自定义样式的内容. 它支持 [:(fab fa-sass fa-fw): SASS](https://sass-lang.com/documentation/style-rules/declarations#nesting) 中的嵌套语法,
并且 `&` 指代这个父元素.

第二个参数是包裹你要更改样式的内容的 HTML 标签, 默认值是 `div`.
 
# **此处github检测有问题**
一个 `style` 示例:

~~呈现的输出效果如下:~~
# **此处github检测有问题**

## 2 link 链接

`link` shortcode 是 [Markdown 链接语法](../basic-markdown-syntax#links) 的替代.
`link` shortcode 可以提供一些其它的功能并且可以在代码块中使用.

支持本地资源引用的完整用法.

`link` shortcode 有以下命名参数:

* **href** *[必需]* (**第一个**位置参数)

    链接的目标.

* **content** *[可选]* (**第二个**位置参数)

    链接的内容, 默认值是 **href** 参数的值.

    *支持 Markdown 或者 HTML 格式.*

* **title** *[可选]* (**第三个**位置参数)

    HTML `a` 标签 的 `title` 属性, 当悬停在链接上会显示的提示.

* **rel** *[可选]*

    HTML `a` 标签 的 `rel` 补充属性.

* **class** *[可选]*

    HTML `a` 标签 的 `class` 属性.

一个 `link` 示例:

```markdown
{{</* link "https://assemble.io" */>}}
或者
{{</* link href="https://assemble.io" */>}}

{{</* link "mailto:contact@revolunet.com" */>}}
或者
{{</* link href="mailto:contact@revolunet.com" */>}}

{{</* link "https://assemble.io" Assemble */>}}
或者
{{</* link href="https://assemble.io" content=Assemble */>}}
```

呈现的输出效果如下:

* {{< link "https://assemble.io" >}}
* {{< link "mailto:contact@revolunet.com" >}}
* {{< link "https://assemble.io" Assemble >}}

一个带有标题的 `link` 示例:

```markdown
{{</* link "https://github.com/upstage/" Upstage "Visit Upstage!" */>}}
或者
{{</* link href="https://github.com/upstage/" content=Upstage title="Visit Upstage!" */>}}
```

呈现的输出效果如下 (将鼠标悬停在链接上，会有一行提示):

{{< link "https://github.com/upstage/" Upstage "Visit Upstage!" >}}

## 3 image 图片{#image}

`image` shortcode 是 [`figure` shortcode](../theme-documentation-built-in-shortcodes#figure) 的替代. `image` shortcode 可以充分利用 [lazysizes](https://github.com/aFarkas/lazysizes) 和 [lightgallery.js](https://github.com/sachinchoolur/lightgallery.js) 两个依赖库.

支持本地资源引用的完整用法.

`image` shortcode 有以下命名参数:

* **src** *[必需]* (**第一个**位置参数)

    图片的 URL.

* **alt** *[可选]* (**第二个**位置参数)

    图片无法显示时的替代文本, 默认值是 **src** 参数的值.

    *支持 Markdown 或者 HTML 格式.*

* **caption** *[可选]* (**第三个**位置参数)

    图片标题.

    *支持 Markdown 或者 HTML 格式.*

* **title** *[可选]*

    当悬停在图片上会显示的提示.

* **class** *[可选]*

    HTML `figure` 标签的 `class` 属性.

* **src_s** *[可选]*

    图片缩略图的 URL, 用在画廊模式中, 默认值是 **src** 参数的值.

* **src_l** *[可选]*

    高清图片的 URL, 用在画廊模式中, 默认值是 **src** 参数的值.

* **height** *[可选]*

    图片的 `height` 属性.

* **width** *[可选]*

    图片的 `width` 属性.

* **linked** *[可选]*

    图片是否需要被链接, 默认值是 `true`.

* **rel** *[可选]*

    HTML `a` 标签 的 `rel` 补充属性, 仅在 **linked** 属性设置成 `true` 时有效.

一个 `image` 示例:

```markdown
{{</* image src="lighthouse.jpg" caption="Lighthouse (`image`)" src_s="lighthouse-small.jpg" src_l="lighthouse-large.jpg" */>}}
```

呈现的输出效果如下:

{{< image src="lighthouse.jpg" caption="Lighthouse (`image`)" src_s="lighthouse-small.jpg" src_l="lighthouse-large.jpg" title="Lighthouse">}}

## 4 admonition 横幅

`admonition` shortcode 支持 **12** 种 帮助你在页面中插入提示的横幅.

*支持 Markdown 或者 HTML 格式.*

{{< admonition >}}
一个 **注意** 横幅
{{< /admonition >}}

{{< admonition abstract >}}
一个 **摘要** 横幅
{{< /admonition >}}

{{< admonition info >}}
一个 **信息** 横幅
{{< /admonition >}}

{{< admonition tip >}}
一个 **技巧** 横幅
{{< /admonition >}}

{{< admonition success >}}
一个 **成功** 横幅
{{< /admonition >}}

{{< admonition question >}}
一个 **问题** 横幅
{{< /admonition >}}

{{< admonition warning >}}
一个 **警告** 横幅
{{< /admonition >}}

{{< admonition failure >}}
一个 **失败** 横幅
{{< /admonition >}}

{{< admonition danger >}}
一个 **危险** 横幅
{{< /admonition >}}

{{< admonition bug >}}
一个 **Bug** 横幅
{{< /admonition >}}

{{< admonition example >}}
一个 **示例** 横幅
{{< /admonition >}}

{{< admonition quote >}}
一个 **引用** 横幅
{{< /admonition >}}

`admonition` shortcode 有以下命名参数:

* **type** *[必需]* (**第一个**位置参数)

    `admonition` 横幅的类型, 默认值是 `note`.

* **title** *[可选]* (**第二个**位置参数)

    `admonition` 横幅的标题, 默认值是 **type** 参数的值.

* **open** *[可选]* (**第三个**位置参数)

    横幅内容是否默认展开, 默认值是 `true`.

一个 `admonition` 示例:

```markdown
{{</* admonition type=tip title="This is a tip" open=false */>}}
一个 **技巧** 横幅
{{</* /admonition */>}}
或者
{{</* admonition tip "This is a tip" false */>}}
一个 **技巧** 横幅
{{</* /admonition */>}}
```

呈现的输出效果如下:

{{< admonition tip "This is a tip" false >}}
一个 **技巧** 横幅
{{< /admonition >}}

## 5 mermaid

[mermaid](https://mermaidjs.github.io/) 是一个可以帮助你在文章中生成图表和流程图的库, 类似 Markdown 的语法.

只需将你的 mermaid 代码插入 `mermaid` shortcode 中即可.

### 5.1 流程图 {#flowchart}

一个 **流程图** `mermaid` 示例:

```markdown
{{</* mermaid */>}}
graph LR;
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
{{</* /mermaid */>}}
```

呈现的输出效果如下:

{{< mermaid >}}
graph LR;
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
{{< /mermaid >}}

### 5.2 时序图 {#sequence-diagram}

一个 **时序图** `mermaid` 示例:

```markdown
{{</* mermaid */>}}
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->John: Fight against hypochondria
    end
    Note right of John: Rational thoughts <br/>prevail...
    John-->Alice: Great!
    John->Bob: How about you?
    Bob-->John: Jolly good!
{{</* /mermaid */>}}
```

呈现的输出效果如下:

{{< mermaid >}}
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->John: Fight against hypochondria
    end
    Note right of John: Rational thoughts <br/>prevail...
    John-->Alice: Great!
    John->Bob: How about you?
    Bob-->John: Jolly good!
{{< /mermaid >}}

### 5.3 甘特图 {#gantt}

一个 **甘特图** `mermaid` 示例:

```markdown
{{</* mermaid */>}}
gantt
    dateFormat  YYYY-MM-DD
    title Adding GANTT diagram functionality to mermaid
    section A section
    Completed task            :done,    des1, 2014-01-06,2014-01-08
    Active task               :active,  des2, 2014-01-09, 3d
    Future task               :         des3, after des2, 5d
    Future task2               :         des4, after des3, 5d
    section Critical tasks
    Completed task in the critical line :crit, done, 2014-01-06,24h
    Implement parser and jison          :crit, done, after des1, 2d
    Create tests for parser             :crit, active, 3d
    Future task in critical line        :crit, 5d
    Create tests for renderer           :2d
    Add to mermaid                      :1d
{{</* /mermaid */>}}
```

呈现的输出效果如下:

{{< mermaid >}}
gantt
    dateFormat  YYYY-MM-DD
    title Adding GANTT diagram functionality to mermaid
    section A section
    Completed task            :done,    des1, 2014-01-06,2014-01-08
    Active task               :active,  des2, 2014-01-09, 3d
    Future task               :         des3, after des2, 5d
    Future task2               :         des4, after des3, 5d
    section Critical tasks
    Completed task in the critical line :crit, done, 2014-01-06,24h
    Implement parser and jison          :crit, done, after des1, 2d
    Create tests for parser             :crit, active, 3d
    Future task in critical line        :crit, 5d
    Create tests for renderer           :2d
    Add to mermaid                      :1d
{{< /mermaid >}}



### 5.5 状态图 {#state-diagram}

一个 **状态图** `mermaid` 示例:

```markdown
{{</* mermaid */>}}
stateDiagram
    [*] --> Still
    Still --> [*]
    Still --> Moving
    Moving --> Still
    Moving --> Crash
    Crash --> [*]
{{</* /mermaid */>}}
```

呈现的输出效果如下:

{{< mermaid >}}
stateDiagram
    [*] --> Still
    Still --> [*]
    Still --> Moving
    Moving --> Still
    Moving --> Crash
    Crash --> [*]
{{< /mermaid >}}

### 5.6 Git 图 {#git-graph}

一个 **Git 图** `mermaid` 示例:

```markdown
{{</* mermaid */>}}
gitGraph:
options
{
    "nodeSpacing": 100,
    "nodeRadius": 10
}
end
    commit
    branch newbranch
    checkout newbranch
    commit
    commit
    checkout master
    commit
    commit
    merge newbranch
{{</* /mermaid */>}}
```

呈现的输出效果如下:

{{< mermaid >}}
gitGraph:
options
{
    "nodeSpacing": 100,
    "nodeRadius": 10
}
end
    commit
    branch newbranch
    checkout newbranch
    commit
    commit
    checkout master
    commit
    commit
    merge newbranch
{{< /mermaid >}}

### 5.7 实体关系图 {#erd}

一个 **erDiagram** `mermaid` 示例:

```markdown
{{</* mermaid */>}}
erDiagram
    CUSTOMER ||--o{ ORDER : places
    ORDER ||--|{ LINE-ITEM : contains
    CUSTOMER }|..|{ DELIVERY-ADDRESS : uses
{{</* /mermaid */>}}
```

呈现的输出效果如下:

{{< mermaid >}}
erDiagram
    CUSTOMER ||--o{ ORDER : places
    ORDER ||--|{ LINE-ITEM : contains
    CUSTOMER }|..|{ DELIVERY-ADDRESS : uses
{{< /mermaid >}}

### 5.8 用户旅程图 {#ujd}

一个 **旅行** `mermaid` 示例:

```markdown
{{</* mermaid */>}}
journey
    title My working day
    section Go to work
      Make tea: 5: Me
      Go upstairs: 3: Me
      Do work: 1: Me, Cat
    section Go home
      Go downstairs: 5: Me
      Sit down: 5: Me

{{</* /mermaid */>}}
```

呈现的输出效果如下:

{{< mermaid >}}
journey
    title My working day
    section Go to work
      Make tea: 5: Me
      Go upstairs: 3: Me
      Do work: 1: Me, Cat
    section Go home
      Go downstairs: 5: Me
      Sit down: 5: Me

{{< /mermaid >}}

### 5.9 饼图 {#pie}

一个 **饼图** `mermaid` 示例:

```markdown
{{</* mermaid */>}}
pie
    "Dogs" : 386
    "Cats" : 85
    "Rats" : 15
{{</* /mermaid */>}}
```

呈现的输出效果如下:

{{< mermaid >}}
pie
    "Dogs" : 386
    "Cats" : 85
    "Rats" : 15
{{< /mermaid >}}

## 6 mapbox 地图

[Mapbox GL JS](https://docs.mapbox.com/mapbox-gl-js) 是一个 JavaScript 库，它使用 WebGL, 以 [vector tiles](https://docs.mapbox.com/help/glossary/vector-tiles/) 和 [Mapbox styles](https://docs.mapbox.com/mapbox-gl-js/style-spec/) 为来源, 将它们渲染成互动式地图.

`mapbox` shortcode 有以下命名参数来使用 Mapbox GL JS:

* **lng** *[必需]* (**第一个**位置参数)

    地图初始中心点的经度, 以度为单位.

* **lat** *[必需]* (**第二个**位置参数)

    地图初始中心点的纬度, 以度为单位.

* **zoom** *[可选]* (**第三个**位置参数)

    地图的初始缩放级别, 默认值是 `10`.

* **marked** *[可选]* (**第四个**位置参数)

    是否在地图的初始中心点添加图钉, 默认值是 `true`.

* **light-style** *[可选]* (**第五个**位置参数)

    浅色主题的地图样式, 默认值是[前置参数](../theme-documentation-content#front-matter)或者[网站配置](../theme-documentation-basics#site-configuration)中设置的值.

* **dark-style** *[可选]* (**第六个**位置参数)

    深色主题的地图样式, 默认值是[前置参数](../theme-documentation-content#front-matter)或者[网站配置](../theme-documentation-basics#site-configuration)中设置的值.

* **navigation** *[可选]*

    是否添加 [NavigationControl](https://docs.mapbox.com/mapbox-gl-js/api#navigationcontrol), 默认值是[前置参数](../theme-documentation-content#front-matter)或者[网站配置](../theme-documentation-basics#site-configuration)中设置的值.

* **geolocate** *[可选]*

    是否添加 [GeolocateControl](https://docs.mapbox.com/mapbox-gl-js/api#geolocatecontrol), 默认值是[前置参数](../theme-documentation-content#front-matter)或者[网站配置](../theme-documentation-basics#site-configuration)中设置的值.

* **scale** *[可选]*

    是否添加 [ScaleControl](https://docs.mapbox.com/mapbox-gl-js/api#scalecontrol), 默认值是[前置参数](../theme-documentation-content#front-matter)或者[网站配置](../theme-documentation-basics#site-configuration)中设置的值.

* **fullscreen** *[可选]*

   是否添加 [FullscreenControl](https://docs.mapbox.com/mapbox-gl-js/api#fullscreencontrol), 默认值是[前置参数](../theme-documentation-content#front-matter)或者[网站配置](../theme-documentation-basics#site-configuration)中设置的值.

* **width** *[可选]*

    地图的宽度, 默认值是 `100%`.

* **height** *[可选]*

    地图的高度, 默认值是 `20rem`.

一个简单的 `mapbox` 示例:

```markdown
{{</* mapbox 120.345228 30.316572 12 */>}}
或者
{{</* mapbox lng=120.345228 lat=30.316572 zoom=12 */>}}
```

呈现的输出效果如下:

{{< mapbox 120.345228 30.316572 12 >}}

一个带有自定义样式的 `mapbox` 示例:

```markdown
{{</* mapbox -122.252 37.453 10 false "mapbox://styles/mapbox/streets-zh-v1" */>}}
或者
{{</* mapbox lng=-122.252 lat=37.453 zoom=10 marked=false light-style="mapbox://styles/mapbox/streets-zh-v1" */>}}
```

呈现的输出效果如下:

{{< mapbox -122.252 37.453 10 false "mapbox://styles/mapbox/streets-zh-v1?optimize=true" >}}

## 7 music 音乐

`music` shortcode 基于 [APlayer](https://github.com/MoePlayer/APlayer) 和 [MetingJS](https://github.com/metowolf/MetingJS) 提供了一个内嵌的响应式音乐播放器.

有三种方式使用 `music` shortcode.

### 7.1 自定义音乐 URL {#custom-music-url}

支持本地资源引用的完整用法.

`music` shortcode 有以下命名参数来使用自定义音乐 URL:

* **server** *[必需]*

    音乐的链接.

* **type** *[可选]*

    音乐的名称.

* **artist** *[可选]*

    音乐的创作者.

* **cover** *[可选]*

    音乐的封面链接.

一个使用自定义音乐 URL 的 `music` 示例:

```markdown
{{</* music url="music.mp3" name=你离开了南京从此没有人和我说话 artist=窑子 cover="music_cover.jpg" */>}}
```

呈现的输出效果如下:

{{< music url="music.mp3" name=你离开了南京从此没有人和我说话 artist=窑子 cover="music_cover.jpg" >}}

### 7.2 音乐平台 URL 的自动识别 {#automatic-identification}

`music` shortcode 有一个命名参数来使用音乐平台 URL 的自动识别:

* **auto** *[必需]]* (**第一个**位置参数)

    用来自动识别的音乐平台 URL, 支持 `netease`, `tencent` 和 `xiami` 平台.

一个使用音乐平台 URL 的自动识别的 `music` 示例:

```markdown
{{</* music auto="https://music.163.com/#/playlist?id=639748708" */>}}
或者
{{</* music "https://music.163.com/#/playlist?id=639748708" */>}}
```

呈现的输出效果如下:

{{< music auto="https://music.163.com/#/playlist?id=639748708" >}}

### 7.3 自定义音乐平台, 类型和 ID {#custom-server}

`music` shortcode 有以下命名参数来使用自定义音乐平台:

* **server** *[必需]* (**第一个**位置参数)

    [`netease`, `tencent`, `kugou`, `xiami`, `baidu`]

    音乐平台.

* **type** *[必需]* (**第二个**位置参数)

    [`song`, `playlist`, `album`, `search`, `artist`]

    音乐类型.

* **id** *[必需]* (**第三个**位置参数)

    歌曲 ID, 或者播放列表 ID, 或者专辑 ID, 或者搜索关键词, 或者创作者 ID.

一个使用自定义音乐平台的 `music` 示例:

```markdown
{{</* music server="netease" type="song" id="1821466030" */>}}
或者
{{</* music netease song 1821466030 */>}}
```

呈现的输出效果如下:

{{< music netease song 1821466030 >}}

### 7.4 其它参数 {#other-parameters}

`music` shortcode 有一些可以应用于以上三种方式的其它命名参数:

* **theme** *[可选]*

    音乐播放器的主题色, 默认值是 `#448aff`.

* **fixed** *[可选]*

    是否开启固定模式, 默认值是 `false`.

* **mini** *[可选]*

    是否开启迷你模式, 默认值是 `false`.

* **autoplay** *[可选]*

    是否自动播放音乐, 默认值是 `false`.

* **volume** *[可选]*

    第一次打开播放器时的默认音量, 会被保存在浏览器缓存中, 默认值是 `0.7`.

* **mutex** *[可选]*

    是否自动暂停其它播放器, 默认值是 `true`.

`music` shortcode 还有一些只适用于音乐列表方式的其它命名参数:

* **loop** *[可选]*

    [`all`, `one`, `none`]

    音乐列表的循环模式, 默认值是 `none`.

* **order** *[可选]*

    [`list`, `random`]

    音乐列表的播放顺序, 默认值是 `list`.

* **list-folded** *[可选]*

    初次打开的时候音乐列表是否折叠, 默认值是 `false`.

* **list-max-height** *[可选]*

    音乐列表的最大高度, 默认值是 `340px`.

## 8 video 视频

### 8.1 bilibili

`bilibili` shortcode 提供了一个内嵌的用来播放 bilibili 视频的响应式播放器.

如果视频只有一个部分, 则仅需要视频的 BV `id`, 例如:

```code
https://www.bilibili.com/video/BV1ZX4y1V7Qb
```

一个 `bilibili` 示例:

```markdown
{{</* bilibili BV1ZX4y1V7Qb */>}}
或者
{{</* bilibili id=BV1ZX4y1V7Qb */>}}
```

呈现的输出效果如下:

{{< bilibili id=BV1ZX4y1V7Qb >}}

如果视频包含多个部分, 则除了视频的 BV `id` 之外, 还需要 `p`, 默认值为 `1`, 例如:

```code
https://www.bilibili.com/video/BV17f4y1G7JU?p=1
```

一个带有 `p` 参数的 `bilibili` 示例:

```markdown
{{</* bilibili BV17f4y1G7JU 1 */>}}
或者
{{</* bilibili id=BV17f4y1G7JU p=1 */>}}
```

呈现的输出效果如下:

{{< bilibili id=BV17f4y1G7JU p=1 >}}

{{< admonition warning >}}
以下内容可用需要 **VPN** 才能预览
{{< /admonition >}}

### 8.2 vimeo

[`vimeo` 的文档](https://gohugo.io/content-management/shortcodes#vimeo)

一个 `vimeo` 示例:

```markdown
{{</* vimeo 146022717 */>}}
```

呈现的输出效果如下:

{{< vimeo 146022717 >}}

{{< admonition warning >}}
以下内容可用需要 **VPN** 才能预览
{{< /admonition >}}

### 8.3 YouTube

[`YouTube` 的文档](https://gohugo.io/content-management/shortcodes#youtube)

一个 `YouTube` 示例:

```markdown
{{</* youtube w7Ft2ymGmfc */>}}
```

呈现的输出效果如下:

{{< youtube w7Ft2ymGmfc >}}

## 9 Markdown 扩展语法 {#extended-markdown-syntax}

### 9.1 Emoji 支持

这部分内容在 [Emoji 支持页面](../emoji-support/) 中介绍.

### 9.2 数学公式

基于 [$ \KaTeX $](https://katex.org/) 提供数学公式的支持.

在你的 [网站配置](../theme-documentation-basics#site-configuration) 中的 `[params.math]` 下面设置属性 `enable = true`,
并在文章的前置参数中设置属性 `math: true`来启用数学公式的自动渲染.

{{< admonition tip >}}
有一份 [$ \KaTeX $ 中支持的 $ \TeX $ 函数](https://katex.org/docs/supported.html) 清单.
{{< /admonition >}}

#### 9.2.1 公式块

默认的公式块分割符是 `$$`/`$$` 和 `\\[`/`\\]`:

```markdown
$$ c = \pm\sqrt{a^2 + b^2} $$

\\[ f(x)=\int_{-\infty}^{\infty} \hat{f}(\xi) e^{2 \pi i \xi x} d \xi \\]
```

呈现的输出效果如下:

$$ c = \pm\sqrt{a^2 + b^2} $$

\\[ f(x)=\int_{-\infty}^{\infty} \hat{f}(\xi) e^{2 \pi i \xi x} d \xi \\]

#### 9.2.2 行内公式

默认的行内公式分割符是  `$`/`$` 和 `\\(`/`\\)`:

```markdown
$ c = \pm\sqrt{a^2 + b^2} $ 和 \\( f(x)=\int_{-\infty}^{\infty} \hat{f}(\xi) e^{2 \pi i \xi x} d \xi \\)
```

呈现的输出效果如下:

$ c = \pm\sqrt{a^2 + b^2} $ 和 \\( f(x)=\int_{-\infty}^{\infty} \hat{f}(\xi) e^{2 \pi i \xi x} d \xi \\)

{{< admonition tip >}}
可以在**confit.toml**中自定义公式块和行内公式的分割符.
{{< /admonition >}}

#### 9.2.3 Copy-tex

**[Copy-tex](https://github.com/Khan/KaTeX/tree/master/contrib/copy-tex)** 是一个 **$ \KaTeX $** 的插件.

通过这个扩展, 在选择并复制 $ \KaTeX $ 渲染的公式时, 会将其 $ \LaTeX $ 源代码复制到剪贴板.

在**confit.toml**中的 `[params.math]` 下面设置属性 `copyTex = true` 来启用 Copy-tex.

选择并复制上一节中渲染的公式, 可以发现复制的内容为 LaTeX 源代码.

#### 9.2.4 mhchem

**[mhchem](https://github.com/Khan/KaTeX/tree/master/contrib/mhchem)** 是一个 **$ \KaTeX $** 的插件.

通过这个扩展, 你可以在文章中轻松编写漂亮的化学方程式.

在你的 [网站配置](../theme-documentation-basics#site-configuration) 中的 `[params.math]` 下面设置属性 `mhchem = true` 来启用 mhchem.

```markdown
$$ \ce{CO2 + C -> 2 CO} $$

$$ \ce{Hg^2+ ->[I-] HgI2 ->[I-] [Hg^{II}I4]^2-} $$
```

呈现的输出效果如下:

$$ \ce{CO2 + C -> 2 CO} $$

$$ \ce{Hg^2+ ->[I-] HgI2 ->[I-] [Hg^{II}I4]^2-} $$

### 9.3 字符注音或者注释 {#ruby}

```markdown
[Hugo]{?^}(一个开源的静态网站生成工具)
```

呈现的输出效果如下:

[Hugo]^(一个开源的静态网站生成工具)

### 9.4 分数 {#fraction}

```markdown
[浅色]{?/}[深色]

[99]{?/}[100]
```

呈现的输出效果如下:

[浅色]/[深色]

[90]/[100]

### Font Awesome {#fontawesome}

使用 [Font Awesome](https://fontawesome.com/) 作为图标库.
你同样可以在文章中轻松使用这些图标.

从 [Font Awesome 网站](https://fontawesome.com/icons?d=gallery) 上获取所需的图标 `class`.

```markdown
去露营啦! {?:}(fas fa-campground fa-fw): 很快就回来.

真开心! {?:}(far fa-grin-tears):
```

呈现的输出效果如下:

去露营啦! :(fas fa-campground fa-fw): 很快就回来.

真开心! :(far fa-grin-tears):

### 转义字符 {#escape-character}

在某些特殊情况下 (编写这个主题文档时 :(far fa-grin-squint-tears):),
你的文章内容会与 Markdown 的基本或者扩展语法冲突, 并且无法避免.

转义字符语法可以帮助你渲染出想要的内容:

**此处没有通过github语法检测**

例如, 两个 `:` 会启用 emoji 语法. 但有时候这不是你想要的结果. 可以像这样使用转义字符语法:

**此处没有通过github语法检测**

呈现的输出效果如下:

**{?:}joy{?:}** 而不是 **:joy:**

{{< admonition tip >}}
这个方法可以间接解决一个还未解决的 **[Hugo 的 issue](https://github.com/gohugoio/hugo/issues/4978)**.
{{< /admonition >}}

另一个例子是:

**此处没有通过github语法检测**

呈现的输出效果如下:

**[link{?]}(#escape-character)** 而不是 **[link](#escape-character)**.

## 10 typeit 打字动画

`typeit` shortcode 基于 [TypeIt](https://typeitjs.com/) 提供了打字动画.

只需将你需要打字动画的内容插入 `typeit` shortcode 中即可.

### 10.1 简单内容 {#simple-content}

允许使用 `Markdown` 格式的简单内容, 并且 **不包含** 富文本的块内容, 例如图像等等...

一个 `typeit` 示例:

```markdown
{{</* typeit */>}}
这一个带有基于 [TypeIt](https://typeitjs.com/) 的 **打字动画** 的 *段落*...
{{</* /typeit */>}}
```

呈现的输出效果如下:

{{< typeit >}}
这一个带有基于 [TypeIt](https://typeitjs.com/) 的 **打字动画** 的 *段落*...
{{< /typeit >}}

另外, 你也可以自定义 **HTML 标签**.

一个带有 `h4` 标签的 `typeit` 示例:

```markdown
{{</* typeit tag=h4 */>}}
这一个带有基于 [TypeIt](https://typeitjs.com/) 的 **打字动画** 的 *段落*...
{{</* /typeit */>}}
```

呈现的输出效果如下:

{{< typeit tag=h4 >}}
这一个带有基于 [TypeIt](https://typeitjs.com/) 的 **打字动画** 的 *段落*...
{{< /typeit >}}

### 10.2 代码内容 {#code-content}

代码内容也是允许的, 并且通过使用参数 `code` 指定语言类型可以实习语法高亮.

一个带有 `code` 参数的 `typeit` 示例:

```markdown
{{</* typeit code=java */>}}
public class HelloWorld {
    public static void main(String []args) {
        System.out.println("Hello World");
    }
}
{{</* /typeit */>}}
```

呈现的输出效果如下:

{{< typeit code=java >}}
public class HelloWorld {
    public static void main(String []args) {
        System.out.println("Hello World");
    }
}
{{< /typeit >}}

### 10.3 分组内容 {#group-content}

默认情况下, 所有打字动画都是同时开始的.
但是有时你可能需要按顺序开始一组 `typeit` 内容的打字动画.

一组具有相同 `group` 参数值的 `typeit` 内容将按顺序开始打字动画.

一个带有 `group` 参数的 `typeit` 示例:

```markdown
{{</* typeit group=paragraph */>}}
**首先**, 这个段落开始
{{</* /typeit */>}}

{{</* typeit group=paragraph */>}}
**然后**, 这个段落开始
{{</* /typeit */>}}
```

呈现的输出效果如下:

{{< typeit group=paragraph >}}
**首先**, 这个段落开始
{{< /typeit >}}

{{< typeit group=paragraph >}}
**然后**, 这个段落开始
{{< /typeit >}}

## 11 script JS脚本

`script` shortcode 用来在你的文章中插入 **:(fab fa-js fa-fw): Javascript** 脚本.

{{< admonition >}}
脚本内容可以保证在所有的第三方库加载之后按顺序执行.
所以你可以自由地使用第三方库.
{{< /admonition >}}

一个 `script` 示例:

```markdown
{{</* script */>}}
console.log('Hello imisu!');
{{</* /script */>}}
```

你可以在开发者工具的控制台中看到输出.

{{< script >}}
console.log('Hello imisu!');
{{< /script >}}

## 12 oEmbed

oEmbed endpoints allow you to get embed HTML and basic metadata for pages, posts, and videos in order to display them in another website or app. The oEmbed endpoints require either an App Access Token or Client Access Token.

### 12.1 oEmbed Facebook

**a. oEmbed Facebook Pages**

Sample input of Facebook Pages
```markdown
{{</* oembed "fb" "page" "https://www.facebook.com/FacebookforDevelopers" */>}}
```

Sample output of Facebook Pages

{{< oembed "fb" "page" "https://www.facebook.com/FacebookforDevelopers" >}}

URL Formats

```html
https://www.facebook.com/{page-name}
https://www.facebook.com/{page-id}
```

**b. oEmbed Facebook Posts**

Sample input of Facebook Posts

```markdown
{{</* oembed "fb" "post" "https://www.facebook.com/FacebookforDevelopers/photos/a.441861428552/10151617410093553" */>}}
```

Sample output of Facebook Posts

{{< oembed "fb" "post" "https://www.facebook.com/FacebookforDevelopers/photos/a.441861428552/10151617410093553" >}}

URL Formats

```html
https://www.facebook.com/{page-name}/posts/{post-id}
https://www.facebook.com/{username}/posts/{post-id}
https://www.facebook.com/{username}/activity/{activity-id}
https://www.facebook.com/photo.php?fbid={photo-id}
https://www.facebook.com/photos/{photo-id}
https://www.facebook.com/permalink.php?story_fbid={post-id}&id={page-or-user-id}
https://www.facebook.com/media/set?set={set-id}
https://www.facebook.com/questions/{question-id}
https://www.facebook.com/notes/{username}/{note-url}/{note-id}
```

**c. oEmbed Facebook Videos**

Sample input of Facebook Videos

```markdown
{{</* oembed "fb" "video" "https://www.facebook.com/FacebookforDevelopers/videos/2201055573317594" */>}}
```

Sample output of Facebook Videos

{{< oembed "fb" "video" "https://www.facebook.com/FacebookforDevelopers/videos/2201055573317594" >}}

URL Formats

```html
https://www.facebook.com/{page-name}/videos/{video-id}/
https://www.facebook.com/{username}/videos/{video-id}/
https://www.facebook.com/video.php?id={video-id}
https://www.facebook.com/video.php?v={video-id}
```

### 12.2 oEmbed Instagram
**a. oEmbed Instagram Post**

Sample input of Instagram Post

```markdown
{{</* oembed "ig" "p" "BWNjjyYFxVx" "hidecaption" */>}}
```

Sample output of Instagram Post

{{< oembed "ig" "p" "BWNjjyYFxVx" "hidecaption" >}}

**b. oEmbed Instagram TV**

Sample input of Instagram TV

```markdown
{{</* oembed "ig" "tv" "BkQUbR8h1sp" "hidecaption" */>}}
```

Sample output of Instagram TV

{{< oembed "ig" "tv" "BkQUbR8h1sp" "hidecaption" >}}
