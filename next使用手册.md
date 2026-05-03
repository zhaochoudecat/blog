# NexT 主题使用手册

> 基于 [theme-next/hexo-theme-next](https://github.com/theme-next/hexo-theme-next)
> 所有配置在 `_config.next.yml` 中修改

---

## 一、Scheme（主题样式）

NexT 提供 4 种 Scheme，在 `_config.next.yml` 中选择一个：

```yaml
scheme: Muse      # 经典双栏，默认
#scheme: Mist     # 紧凑双栏
#scheme: Pisces   # 简洁双栏（推荐）
#scheme: Gemini   # 现代深色侧边栏
```

**对比**：
| Scheme | 特点 |
|--------|------|
| Muse | 默认样式，侧边栏 320px |
| Mist | 与 Muse 类似，更紧凑 |
| Pisces | 侧边栏 240px，推荐中文博客使用 |
| Gemini | 侧边栏深色背景，视觉效果更现代 |

---

## 二、菜单（Menu）

```yaml
menu:
  home: / || fa fa-home           # 首页
  about: /about/ || fa fa-user    # 关于页
  tags: /tags/ || fa fa-tags      # 标签页
  categories: /categories/ || fa fa-th  # 分类页
  archives: /archives/ || fa fa-archive  # 归档页
```

- `||` 前面是链接，后面是 [Font Awesome](https://fontawesome.com/icons) 图标名
- 如果站点部署在子目录（如 `yoursite.com/blog`），去掉链接开头的 `/`

---

## 三、侧边栏（Sidebar）

```yaml
sidebar:
  position: left           # left | right
  display: post            # post（仅文章页展开）| always | hide | remove
  padding: 18              # 内边距（像素）
  offset: 12               # 与顶栏距离（仅 Pisces/Gemini）
  onmobile: false          # 窄屏是否显示（仅 Muse/Mist）
```

### 头像
```yaml
avatar:
  url: /images/avatar.gif  # 头像图片路径
  rounded: false           # 圆形头像
  rotated: false           # 鼠标悬停时旋转
```

### 社交链接
```yaml
social:
  GitHub: https://github.com/你的用户名 || fab fa-github
  E-Mail: mailto:你的邮箱@gmail.com || fa fa-envelope
  Weibo: https://weibo.com/你的用户名 || fab fa-weibo
```

### 友链
```yaml
links:
  友链标题: http://对方的网址
```

### 文章目录（TOC）
```yaml
toc:
  enable: true
  number: true             # 自动编号
  wrap: false              # 超出侧边栏宽度时换行
  expand_all: false        # 展开所有层级
  max_depth: 6             # 最大标题层级
```

---

## 四、文章设置（Post）

### 摘要与阅读更多
```yaml
excerpt_description: true  # 首页自动显示摘要
read_more_btn: true        # 显示"阅读更多"按钮
```

### 文章元信息
```yaml
post_meta:
  item_text: true          # 显示"发表于"、"更新于"文字
  created_at: true         # 显示创建时间
  updated_at:
    enable: true           # 显示更新时间
    another_day: true      # 与创建时间同一天则不显示
  categories: true         # 显示分类
```

### 打赏
```yaml
reward_settings:
  enable: false
reward:
  wechatpay: /images/wechatpay.png
  alipay: /images/alipay.png
```

### 文章导航
```yaml
post_navigation: left      # left | right | false（上/下篇位置）
```

---

## 五、代码块（Codeblock）

```yaml
codeblock:
  highlight_theme: normal   # normal | night | night eighties | night blue | night bright | solarized | solarized dark | galactic
  copy_button:
    enable: false           # 复制按钮
    show_result: false
    style:                  # default | flat | mac
```

---

## 六、字体（Font）

```yaml
font:
  enable: false             # 设为 true 开启自定义字体
  host:                     # 字体 CDN，默认 Google Fonts
  global:
    external: true
    family: Lato            # 全局字体
  title:                    # 站点标题字体
  headings:                 # 标题字体（h1-h6）
  posts:                    # 正文字体
  codes:                    # 代码字体
```

> 字体来源：[Google Fonts](https://fonts.google.com)。Pisces/Gemini 建议 global 和 title 使用 Web Safe 字体以避免侧边栏和标题间的间距问题。

---

## 七、暗色模式

```yaml
darkmode: true              # 开启后自动跟随系统/浏览器设置
```

---

## 八、评论系统

NexT 支持多种评论系统，在 `_config.next.yml` 中配置：

### Disqus
```yaml
disqus:
  enable: true
  shortname: 你的shortname
```

### Valine（国产，免费）
```yaml
valine:
  enable: true
  appid: 你的Leancloud AppID
  appkey: 你的Leancloud AppKey
  placeholder: 说点什么吧
  language: zh-cn
```

### Gitalk（基于 GitHub Issues）
```yaml
gitalk:
  enable: true
  github_id: 你的GitHub用户名
  repo: 存储评论的仓库名
  client_id: GitHub Application Client ID
  client_secret: GitHub Application Client Secret
  admin_user: 你的GitHub用户名
```

---

## 九、搜索

### 本地搜索

```bash
npm install hexo-generator-searchdb
```
```yaml
local_search:
  enable: true
  trigger: auto      # auto（输入即搜）| manual（按回车搜）
  preload: false     # 页面加载时预载搜索数据
```

### Algolia 搜索（云端）
```yaml
algolia_search:
  enable: true
  hits:
    per_page: 10
```

---

## 十、统计与分析

### 百度统计
```yaml
baidu_analytics: 你的统计ID
```

### Google Analytics
```yaml
google_analytics:
  tracking_id: 你的GA_ID
```

### 不蒜子（页面访问计数）
```yaml
busuanzi_count:
  enable: true
  total_visitors: true     # 站点总访客
  total_views: true        # 站点总访问量
  post_views: true         # 文章阅读量
```

---

## 十一、SEO

```yaml
google_site_verification:  # Google 站长验证码
bing_site_verification:    # Bing 站长验证码
baidu_site_verification:   # 百度站长验证码
baidu_push: false          # 百度主动推送
exturl: false              # 外链 Base64 加密
```

---

## 十二、页脚设置

```yaml
footer:
  since: 2015                # 站点创建年份
  icon:
    name: fa fa-heart        # Font Awesome 图标
    animated: false          # 图标动画
    color: "#ff0000"         # 图标颜色
  powered: true              # 显示 Hexo & NexT 驱动
  beian:                     # 备案信息
    enable: false
    icp:                     # ICP 备案号
    gongan_id:               # 公安备案号
```

---

## 十三、动画效果

### 页面动画（Velocity.js）

```yaml
motion:
  enable: true
  transition:
    post_block: fadeIn
    post_header: slideDownIn
    post_body: slideDownIn
```

### 页面加载进度条（Pace.js）

```yaml
pace:
  enable: true
  theme: minimal   # 可选: big-counter | bounce | flash | loading-bar | material 等
```

### Canvas Ribbon（彩带动画）

```yaml
canvas_ribbon:
  enable: false
  size: 300
  alpha: 0.6
```

---

## 十四、图片与多媒体

```yaml
fancybox: false        # 图片灯箱，与 mediumzoom 二选一
mediumzoom: false      # 图片缩放，与 fancybox 二选一
lazyload: false        # 图片懒加载
```

---

## 十五、数学公式

```yaml
math:
  per_page: true       # 仅渲染有 mathjax: true 头信息的页面
  mathjax:
    enable: false
  katex:
    enable: false
```

---

## 十六、内置标签（Tag Plugins）

### Note 标签
```
{% note %}
默认提示内容
{% endnote %}

{% note info %}
信息提示
{% endnote %}

{% note warning %}
警告提示
{% endnote %}

{% note danger %}
危险提示
{% endnote %}
```

### Tabs 标签
```
{% tabs 标签组 %}
  <!-- tab 标签1 -->
  内容1
  <!-- endtab -->
  <!-- tab 标签2 -->
  内容2
  <!-- endtab -->
{% endtabs %}
```

### PDF 嵌入
```
{% pdf /path/to/file.pdf %}
```

---

## 十七、自定义文件（高级用法）

在站点 `source/_data/` 目录下创建自定义文件，然后在配置中取消注释对应路径：

```yaml
custom_file_path:
  head: source/_data/head.swig       # 插入 <head> 标签内
  header: source/_data/header.swig   # 自定义头部
  sidebar: source/_data/sidebar.swig # 自定义侧边栏
  footer: source/_data/footer.swig   # 自定义页脚
  bodyEnd: source/_data/body-end.swig # 插入 </body> 前
  style: source/_data/styles.styl    # 自定义样式
  variable: source/_data/variables.styl # 覆盖样式变量
```

---

## 十八、常用命令

```bash
hexo clean          # 清理缓存
hexo generate       # 生成静态文件
hexo server         # 本地预览（默认 http://localhost:4000）
hexo deploy         # 部署到 GitHub Pages
```

---

## 十九、常见问题

### 1. 修改主题后没生效？
```bash
hexo clean && hexo generate && hexo server
```

### 2. 如何创建标签/分类/关于页面？
```bash
hexo new page tags       # 创建标签页
hexo new page categories # 创建分类页
hexo new page about      # 创建关于页
```

### 3. 文章头信息（Front-matter）写法
```markdown
---
title: 文章标题
date: 2024-01-01 12:00:00
categories: 分类名
tags: [标签1, 标签2]
---
```

### 4. 图片放在哪里？
启用 `post_asset_folder: true`（`_config.yml`）后，每篇文章会生成同名资源文件夹，图片放在里面即可。

### 5. 配置格式注意
YAML 格式严格区分缩进，请使用空格（不要用 Tab），注释用 `#`。

---

> 更多详细配置：[NexT 官方文档](https://theme-next.js.org/docs/)
