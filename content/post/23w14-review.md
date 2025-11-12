---
title: "我的工作流被 AI 再造了 2023 Week 14 回顾"
date: 2023-04-08 08:45:07+08:00
lastmod: 2023-04-08 08:45:07+08:00
draft: false
math: false
keywords: [回顾, 想法, 生活]
description: "卷起来了"
tags: [回顾, 记录, 生活]
categories: [生活]
author: "猛犸"
---

写东西的好处有很多，随便就能想出一大把：训练自己的思维、训练自己的表达能力、记录和分享、沉淀知识、构建个人品牌、帮助他人等等。

但是大多数人很少写东西；我猜是因为这个过程很痛苦，需要长期训练才能习惯。要写一篇还能看得过去的东西，首先需要一个主题，然后把它扩展成一篇文章；接下来还要转换角色，把自己放在批评者的角度通读几遍，看看是否逻辑清晰，言之有物。如果可以的话，再有一点文采就更好。这个过程很痛苦，因为这是从大量片段想法中凝结出一点点结晶，像是精神上的挥汗如雨锻打生铁，最终得到一小块百炼钢。

这就是 AI 工具可以大展身手的领域了。大概从去年 12 月开始，我尝试使用 AI 工具来改进工作流。这基于几个假设：

1. AI 已经能够在能力边界内完成一些智力型任务；
2. 大语言模型可以通过对话，给出合理的逻辑和想法；
3. 修改一篇文章，比从头开始写一篇容易得多；
4. AI 工具可以提高智力型工作的工作效率；

和 [ChatGPT](https://chat.openai.com/) 聊天，可以获得一些有趣的想法；如果聊得很好的话，甚至还能得到不错的内容概述。[GitHub Copilot](https://github.com/features/copilot) 提供的自动补全不仅适用于代码，也可以用于文本文件；我用 Markdown 格式写文稿，Github Copilot 也能提供格式建议以及内容建议，偶尔还能出几句很不错的句子。[Stable Diffusion](https://github.com/CompVis/stable-diffusion) 之类 AI 绘图工具能够基于 Prompt 生成图片，于是在网上找配图的工作量大减。

![Stable Diffusion](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/1.png)

#### ChatGPT

只要不超出它的能力范围（这需要不断尝试和经常查证）, ChatGPT 是个相当可靠而高效的工具。解释某个知名理论、寻找某句名言时，ChatGPT 是很好的助手。除此之外，它还能：

- 提供建议：在构思阶段，ChatGPT 可以为我们提供一些文章结构方面的建议；
- 理顺逻辑：ChatGPT 可以检查逻辑关系，发现潜在的问题并给出修改建议；
- 润色语言：ChatGPT 可以改进文章的语言表达，让文章更加通顺易懂；
- 校对文章：在文章完成后，ChatGPT 可以初步校对，检查文章中的语法错误、拼写错误等；

#### Github Copilot

Github Copilot 不仅提供自动补全格式，还可以提供内容建议。当想写个排比句时，Github Copilot 就能显露一下身手：

「技术进步让我们的生活变得更加便捷，如同晨光照亮了黑暗；让我们的世界变得更加紧密，如同铁路连接了远方；让我们的未来变得更加充满希望，如同绿芽探出土壤。」

尽管这个句子并非完美，但它展示了 Github Copilot 的能力。一般情况下，它提供的内容和当前文章的上下文紧密相关，只是偶尔能出几句很不错的句子。

但是挂着 Github Copilot 已经值了——毕竟一个精彩的句子比一堆普通的句子要好得多。这有点像淘金。

#### Stable Diffusion

最好玩的是 Stable Diffusion 。在 [MidJourney](https://www.midjourney.com/home/) 和 Stable Diffusion 之中，我果断选择后者：它自由度太高了。

今天我试着让 ChatGPT 和 Stable Diffusion 联手，尝试从场景描述生成合适的 [Prompt](https://docs.qq.com/doc/DWHl3am5Zb05QbGVs)：

先告诉 ChatGPT 一个来自[小说](https://www.owleyes.org/text/araby/read/araby)的场景描述：“The girl was wearing a dress in brown, about 14 years old. She was standing on the door steps, waiting for her brother to come in and have their afternoon tea. Her brother stood by the railings looking at her. Her figure defined by the light from the half-opened door. Her dress swung as she moved her body, and the soft rope of her hair tossed from side to side. It was a rainy winter evening. The sky was an ever changing violet. The street lamp was lifting its feeble face.”

再教它什么是 Stable Diffusion 的 Prompt，一般包括哪些方面，应该怎样描述，还手动修改了几回。ChatGPT 说它学会了，然后吐出了一系列 Prompt：

(masterpiece), high-quality illustration, (1girl), 14-year-old girl, brown dress, girl standing on door steps, (1boy), 16-year-old, leaning against railings, boy looking at girl, rainy street, violet sky, glowing dim street lamp, (side view), medium shot, natural lighting, divine appearance, oil painting style

······结果效果并不好，就不放图了。

这不是 ChatGPT 的问题，显然是我的问题。我应该更加精细地描述场景，而不是一股脑地把所有的细节都丢给 ChatGPT。下次注意。

不过，直接使用 Stable Diffusion 和简单的提示词生成的图片，往往就够用了。这篇文章的里的插图都是这样生成的。

![Stable Diffusion](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/3.png)

#### 一个小结

这些工具真的提升了我的工作效率吗？其实不好说。使用这些工具时需要频繁调整、多次尝试，而且总是会分心去试试看更好玩的用法；所以时间似乎并没有减少多少。但是它们的确大大减少了我的[认知负荷](https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.459.9126)，让写东西的过程不那么痛苦。我觉得这也符合[《卡片笔记写作法》](https://book.douban.com/subject/35503571/)的理念：把工作拆成小块，每一块都可以容易地完成；最后把它们组合起来就好了。

当然，我仍然需要挑选，需要修改，需要判断和调整 AI 的建议和作品。但是在没有 AI 的时代，不也是这样吗？

---

本文由 ChatGPT 和Github Copilot 协助完成。配图由 Stable Diffusion 生成。

### 本周的成果

- 稍微把机器升级了一下
- 工作完成得还可以

### 本周的改变

- 开始尝试更多使用语音输入法
- 开始重新看一些更基础的书

### 做得还不错

- 精力似乎开始有所恢复
- 作息比以前好了不少

### 做得不太好

- 还是有大量时间浪费
- 吃饭不是十分稳定
- 消化系统还有点问题

### 下周的目标

- 继续尝试更高效的工作方式
- 开始尝试运动
- 考虑更多在固定场所工作
