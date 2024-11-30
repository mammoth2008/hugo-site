---
title: "月寒日暖，来煎人寿 2024 Week 48 回顾"
date: 2024-10-06 08:00:00+08:00
lastmod: 2024-10-06 08:00:00+08:00
draft: false
math: false
keywords: [回顾, 想法, 生活]
description: "前进吧"
tags: [回顾, 记录, 生活]
categories: [生活]
author: "猛犸"
---

外面天黑了，而我正坐在电脑前发呆，努力尝试想起来某个文件的路径到底是什么。

脑袋开始混沌走神——我是怎么走到这一步的？我本来是要做什么来着？

想起来了。最初的问题，是 iCloud 空间不大够用来着。

……但是怎么变成现在这样了呢？

大概是“吾不识青天高，黄地厚；唯见月寒日暖，来煎人寿”吧。

### 从给 Github 库瘦身开始

iCloud 空间不大够用，我打算把不常用的文件挪到 NAS 上去。整理文件时，发现有两个文件夹异常巨大：一个是用来存放和生成 Blog 的文件夹，另一个是存放课程幻灯片的。

Blog 是用 Hugo 生成的静态网站，幻灯片是基于 impress.js 设计的一组网页和资源。这两个文件夹都有自己的 Github 仓库，而且幻灯片文件夹还作为子模块引入了 Blog 仓库。我使用 Github Pages 托管 Blog，把我的域名 [yemengma.cn](https://yemengma.cn) 指向了这个仓库，所以可以通过域名访问 Blog 和幻灯片。

因为是和 Github 同步，所以这两个文件夹下都有用来记录历史的 .git 文件夹；而因为幻灯片作为子模块引入了 Blog 仓库，所以幻灯片的历史也被完整保存在 Blog 仓库中。

这样一来，幻灯片文件夹本身的文件大概有 1G 左右，加上 .git 就有了 2G；而 Blog 仓库里存了一份幻灯片文件夹，还有相应的两份 .git 文件夹，平白多占用了 3G 空间。

本来这也不是什么大问题，几个 G 的空间也不算多……但是问题是我的 iCloud 只有 50G。让重复没用的文件占了 6%，这还能忍？

于是改吧。

所以总结一下， 情况大概是这样：


```
hugo-site/
  ├── content/
  ├── public/
  │   └── slides/  #  幻灯片文件夹作为子模块引用
  └── themes/
```

这种结构带来了几个问题：

- 幻灯片仓库被完整引入 Blog 仓库；
- 更新时需要同步子模块；
- 主仓库和子模块各自的 .git 文件夹都保存了完整历史；

所以解决方案也就很清晰了：

1. 将幻灯片从 Blog 中完全分离；
2. 重命名幻灯片仓库的主分支为 gh-pages，用 Github Pages 发布；
3. 删除远程主分支，重新设置分支追踪；
4. 设置域名解析，指向新的幻灯片地址；

第一步好办，删几个文件夹而已；第二步第三步也无非几个命令。

```bash
cd /path/to/slides
git branch -m main gh-pages
git push origin gh-pages
git push origin --delete main
git branch -u origin/gh-pages
```

删文件令人心情舒畅。修改完的结构如下：

```
/path/
  ├── hugo-site/    # Blog 内容
  └── slides/       # 独立的幻灯片内容
```

第四步要去阿里云上设置域名解析。打开了多年没有登录的阿里云，找到域名解析，添加一条新的 CNAME 记录，把 slides.yemengma.cn 指向 mammoth2008.github.io……

然后想起来，我的这个域名一直没备案。

那就顺手备一个吧。

2. 备案需要服务器

网站备案需要域名和服务器，而我没有服务器——Github 非常良心地提供了免费服务。

所以租了低配的阿里云服务器，有 2 核 CPU、2G 内存、3M 带宽，运行 Ubuntu 20.4，第一年租金不到 100 块。看见域名很便宜，也顺手买了个新域名 lifeplayer.club（目前备案没完成，无法访问），把 lifeplayer.club、www.lifeplayer.club、slides.lifeplayer.club 都解析到这个服务器的 IP 地址。

浪费计算资源是要遭天谴的。于是把 Blog 和幻灯片都同步到服务器上，用 Nginx 配置两个站点，这样在国内访问的速度就会快很多——毕竟 Github 在国内的访问速度比较随机。

先安装 Hugo 和 Nginx。

```bash
sudo apt Update
sudo apt install hugo
sudo apt install nginx
```

然后把文件复制到云服务器上：

```bash
rsync -avz /local/hugo-site/ root@IPAddress:/home/admin/hugo-site/
rsync -avz /local/slides/ root@IPAddress:/home/admin/slides/
```

再写个 Nginx 配置文件：

```nginx
# Blog 主站配置
server {
    listen 80;
    server_name lifeplayer.club www.lifeplayer.club IPAdress;
    root /home/admin/hugo-site/public;
    index index.html;
    error_page 404 /404.html;
    location / {
        try_files $uri $uri/ =404;
    }
    location /slides {
        alias /home/admin/slides;
        try_files $uri $uri/ =404;
    }
}

# slides 子域名配置
server {
    listen 80;
    server_name slides.lifeplayer.club;
    root /home/admin/slides;
    index index.html;
    error_page 404 /404.html;
    location / {
        try_files $uri $uri/ =404;
    }
}
```

应用配置，重启 nginx 就行了。

```bash
sudo ln -s /etc/nginx/sites-available/hugo /etc/nginx/sites-enabled/
sudo systemctl enable nginx
sudo nginx -t
sudo systemctl restart nginx
```

3. 人总是能懒则懒的

所以总结一下，现在我修改完文件后，除了要提交到 Github 上之外，还要同步到云服务器上。

嗯……所以更新一下部署脚本吧。

以前我有一个部署脚本，用来在更新文件后提交到 Github 上。现在既然要改，不妨改大一点。除了更新 Github 和云服务器上的内容外，还要考虑特殊文件的处理，以及 Blog 在服务器上的重新生成。要尽量模块化，参数化，安全性也要增强一些。

改进后的部分脚本如下：

```bash
#!/bin/bash
check_git_status() {
    if [ -n "$(git status --porcelain)" ]; then
        info "检测到未提交的更改"
        git add .
        git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')"
    fi
    local_commit=$(git rev-parse HEAD)
    remote_commit=$(git rev-parse @{u})

    if [ "$local_commit" != "$remote_commit" ]; then
        info "推送本地更改到远程仓库"
        git push || error_exit "推送失败"
    fi
}

sync_to_server() {
    info "开始同步到服务器"
    rsync -avz --exclude '.git*' \
        --exclude 'config.toml' \
        --exclude 'public/' \
        --exclude 'layouts/partials/language-selector.html' \
        ./ root@IPAddress:/home/admin/hugo-site/ || error_exit "同步失败"

    success "同步完成"
}

main() {
    check_git_status
    sync_to_server

    if [[ "$0" == *"deploy-blog"* ]]; then
        ssh root@IPAddress "cd /home/admin/hugo-site && hugo"
    fi
}
main
```

![slidesdeploy](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/slidesdeploy.jpg)

4. 重启解决 90% 问题

现在网站可以通过多个方式访问：

- Blog：yemengma.cn（GitHub Pages）和 lifeplayer.club（阿里云）
- 幻灯片：slides.yemengma.cn（GitHub Pages）和 slides.lifeplayer.club（阿里云）
- IP 直接访问也可以

维护更简单了，访问更快捷了，感觉天都更蓝了！

---

本文由 Claude 和 Github Copilot 协助完成。未标明出处的配图由 FLUX-dev 生成。

### 本周的成果

- 打球打球！
- 好几天都早起成功
- 完成了一份文件申报

### 本周的改变

- 好像还在变胖
- 买了台云服务器
- 精力好像好些了

### 做得还不错

- 完成了一些工作
- 有了一点运动
- 尝试了一个新的体系

### 做得不太好

- 戒烟没有持续
- 好像还在变胖
- 有一两天早上差点没起床

### 下周的目标

- 稳定生活节奏
- 开始使用 Vis
- 保持早起
