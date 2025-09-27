使用 Gemini（又称 Nano Banana）生成图片

Gemini 可以通过对话方式生成和处理图片。你可以通过文字、图片或两者结合的方式向 Gemini 发出提示，从而以前所未有的控制力来创建、修改和迭代视觉内容：

Text-to-Image:：根据简单或复杂的文本描述生成高质量图片。
图片 + Text-to-Image（编辑）：提供图片，并使用文本提示添加、移除或修改元素、更改风格或调整色彩分级。
多图到图（合成和风格迁移）：使用多张输入图片合成新场景，或将一张图片的风格迁移到另一张图片上。
迭代优化：通过对话在多轮互动中逐步优化图片，进行细微调整，直到达到理想效果。
高保真文本渲染：准确生成包含清晰易读且位置合理的文本的图片，非常适合用于徽标、图表和海报。

其他图片生成模式

Gemini 还支持其他基于提示结构和上下文的图片互动模式，包括：

文生图和文本（交织）：输出包含相关文本的图片。
提示示例：“生成一份图文并茂的海鲜饭食谱。”
图片和文本转图片和文本（交织）：使用输入图片和文本创建新的相关图片和文本。
提示示例：（附带一张带家具的房间的照片）“我的空间还适合放置哪些颜色的沙发？你能更新一下图片吗？”
多轮图片修改（聊天）：以对话方式持续生成和修改图片。
提示示例：[上传一张蓝色汽车的图片。]，“把这辆车变成敞篷车”，“现在将颜色更改为黄色。”

提示指南和策略

要掌握 Gemini 2.5 Flash 图片生成，首先要了解一个基本原则：

描述场景，而不仅仅是列出关键字。 该模型的核心优势在于其深厚的语言理解能力。与一连串不相关的字词相比，叙述性描述段落几乎总是能生成更好、更连贯的图片。

用于修改图片的提示

以下示例展示了如何提供图片以及文本提示，以进行编辑、构图和风格迁移。

1. 添加和移除元素
提供图片并描述您的更改。模型将与原始图片的风格、光照和透视效果相匹配。

模板

Using the provided image of [subject], please [add/remove/modify] [element]
to/from the scene. Ensure the change is [description of how the change should
integrate].

提示

"Using the provided image of my cat, please add a small, knitted wizard hat
on its head. Make it look like it's sitting comfortably and matches the soft
lighting of the photo."

2. 局部重绘（语义遮盖）
通过对话定义“蒙版”，以修改图片的特定部分，同时保持其余部分不变。

模板

Using the provided image, change only the [specific element] to [new
element/description]. Keep everything else in the image exactly the same,
preserving the original style, lighting, and composition.

提示

"Using the provided image of a living room, change only the blue sofa to be
a vintage, brown leather chesterfield sofa. Keep the rest of the room,
including the pillows on the sofa and the lighting, unchanged."

3. 风格迁移
提供一张图片，并让模型以不同的艺术风格重新创作其内容。

模板

Transform the provided photograph of [subject] into the artistic style of [artist/art style]. Preserve the original composition but render it with [description of stylistic elements].

提示

"Transform the provided photograph of a modern city street at night into the artistic style of Vincent van Gogh's 'Starry Night'. Preserve the original composition of buildings and cars, but render all elements with swirling, impasto brushstrokes and a dramatic palette of deep blues and bright yellows."

4. 高级合成：组合多张图片
提供多张图片作为上下文，以创建新的合成场景。这非常适合制作产品模型或创意拼贴画。

模板

Create a new image by combining the elements from the provided images. Take
the [element from image 1] and place it with/on the [element from image 2].
The final image should be a [description of the final scene].

提示

"Create a professional e-commerce fashion photo. Take the blue floral dress
from the first image and let the woman from the second image wear it.
Generate a realistic, full-body shot of the woman wearing the dress, with
the lighting and shadows adjusted to match the outdoor environment."

5. 高保真细节保留
为确保在编辑过程中保留关键细节（例如面部或徽标），请在编辑请求中详细描述这些细节。

模板

Using the provided images, place [element from image 2] onto [element from
image 1]. Ensure that the features of [element from image 1] remain
completely unchanged. The added element should [description of how the
element should integrate].

提示

"Take the first image of the woman with brown hair, blue eyes, and a neutral
expression. Add the logo from the second image onto her black t-shirt.
Ensure the woman's face and features remain completely unchanged. The logo
should look like it's naturally printed on the fabric, following the folds
of the shirt."

最佳做法

如需将效果从“好”提升到“出色”，请将以下专业策略融入您的工作流程。

内容要非常具体：您提供的信息越详细，您对结果的控制就越强。请不要使用“奇幻盔甲”这样笼统的语言，而要具体描述盔甲，例如“装饰华丽的精灵板甲，蚀刻有银叶图案，带有高领和猎鹰翅膀形状的肩甲”。
提供背景信息和意图：说明图片的用途。模型对上下文的理解会影响最终输出。例如，“为高端极简护肤品牌设计徽标”会比“设计徽标”产生更好的结果。
迭代和优化：不要期望第一次尝试就能生成完美的图片。利用模型的对话特性进行小幅更改。然后，您可以继续提出提示，例如“效果很棒，但能让光线更暖一些吗？”或“保持所有内容不变，但让角色的表情更严肃一些。”
使用分步说明：对于包含许多元素的复杂场景，请将提示拆分为多个步骤。“首先，创作一幅清晨薄雾笼罩的宁静森林背景。然后，在前景色中添加一个长满苔藓的古老石祭坛。 最后，在祭坛上放置一把发光的剑。”
使用“语义负提示”：不要说“没有汽车”，而是积极地描述所需的场景：“一条空旷荒凉的街道，没有任何交通迹象。”
控制相机：使用摄影和电影语言来控制构图。例如wide-angle shot、macro shot、low-angle perspective等字词。
限制
为获得最佳性能，请使用以下语言：英语、西班牙语（墨西哥）、日语（日本）、中文（中国）、印地语（印度）。
图片生成不支持音频或视频输入。
模型不一定会完全按照用户明确要求的图片输出数量生成图片。
该模型在输入最多 3 张图片时效果最佳。
在为图片生成文字时，最好先生成文字，然后再要求生成包含该文字的图片，这样 Gemini 的效果会更好。
目前，欧洲经济区 (EEA)、瑞士 (CH) 和英国 (UK) 不支持上传儿童图片。
