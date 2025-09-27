---
title: "Nano Banana 提示词原则和示例（豆包、即梦、通义也可用）2025 Week 38 回顾"
date: 2025-09-27 08:00:00+08:00
lastmod: 2025-09-27 08:00:00+08:00
draft: false
math: false
keywords: [回顾, 想法, 生活]
description: "前进吧"
tags: [回顾, 记录, 生活]
categories: [生活]
author: "猛犸"
---

最近国内的 AI 大厂也都上线了和 Nano Banana 类似的功能，不过不同产品的出图质量也有差别。要制作出理想的图片，还是要多尝试多比较。

不过大模型技术发展到了今天，不同产品的提示词原则基本上是相通的。

以下是来自 Google 的 Nano Banana 入门文档，给出了一些撰写文生图提示词的原则，还附带了一些模板和示例。

我做了一些摘编。

你可以通过文字、图片或两者结合的方式向 Nano Banana 发出提示，从而以前所未有的控制力来创建、修改和迭代视觉内容：

- 文生图：根据简单或复杂的文本描述生成高质量图片。
- 图片 + 文生图编辑：提供图片，并使用文本提示添加、移除或修改元素、更改风格或调整色彩分级。
- 多图生图（合成和风格迁移）：使用多张输入图片合成新场景，或将一张图片的风格迁移到另一张图片上。
- 迭代优化：通过对话在多轮互动中逐步优化图片，进行细微调整，直到达到理想效果。
- 高保真文本渲染：准确生成包含清晰易读且位置合理的文本的图片，非常适合用于徽标、图表和海报。

Nano Banana 还支持其他基于提示结构和上下文的图片互动模式，包括：

- 文生图和文本（交织）：输出包含相关文本的图片。
- 提示示例：“生成一份图文并茂的海鲜饭食谱。”
- 图片和文本转图片和文本（交织）：使用输入图片和文本创建新的相关图片和文本。
- 提示示例：（附带一张带家具的房间的照片）“我的空间还适合放置哪些颜色的沙发？你能更新一下图片吗？”
- 多轮图片修改（聊天）：以对话方式持续生成和修改图片。
- 提示示例：[上传一张蓝色汽车的图片。]，“把这辆车变成敞篷车”，“现在将颜色更改为黄色。”

## 提示指南和策略

要掌握 Nano Banana 图片生成，首先要了解一个基本原则：

描述场景，而不仅仅是列出关键字。该模型的核心优势在于其深厚的语言理解能力。与一连串不相关的字词相比，叙述性描述段落几乎总是能生成更好、更连贯的图片。



### 1. 逼真场景

对于逼真的图片，请使用摄影术语。提及拍摄角度、镜头类型、光线和细节，引导模型生成逼真的效果。

#### 模板

```markdown
一个写实的 [镜头类型] ，拍摄 [主体]，[动作或表情]，场景设定在 [环境]。画面由 [光线描述] 照亮，营造出 [氛围]。使用 [相机/镜头细节] 拍摄，突出 [关键纹理和细节]。图像应为 [长宽比] 格式。
```

```markdown
A photorealistic [shot type] of [subject], [action or expression], set in [environment]. The scene is illuminated by [lighting description], creating a [mood] atmosphere. Captured with a [camera/lens details], emphasizing [key textures and details]. The image should be in a [aspect ratio] format.

```

#### 提示

```markdown
一张写实的特写人像，主体是一位日本年长陶艺家，脸上布满深深的岁月皱纹，带着温暖而智慧的微笑。他正仔细检查一只刚上釉的茶碗。场景是在他古朴、被阳光洒满的工作室。画面由柔和的黄金时刻光线透过窗户照亮，突出陶土的细腻纹理。使用 85mm 人像镜头拍摄，背景呈现柔和的虚化（散景）。整体氛围宁静而充满大师气息。竖版人像构图。

```

```markdown
A photorealistic close-up portrait of an elderly Japanese ceramicist with deep, sun-etched wrinkles and a warm, knowing smile. He is carefully inspecting a freshly glazed tea bowl. The setting is his rustic, sun-drenched workshop. The scene is illuminated by soft, golden hour light streaming through a window, highlighting the fine texture of the clay. Captured with an 85mm portrait lens, resulting in a soft, blurred background (bokeh). The overall mood is serene and masterful. Vertical portrait orientation.

```

![1-photorealistic_example](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/1-photorealistic_example.png)

### 2. 风格化插图和贴纸

如需创建贴纸、图标或素材资源，请明确说明样式并要求使用透明背景。

#### 模板

```markdown
一个 [风格] 的贴纸，主体是 [对象]，包含 [关键特征] 和 [配色方案]。设计应采用 [线条风格] 和 [明暗处理风格]。背景必须为透明。

```

```markdown
A [style] sticker of a [subject], featuring [key characteristics] and a [color palette]. The design should have [line style] and [shading style]. The background must be transparent.

```

#### 提示

```markdown
一个可爱风格的贴纸，主体是一只快乐的小熊猫，头戴一顶小竹帽。它正在咀嚼一片绿色竹叶。设计采用粗而干净的描边，简单的赛璐璐上色，以及鲜艳的配色方案。背景必须为白色。

```

```markdown
A kawaii-style sticker of a happy red panda wearing a tiny bamboo hat. It's munching on a green bamboo leaf. The design features bold, clean outlines, simple cel-shading, and a vibrant color palette. The background must be white.

```

![2-red_panda_sticker](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/2-red_panda_sticker.png)

### 3. 图片中的文字准确无误

Gemini 在呈现文字方面表现出色。清楚说明文字、字体样式（描述性）和整体设计。

#### 模板

```markdown
为 [品牌/概念] 创建一幅 [图像类型]，文字为 "[需要呈现的文字]"，采用 [字体风格]。设计应为 [风格描述]，使用 [配色方案]。

```

