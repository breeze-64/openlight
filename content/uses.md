---
title: "Uses"
date: 2026-02-22T00:00:00+08:00
draft: false
description: "我日常使用的硬件、软件和工具链——极客向，每样都有理由"
hideMeta: true
showToc: true
TocOpen: true
---

> 这里列的每样东西都是我实际在用的，每个选择都有原因。不推烂大街的，只推真正好用的。

---

## ⌨️ 硬件

**主机 — Mac Mini M4**
性价比炸裂，静音无风扇，M4 跑本地 AI 模型够用，体积小到可以藏在显示器后面。

**键盘 — Keychron Q 系列**
铝合金外壳，支持换轴，客制化起点。打代码有仪式感，不像薄膜键盘那样没有灵魂。

**鼠标 — Logitech MX Ergo（轨迹球）**
看起来很怪，用了就回不去。减少手腕大幅移动，久坐友好。极客标配，普通人看到会问"这是什么"。

**显示器 — LG 27UK850 4K**
眼睛是最重要的硬件。4K 看代码、看文档，字体渲染清晰到想哭。

**路由器 — GL.iNet（刷 OpenWrt）**
自己掌控网络层。知道流量去哪，能做的事情普通路由器想都不敢想。

**口袋服务器 — Raspberry Pi 5**
24 小时在线的私人服务器。跑 homelab、自托管服务、跑定时任务，电费比买云服务便宜一个数量级。

---

## 🖥️ 终端 & Shell

