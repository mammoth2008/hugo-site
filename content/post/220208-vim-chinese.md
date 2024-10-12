---
title: "Vim 的中文支持及解决思路"
date: 2022-02-08T15:35:49+08:00
lastmod: 2022-02-08T17:28:49+08:00
draft: false
math: false
keywords: [工具, 效率, Vim]
description: "使用 Vim 编辑中文时的问题"
tags: [Vim, 生产力, 工具, 生活]
categories: [生产力]
author: "猛犸"
---

用 Vim 编辑中文时，有两个独有的小问题：输入法切换；中文文章中光标跳转。

## 输入法切换

在插入模式和普通模式之间切换时，应该分别对应中文输入法和英文输入法（或中文输入法的英文状态）。

Vim 需要在两种模式之间频繁切换，每次都要切换输入法状态会产生干扰，打断心流。

解决方案有两个思路：输入法级的方案，和 Vim 级的方案。

### 1. 输入法级的方案

一些输入法提供了在特定软件中使用特定输入法的设置，例如搜狗拼音。但是它似乎没办法识别当前是在 Vim 的哪一种模式下。

开源输入法引擎中州韵（在 Mac 上叫"鼠须管", 在 Windows 上叫"小狼毫") 提供了更细的控制：它有个叫 [vim_mode](https://einverne.github.io/post/2020/11/rime-auto-switch-language-in-vim-mode.html) 的开关，可以根据 Vim 的所在模式自动切换。在 squirrel.custom.yaml 中配置即可。

```yaml
app_options:
	org.vim.MacVim:
	    ascii_punct: true
		vim_mode: true
	vim:
	    ascii_punct: true
		vim_mode: true
```

在这个配置里，除了打开 vim_mode 的开关外，还设置了在 Vim 或 MacVim 中使用英文标点。这在写代码时很好用，能避免用错标点导致的错误。在写中文文章时，可以用 [Pangu](https://github.com/hotoo/pangu.vim) 之类的插件自动处理一下就好了。

### 2. Vim 级的方案

也可以完全不考虑输入法，让插件来改变输入法状态。有一个叫 [smart-im](https://github.com/ybian/smartim) 的插件，可以很好地实现这一功能。

## 中文文章跳转

写英文或代码时，w 和 W 是常用的跳转方式。但是中文不用空格来分词，所以 w 会以逗号和句号为分隔符来跳转；如果使用的是中文标点，情况就更糟。

这个问题难以解决；它是个自然语言处理问题，得让计算机稍微懂一点中文才行。

要稍微迂回地解决这个问题，大概有三种思路。

### 1. 使用插件

Vim 的中文分词插件不多，可能因为这是个有点奇怪的需求。

在 Github 上有个叫 [coc-ci](https://github.com/fannheyward/coc-ci) 的中文分词插件，以 [coc.nvim](https://github.com/neoclide/coc.nvim) 为基础（顺便，coc.nvim 很强，建议安装）。但是 coc-ci 的速度太慢，按一下 w 要一秒多钟才会跳到下一个词。这显然是不可接受的。

也许是我的机器有什么配置问题吧。但是实在不想折腾，所以换了种思路：预处理。

### 2. 对中文文稿预处理

预处理的思路是：找中文分词工具把中文文稿处理一遍，编辑完后再去掉分隔符。

对比开源中文分词工具的过程略过，最后选择了 [thulac](https://github.com/thunlp/THULAC-Python) 。只要三行 python 代码，就能让它预处理一下要编辑的文稿，在词之间加上空格。

接下来正常编辑，完成后只需要再全局查找替换一下空格就可以了。

这个方案的问题是，查找替换空格往往会误删掉有用的空格，例如 Markdown 标签后的空格、链接两侧的空格、英文单词间的空格等等。虽然可以写一些规则来避免，但是逐一添加白名单的方式有点笨。

所以换一种思路：如果放弃中文分词的尝试呢？

### 3. 关键是快速移动

不要搞错了重点。我们的目的不是中文分词，而是在中文文稿中快速移动。

快速移动无非两种思路：机枪乱扫和精准点射。

使用 w 命令的移动是前者，按住键不放就可以了，视线会自动跟随光标移动。修改一下 Mac 默认的击键重复速度，速度还是挺快的。它的好处在于减少认知负担，就算跑过了头，再按 b 往回跳就行了。

即使是在 Mac 的系统设置面板中将击键重复速度调到最快，对使用 Vim 来说还是有些慢。可以在终端直接设置来让它变得更快：

``` bash
# normal minimum is 15 (225 ms)
defaults write -g InitialKeyRepeat -int 10
# normal minimum is 2 (30 ms)
defaults write -g KeyRepeat -int 1
```

当然，这样的调整对英文和代码很有用，但对于中文用处不大。

精准点射的思路是，先看好要跳去哪里，然后再用命令组合跳转。这不免会涉及到计算，是难以自动化的。

不过有一个插件，能够减少计算的难度：[vim-easymotion](https://github.com/easymotion/vim-easymotion) 插件。它和 Chrome 上的 [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?utm_source=chrome-ntp-icon) 有些相似。使用快捷键激活后，可以输入对应内容直接跳到相应位置。无论是以词为单位，还是在当前行或者当前列，都很方便。

我的 vimrc 是这样配置的：

```vimscript

" 查找一个字符
map  <Leader>i <Plug>(easymotion-bd-f)
nmap <Leader>i <Plug>(easymotion-overwin-f)

" 查找任意长度字符串
" 好像比默认的"/"还方便
nmap <leader>s <Plug>(easymotion-sn)

" 跳到任意行
omap <C-L> <Plug>(easymotion-bd-jk)
nmap <C-L> <Plug>(easymotion-overwin-line)

" 跳到任意单词
omap <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" 单方向标记可以跳转的位置
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" 以当前光标所在列为标记基准
let g:EasyMotion_startofline = 0

" 更聪明的大小写判断
" 小写字母会匹配小写和大写
" 大写字母只匹配大写
let g:EasyMotion_smartcase = 1

```

这样，算是基本解决了 Vim 中文编辑的问题。