```markdown
Create a [image type] for [brand/concept] with the text "[text to render]" in a [font style]. The design should be [style description], with a [color scheme].

```

#### 提示

```markdown
为一家名为 “The Daily Grind” 的咖啡店设计一个现代、极简风格的标志。文字应采用简洁、粗体的无衬线字体。设计应包含一个简约的、风格化的咖啡豆图标，并与文字无缝融合。配色方案为黑白。

```

```markdown
Create a modern, minimalist logo for a coffee shop called 'The Daily Grind'. The text should be in a clean, bold, sans-serif font. The design should feature a simple, stylized icon of a a coffee bean seamlessly integrated with the text. The color scheme is black and white.

```

![3-logo_example](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/3-logo_example.png)

### 4. 产品模型和商业摄影

非常适合为电子商务、广告或品牌宣传制作清晰专业的商品照片。

#### 模板

```markdown
一张高分辨率、摄影棚打光的产品照片，主体是 [产品描述]，放置在 [背景表面/描述] 上。灯光为 [布光方式，例如三点柔光箱布光]，用于 [照明目的]。相机角度为 [角度类型]，突出展示 [特定特征]。超写实，清晰对焦于 [关键细节]。[长宽比]。

```

```markdown
A high-resolution, studio-lit product photograph of a [product description] on a [background surface/description]. The lighting is a [lighting setup, e.g., three-point softbox setup] to [lighting purpose]. The camera angle is a [angle type] to showcase [specific feature]. Ultra-realistic, with sharp focus on [key detail]. [Aspect ratio].

```

#### 提示

```markdown
一张高分辨率、摄影棚打光的产品照片，主体是一只极简风格的黑色哑光陶瓷咖啡杯，放置在抛光的混凝土表面。灯光采用三点柔光箱布光，营造柔和的漫射高光，并消除生硬的阴影。相机角度为略微抬高的 45 度视角，突出其简洁的线条。超写实，清晰对焦于咖啡升起的蒸汽。方形图像。

```

```markdown
A high-resolution, studio-lit product photograph of a minimalist ceramic coffee mug in matte black, presented on a polished concrete surface. The lighting is a three-point softbox setup designed to create soft, diffused highlights and eliminate harsh shadows. The camera angle is a slightly elevated 45-degree shot to showcase its clean lines. Ultra-realistic, with sharp focus on the steam rising from the coffee. Square image.

```

![4-product_mockup](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/4-product_mockup.png)

### 5. 极简风格和负空间设计

非常适合用于创建网站、演示或营销材料的背景，以便在其中叠加文字。

#### 模板

```markdown
一幅极简构图，主体为单个 [对象]，位于画面 [右下角/左上角等]。背景是一片辽阔、空旷的 [颜色] 背景，营造大量留白。柔和细腻的光线。[长宽比]。

```

```markdown
A minimalist composition featuring a single [subject] positioned in the [bottom-right/top-left/etc.] of the frame. The background is a vast, empty [color] canvas, creating significant negative space. Soft, subtle lighting. [Aspect ratio].

```

#### 提示

```markdown
一幅极简构图，主体是一片纤细的红枫叶，位于画面右下角。背景是一片辽阔的米白色画布，留出大量空间用于文字。光线为来自左上方的柔和漫射光。方形图像。

```

```markdown
A minimalist composition featuring a single, delicate red maple leaf positioned in the bottom-right of the frame. The background is a vast, empty off-white canvas, creating significant negative space for text. Soft, diffused lighting from the top left. Square image.

```

![5-minimalist_design](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/5-minimalist_design.png)

### 6. 连续艺术（漫画分格/故事板）

以角色一致性和场景描述为基础，为视觉故事讲述创建分格。

#### 模板

```markdown
一格漫画，采用 [艺术风格]。前景中，[人物描述与动作]。背景中，[场景细节]。画格内包含一个 [对话框/旁白框]，文字为 "[内容]"。光线营造出 [氛围]。 [长宽比]。

```

```markdown
A single comic book panel in a [art style] style. In the foreground, [character description and action]. In the background, [setting details]. The panel has a [dialogue/caption box] with the text "[Text]". The lighting creates a [mood] mood. [Aspect ratio].

```

#### 提示

```markdown
一格漫画，采用粗犷的黑色电影风格，高对比度黑白墨线。前景中，一名身穿风衣的侦探站在闪烁的路灯下，雨水打湿了他的肩膀。背景中，一个荒凉酒吧的霓虹招牌倒映在水洼中。画格顶部的旁白框写着：“这座城市是个难以守住秘密的地方。” 光线生硬，营造出戏剧性、压抑的氛围。横向构图。

```

```markdown
A single comic book panel in a gritty, noir art style with high-contrast black and white inks. In the foreground, a detective in a trench coat stands under a flickering streetlamp, rain soaking his shoulders. In the background, the neon sign of a desolate bar reflects in a puddle. A caption box at the top reads "The city was a tough place to keep secrets." The lighting is harsh, creating a dramatic, somber mood. Landscape.

```

![6-comic_panel](https://1-1256632535.cos.ap-beijing.myqcloud.com/img/6-comic_panel.png)

---

### 本周的成果

- 公众号订阅用户增长喜人
- 小红书上开始有了一些反馈
- 尝试用 Claude Code 写小说

### 本周的改变

- 日常工作节律比较固定
- 更胖了
- 精力不足

### 做得还不错

- 探索高效工作流
- 休息得不错
- 减少了刷短视频和看网络小说的时间

### 做得不太好

- 运动量不足
- 工作有些拖延
- 网上闲逛的时间有些多

### 下周的目标

- 时间块和番茄钟
- 固定练习正念
- 看完一本非虚构书