**终端 — [Ghostty](https://ghostty.org)**
Mitchell Hashimoto（Vagrant / HashiCorp 创始人）用 Zig 写的终端模拟器。2024 年底开源，极客圈炸锅。渲染快、配置简洁、不依赖任何 Electron。

**Shell — zsh + [Starship](https://starship.rs)**
Starship 用 Rust 写，毫秒级加载，显示 git 状态、语言版本、执行耗时，高度可定制。提示符是程序员的脸面。

**会话复用 — tmux + [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)**
关机不丢会话，重启恢复所有窗口。SSH 到服务器必备，断线不丢工作。

**文件管理 — [yazi](https://github.com/sxyazi/yazi)**
Rust 写的终端文件管理器，支持图片预览（是的，终端里看图）。比 `ranger` 快，比 Finder 酷。

**模糊搜索 — [fzf](https://github.com/junegunn/fzf) + [zoxide](https://github.com/ajeetdsouza/zoxide)**
`fzf` 做历史命令和文件的模糊搜索，`zoxide` 记住你去过的目录，`z proj` 直接跳转。用过就再也不想 `cd ../../` 了。

---

## ✍️ 编辑器

**主力 — [Neovim](https://neovim.io) + [LazyVim](https://www.lazyvim.org)**
学习曲线确实陡，但用熟了手离不开键盘。LazyVim 是开箱即用的配置框架，不用从零搭。代码编辑速度是 VS Code 的三倍（不是夸张）。

**次选 — [Zed](https://zed.dev)**
Rust 写的编辑器，原生多人协作和 AI 支持。冷启动瞬间完成，内存占用低到让 VS Code 汗颜。原 Atom 团队作品。

**AI 辅助编码 — [Cursor](https://cursor.sh)**
重度 AI 编程时用。Tab 补全能预测你接下来三行，`Cmd+K` 直接对话改代码。不是未来，是现在。

---

## 🛠️ CLI 工具链

现代替换方案，把系统默认命令全换掉：

```sh
# 替换 ls
eza --icons --git

# 替换 cat（语法高亮 + 行号）
bat README.md

# 替换 find（快 10 倍，语法人性化）
fd ".md" ./content

# 替换 grep（快 100 倍，自动忽略 .gitignore）
rg "TODO"

# 替换 top（好看到舍不得关）
btop

# 替换 curl（人类可读的 HTTP 客户端）
http GET api.example.com/users

# git TUI（键盘党的福音）
lazygit
```

全部通过 Homebrew 一键安装：
```sh
brew install eza bat fd ripgrep btop httpie lazygit
```

---

## 🤖 AI 工具

**个人助理 — [OpenClaw](https://openclaw.ai)**
这个网站的每日新闻简报就是它自动跑的。连接 Telegram、管理 cron job、操控浏览器、写代码推 GitHub——不是聊天机器人，是真正的自动化代理。

**本地模型 — [Ollama](https://ollama.ai)**
一行命令跑 Llama / Qwen / Gemma。数据不出本机，隐私敏感场景必备。M4 Mac Mini 跑 8B 模型毫无压力。

**命令行 AI — [llm](https://github.com/simonw/llm)**
Simon Willison 出品。`llm "解释这段报错"` 直接在终端用 AI，管道友好：`cat error.log | llm "这是什么问题"`。

**代码补全 — [avante.nvim](https://github.com/yetone/avante.nvim)**
Neovim 里的 Cursor，对话式修改代码，不用离开编辑器。

---

## 📦 开发环境

**版本管理 — [mise](https://mise.jdx.dev)**
一个工具取代 nvm + pyenv + rbenv + sdkman 全家桶。Rust 写的，速度快，`.mise.toml` 配置项目级版本，进目录自动切换。

**容器 — [OrbStack](https://orbstack.dev)**
比 Docker Desktop 快 3 倍，内存少用一半，macOS 原生体验。用过就不想回 Docker Desktop 了。

**API 测试 — [Bruno](https://www.usebruno.com)**
开源版 Postman。请求集合存成文件，可以 git 追踪，团队协作不用共享云账号。

**数据库 GUI — [TablePlus](https://tableplus.com)**
极简设计，连什么数据库都行。比 Sequel Pro 好看，比 DataGrip 轻。

---

## 🏠 自托管 Homelab

**部署平台 — [Coolify](https://coolify.io)**
树莓派或 VPS 上的自建 Heroku。Git push 自动部署，支持 Docker Compose，免费开源。

**内网穿透 — [Cloudflare Tunnel](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/)**
不暴露公网 IP，免费，把本地服务安全映射到公网域名。路由器不需要做任何配置。

**状态监控 — [Uptime Kuma](https://github.com/louislam/uptime-kuma)**
自建服务状态页。好看，支持各种通知渠道，挂了自动报警。

**密码管理 — [Vaultwarden](https://github.com/dani-garcia/vaultwarden)**
自建 Bitwarden 服务端。密码数据在自己服务器上，兼容所有 Bitwarden 客户端。数字主权。

---

## 🌐 浏览器

**主力 — [Zen Browser](https://zen-browser.app)**
Firefox 内核，竖排标签栏，极简界面，今年极客圈最热门的浏览器。隐私友好，不是 Google 生态。

**次选 — [Arc](https://arc.net)**
如果习惯 Chromium 内核。空间管理概念很新颖，但最近公司转向让人担忧。

---

## 📖 信息获取

**RSS — [NetNewsWire](https://netnewswire.com)**
免费开源，Mac + iPhone 同步，原生 SwiftUI。不给算法投喂注意力，自己决定订阅什么。

**技术资讯 — Hacker News + 本站每日简报**
HN 看深度讨论，每日简报看快速概览（就是这个网站自动生成的那个）。

**稍后读 — [Omnivore](https://omnivore.app)**
开源，支持 RSS 整合，可以和 Obsidian 同步，高亮和笔记跨设备同步。

---

## 📝 笔记

**[Obsidian](https://obsidian.md)**
本地 Markdown 文件，数据是自己的，不依赖任何云服务。插件生态庞大，Dataview 插件可以把笔记当数据库查询。配合 git 同步，比任何云笔记都可靠。

---

*最后更新：2026 年 2 月*
*如果你对某个工具有更好的替代，欢迎告诉我。*
