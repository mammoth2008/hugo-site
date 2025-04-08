---
title: "太多的抽象 2025 Week 13 回顾"
date: 2025-04-05 08:00:00+08:00
lastmod: 2025-04-05 08:00:00+08:00
draft: false
math: false
keywords: [回顾, 想法, 生活]
description: "前进吧"
tags: [回顾, 记录, 生活]
categories: [生活]
author: "猛犸"
---

> 注：这篇文章来自 [unixdigest.com](https://unixdigest.com)，一个个人网站。
>
> 这个网站的拥有者是位丹麦人，没有透露真实姓名。他自称 70 年代出生，12 岁开始在 [Sharp MZ-800](https://en.wikipedia.org/wiki/Sharp_MZ-800) 上用 [BASIC](https://en.wikipedia.org/wiki/BASIC) 编程，15 岁时在一家安全和通信公司找到一份技术相关的工作。现在他是系统和网络管理员、程序员，技能基本上靠自学得来。他是一位[自由软件](https://en.wikipedia.org/wiki/Free_software)倡导者，在 [Github](https://github.com/unixdigest) 上免费提供了两本自己写的书，涉及 [FreeBSD 操作系统](https://github.com/unixdigest/openbsd-router-guide) 和 [PHP 语言](https://github.com/unixdigest/phpthewrongway)。
>
> 从他的网站来看，我认为他是个[黑客](https://en.wikipedia.org/wiki/Hacker)——原始意义上的那种，以好奇心驱动、不停问为什么和怎么办的人。正是这样的黑客，用硅片、电路、奇思妙想和自己的双手，构建了我们今天所知的大部分世界。
>
> 所以这篇文章可以看成是抱怨；毕竟黑客观察世界的方式，和大多数人不同。
>
> 我部分认同他的观点，并且认为随着 [AI](https://en.wikipedia.org/wiki/Artificial_intelligence) 的快速发展和普及，这种情况只会变得更加严重。我认为他提出的建议很有价值。
>
> 以及，推荐一本科幻小说[《6 号泵》](https://book.douban.com/subject/26739275/)。

---

# 我们用了太多抽象层次，未来看起来黯淡无光

发布于 2023-10-21，修改于 2023-11-06

今天很大一部分所谓的专家只会配置工具，但对事物在更深层次上的运作原理一无所知。这既是真正的挑战，也是未来面临的大问题。

方向盘是一种[抽象](https://en.wikipedia.org/wiki/Abstraction)，使我的驾驶更加容易。[助力转向](https://en.wikipedia.org/wiki/Power_steering)是另一个抽象层次，进一步改善了驾驶体验。抽象是好的，它们通常可以提高生活质量。

然而，在丹麦有一个谚语说：

> Too little and too much spoils everything.
>
> 太少和太多都会破坏一切。

当抽象层次断裂，没有人再理解底层技术是如何工作时，这种抽象有什么价值呢？

科技行业所有事物都由非常强的盈利目的所驱动，很少对其他事情感兴趣。你要尽可能快地推出新产品或新服务。

这意味着更多的抽象和自动化、越来越少的工作者，对深层次的理解也越来越少。

如今，程序员和系统管理员不再存在，取而代之的是 [DevOps](https://en.wikipedia.org/wiki/DevOps)，甚至 [DevSecOps](https://en.wikipedia.org/wiki/DevOps#DevSecOps,_shifting_security_left)，IT 行业正竭力将所有任务都塞进一个岗位的工作描述中。

技术人员需要做开发（Dev）、安全（Sec）和运维（Ops），但由于没有人能够真正掌握所有这些，我们需要尽可能自动化以节省成本，并避免不同技术部门之间社交互动的复杂性。

因此，现代技术人员只被教会了如何使用特定工具，而对底层技术的了解非常有限。

技术越来越难以理解，但现代生活的许多方面都严重依赖于我们所用的科技。

当科技行业的理解水平达到这样一个低点——大多数人甚至不知道如何修理他们所用的工具时——会发生什么呢？

人们已经习惯了抽象的状态，他们认为这是正确的做法，并且他们乐于为混乱增添更多的抽象。

> Yes, let's all go back to coding in [assembly](https://en.wikipedia.org/wiki/Assembly_language)!
>
> 好吧，让我们都回到[汇编语言](https://en.wikipedia.org/wiki/Assembly_language)吧！
>
> — Sarcastic comment by arrogant developer
>
> ——傲慢开发者的讽刺评论

我们确实需要抽象，毫无疑问，但每个层次的抽象都伴随着高昂的代价。讽刺的是，这最终可能导致巨大的利润损失。

> Modern programming scares me in many respects, where they will just build layer after layer after layer that does nothing except translate.
>
> 在许多方面，现代编程让我感到恐惧，他们只是层层叠叠地构建，除了翻译什么也不做。
>
> — [Ken Thompson](https://en.wikipedia.org/wiki/Ken_Thompson)（1983 年[图灵奖](https://en.wikipedia.org/wiki/Turing_Award)获得者，[Unix 操作系统](https://en.wikipedia.org/wiki/Unix)和 [C 语言](https://en.wikipedia.org/wiki/C_(programming_language))的共同发明者）

现在，大多数“安全人员”对安全知之甚少，只知道如何使用某种现成的渗透测试工具。渗透测试工具在其 Web 图形界面上显示一排绿灯，所有人就认为一切正常。

然而，一个心怀恶意的真正安全专家早已破解了系统，并在[暗网](https://en.wikipedia.org/wiki/Dark_web)上出售有价值的数据。没有任何泄露，也没有任何发现。这可以持续数年而无人察觉，因为，嗯，图形界面面板显示一切正常。

现在一些[学生甚至不知道文件和文件夹是什么](https://www.theverge.com/22684730/students-file-folder-directory-structure-education-gen-z)。

![developer](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/developer.jpg)

### 给技术学习者的建议

- 不要盲目追随炒作或趋势。
- 保持好奇心。不要只学习工具，尝试理解底层技术是如何工作的。
- 如果可能的话，至少尝试一次，手动完成配置工具所做的事情。
- 如果可能的话，尽量看看这个工具的代码。即使是对代码的基本理解也非常有价值。
- 保持好奇心。持续学习。实验。深入探索你感兴趣的技术。如果可能的话，建立一个家庭实验室，将其用作学习和尝试破坏事物的游乐场。
- 对一切提出质疑。尤其是那些对你来说毫无意义的事情。不要只是假设别人知道得更好——这样你会很快变成一个盲目的追随者。有时候别人确实知道得更好，但不要默认是这样。
- 而且要勇敢！即使这让你感觉像是独自一人，也要坚持真理和你的信念。

我在这篇文章中要表达的观点并不是说每个人都必须从[第一性原理](https://en.wikipedia.org/wiki/First_principle)理解一切，或者不应该使用任何工具。正如我所说的，我们需要抽象化。

此外，我们有专门从事不同领域的人，例如，机械师修理卡车，而司机驾驶卡车。

而我真正关注的是工程师**对技术的态度的重要性**，这是从事技术工作的人所应有的。

例如，在软件开发中，太多的专家被工具和自动化所取代，越来越少人能理解他们工作所在层的底下一层。

这是一个重大问题，因为我们最终会达到一个点，那时很少有人能够修复下面几层的任何问题。事实上，我们已经在某种程度上达到了这个点。

大约半年前，我偶然遇到一些[前端开发](https://en.wikipedia.org/wiki/Front-end_web_development)人员，他们不知道无需部署工具就可以创建网站，而且根本不需要任何 [JavaScript](https://en.wikipedia.org/wiki/JavaScript)，甚至在网站需要付款时也是如此。

我向一位朋友询问了这件事，当时他正在教一门 [Python](https://en.wikipedia.org/wiki/Python_(programming_language)) 编程课，他回答说：

> Don't be surprised by this. This is the level today. The industry wants us to mass produce people who know how to "push buttons", not people who understand anything at a deeper level.
>
> 不要对此感到惊讶。这就是现在的水平。行业希望我们大规模生产那些只知道“按按钮”的人，而不是那些在更深层次上理解任何事物的人。

我知道总会有一些人会对更深层的内容感兴趣，但这不是重点。

重点是，在软件开发领域，我们早已达到了添加过多抽象层而理解这些层的人却很少的地步。这个行业正在自毁。

例如，如果我是前端或[后端开发](https://en.wikipedia.org/wiki/Frontend_and_backend#Backend_focused)者，或者在进行所谓的[“集成工作”](https://en.wikipedia.org/wiki/System_integration)，在几乎不编写代码、不了解 [TCP/IP](https://en.wikipedia.org/wiki/Internet_protocol_suite)、[DNS](https://en.wikipedia.org/wiki/Domain_Name_System)、[HTTP](https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)、[TLS](https://en.wikipedia.org/wiki/Transport_Layer_Security)、安全等方面的知识的情况下，仅使用现成的工具或框架来制作网站，那么当出现问题的时候，我可能就像一个拿着[扭矩扳手](https://en.wikipedia.org/wiki/Torque_wrench)的猴子一样无能为力。

---

本文由 Claude 和 Github Copilot 协助完成。未标明出处的配图由 FLUX-dev 生成。

### 本周的成果

- 配置好了 Neovide
- 新的工作流效果不错
- 终于看完了第一本《哈佛中国史》

### 本周的改变

- 尝试多动手多写字
- 分析工作流并改进
- 稳定地看书

### 做得还不错

- 能稳定地看书
- 早起也还行
- 工作进度不错

### 做得不太好

- 缺乏运动
- 有时候有些焦虑
- 正念练习太少

### 下周的目标

- 稳定看书和反思
- 练习正念
- 日常运动
