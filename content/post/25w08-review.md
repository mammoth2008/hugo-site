---
title: "AI 提效思路和实践 2025 Week 08 回顾"
date: 2025-03-01 08:00:00+08:00
lastmod: 2025-03-01 08:00:00+08:00
draft: false
math: false
keywords: [回顾, 想法, 生活]
description: "前进吧"
tags: [回顾, 记录, 生活]
categories: [生活]
author: "猛犸"
---

这篇文章的每位读者，都可以看成是一个将原始数据组织成有用信息进而做出决策的系统。我们每天在做的事情，是通过阅读、谈话、观看等等途径获取作为原材料的数据，通过记忆和理解把它们变成自身的一部分，再基于自己的认知结构判断、分析、组合它们，来产生新的知识，进而做出决策。

![information_flow](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/information_flow.png)

大致框架是这样的，但是当然还有不少细节，例如[让·皮亚杰（Jean Piaget）](https://en.wikipedia.org/wiki/Jean_Piaget)的[同化-顺应模型](https://en.wikipedia.org/wiki/Piaget%27s_theory_of_cognitive_development)认为，我们获取的新数据是通过整合到现有认知结构（同化）或改变结构以容纳信息（顺应）的方式被理解消化，这意味着我们需要主动尝试理解和自己不一致的观点，来构建更符合现实的认知模型，以产生更靠谱的结论；生成新的知识过程中，基于经验而构成的直觉或者说“[默会知识](https://en.wikipedia.org/wiki/Tacit_knowledge)”会起到很大作用——[迈克尔·波兰尼（Michael Polanyi）](https://en.wikipedia.org/wiki/Michael_Polanyi)的[《个人知识》](https://book.douban.com/subject/35644186/)和[野中郁次郎](https://en.wikipedia.org/wiki/Ikujiro_Nonaka)的[《创造知识的企业》](https://book.douban.com/subject/1811450/)都阐述过——也就是说我们不能将重要的记忆理解过程外包。

还有，新知识的产生过程不是个线性过程。我们需要不断试错，从反馈来调整我们的认知结构。当然也免不了受到我们不靠谱大脑固有的[认知偏差](https://en.wikipedia.org/wiki/Cognitive_bias)影响，比如[锚定效应](https://en.wikipedia.org/wiki/Anchoring_effect)、[频率错觉](https://en.wikipedia.org/wiki/Frequency_illusion)、[刻板印象](https://en.wikipedia.org/wiki/Stereotype)、[从众效应](https://en.wikipedia.org/wiki/Herd_behavior)等等。这些认知偏差会影响我们对数据的处理，最终影响我们的决策。

总之这是个很麻烦的过程，和我们对真实世界的观察相符——只有极少数人能够有效获取和使用信息，从而获取巨大收益，无论是名望还是金钱。

不过让我们先简化一下，把这个框架简化为三个步骤：**获取**，**记忆**，**生成**。这三个步骤中，都有一些任务是可以用 AI 来提效的。

首先是**获取**。今天我们能够获取的数据量是前所未有的，但是它们的重要、可信、准确、完整、相关、及时程度却天差地别。我们的注意力和时间都极为有限，所以需要工具来初步筛选过滤。随意浏览显然不行，搜索引擎只能告诉我们我们已知的东西，任由自己沉溺在社交媒体信息流中简直是对自己的犯罪。

幸好，今天除了 [RSS](https://en.wikipedia.org/wiki/RSS) 主动订阅和基于用户的[协同过滤](https://en.wikipedia.org/wiki/Collaborative_filtering)（如 [Follow](https://follow.is/)）之外，也有了 AI 工具。[Elicit](https://elicit.com/)、[Scite](https://scite.ai/) 等提供了强大的文献分析能力，[News Minimalist](https://www.newsminimalist.com/) 可以根据重要程度筛选新闻。这类工具会越来越多，它们将会帮助我们自定义信息来源，而且可能会主动提出建议，帮我们扩展视野。

无论是书籍、文章还是新闻，我们往往要摘取其中的片段用来下一步处理——就像“[渐进式总结](https://fortelabs.com/blog/progressive-summarization-a-practical-technique-for-designing-discoverable-notes/)”所提倡的那样。传统上我们做笔记比较麻烦：复制粘贴不容易留下印象，扫描识别也是一样——这两种方式的[必要难度](https://en.wikipedia.org/wiki/Desirable_difficulty)太低，存下来也很难想起——而手写或打字虽然可以提供一定必要难度，但是效率太低。

语音识别则刚刚好。无论是手机上的 [Get 笔记](https://www.biji.com/)、[微信输入法](https://z.weixin.qq.com/)，还是电脑上的[讯飞输入法](https://srf.xunfei.cn/)，都可以帮助我们快速记录。今天语音识别的准确度已经足以完成这些任务，在必要难度和效率之间取得平衡。

然后是**记忆**。如果我们的记忆能够像硬盘那样快速写入和删除就好了；但这可能还需要过些年才能实现。

我们需要记忆的东西类型不少，有些是事实，有些是观点，有些是概念。对于前两者，我们往往不需要真正记得它们，只需要知道它们存在，然后可以通过稳定的工具来查找即可。这已经衍生出了从知识管理到笔记术等等的一系列方法和工具，让 [Obsidian](https://obsidian.md/)、[Roam Research](https://roamresearch.com/)、[Notion](https://www.notion.com/) 等工具人尽皆知，让[弗拉基米尔·纳博科夫（Vladimir Nabokov）](https://en.wikipedia.org/wiki/Vladimir_Nabokov)、[尼古拉斯·卢曼（Niklas Luhmann）](https://en.wikipedia.org/wiki/Niklas_Luhmann)获得了专业领域之外的巨大名声。

这些工具和方法的核心是链接，可以看成是个人使用的维基百科。当然，分类和标签也是常见的技术，它们是记忆辅助工具。这些方法和工具可以形成一个包含了多种内容的知识网络，但维护成本也不低。

今天的 AI 具备一定语义分析能力，可以作为补充。AI 和知识库的结合是近两年的重要发展方向，[检索增强生成（RAG，Retrieval-augmented Generation）](https://www.pinecone.io/learn/retrieval-augmented-generation/)成了个热词。[Amazon](https://www.amazon.com/) 去年就推出了面向企业的 [Amazon Q](https://aws.amazon.com/cn/q/)，腾讯则在去年年末推出了面向个人和小型组织的 [ima.copilot](https://ima.qq.com/)，2G 存储空间，差不多够用。

对于事实和观点，我们可以以知识库来管理，以双链笔记为补充；但对于概念，我们需要更多主观努力。概念的理解需要更多的认知加工，手写笔记过去是、现在是、将来也可能是更好的选择。[调动更多感官和肌肉、做笔记时主动思考，会更容易记住](https://cpb-us-w2.wpmucdn.com/sites.udel.edu/dist/6/132/files/2010/11/Psychological-Science-2014-Mueller-0956797614524581-1u0h0yu.pdf)。[Anki](https://apps.ankiweb.net/) 之类的工具也不能放下，毕竟大脑并不是个好的记忆设备，重要内容需要不断复习。

最后是**生成**。大脑不擅长逻辑思考，它擅长通过模式识别产生一些碎片，即所谓“灵感”。灵感转瞬即逝，快速记录是关键。在这方面，语音笔记当然是首选。

过去我常用 [flomo](https://flomoapp.com/) 配合微信输入法，但现在主要换成 Get 笔记了。Get 笔记除了录制和识别外，还会通过 AI 加工，自动删除重复、顿挫和语气词，整理成文。但是不知道是不是它的默认提示词设计有点问题，我觉得它整理后的内容经常有点偏离我的初衷。

也偶尔用豆包。[豆包 App](https://apps.apple.com/cn/app/%E8%B1%86%E5%8C%85-%E5%AD%97%E8%8A%82%E8%B7%B3%E5%8A%A8%E6%97%97%E4%B8%8Bai%E5%8A%A9%E6%89%8B/id6459478672) 的语音识别很准，说完后还能顺便和它讨论一下。虽然[豆包大模型](https://www.doubao.com/chat/)表现不突出，但是豆包 App 的交互体验真是很不错。

收集一些想法后，就该尝试把这些碎片组合成论述了。在这种时候，因为[聚焦思维模式](https://en.wikipedia.org/wiki/Convergent_thinking)，经常会出现疏漏和偏差。这也难以避免，毕竟我们并不总是有合适的人可以和我们讨论、检查和补充。

但是现在我们有了推理大模型。用多个推理大模型来检查想法、讨论结构、补充逻辑，就相当于和多个人讨论。[Grok 3](https://grok.com/)、[Gemini 2.0 Flash Thinking Experimental](https://gemini.google.com/)、[DeepSeek R1](https://chat.deepseek.com/)、[Kimi 1.5](https://kimi.moonshot.cn/) 都不错；数量大于质量，[“只要有足够多的眼睛，错误就无所遁形”](https://en.wikipedia.org/wiki/Linus%27s_law)——开源社区的原则，在这里也适用。

甚至，如果嫌在多个网页之间来回切换太麻烦的话，现在还有可以和多个大模型同时对话的开源工具，[Github](https://github.com/) 上可以找到一堆。

但需要注意的是，大模型本身也存在局限性。和它们讨论时的提示词很重要，而它们也可能会放大已有的偏见，缺乏真正的批判性。这和许多事一样，也不能过度依赖。利用大模型提供的不同视角和信息，激发自身更深层次的思考，增强自己的[批判性思维](https://en.wikipedia.org/wiki/Critical_thinking)能力，这才是关键。

![AI_assisting](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/AI_assisting.png)

---

本文由 Grok 3、Gemini 2.0 Flash Thinking Experimental、DeepSeek R1 @ yuanbao.tencent.com、Claude 3.7 Sonnet、DeepSeek R1 @ volcongine.com 和 Github Copilot 审阅修改。未标明出处的配图由 FLUX-dev @ bailian.console.aliyun.com 生成。

### 本周的成果

- 减少了不少手机时间
- 看了一点书
- 作息还不错

### 本周的改变

- 尝试睡了几天硬板床
- 做了不少拉伸
- 改善了一下工作流

### 做得还不错

- 集中注意力的能力有所改善
- 情绪状态一直不错
- 精力状况有所好转

### 做得不太好

- 偶尔熬夜
- 花了不少时间看网络小说
- 运动量不足

### 下周的目标

- 增加散步时间
- 增加正念练习时间
- 看更多非虚构作品
