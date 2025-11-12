Doug Slater
AI: Accelerated Incompetence
AI: 加速无能
Doug Slater
Doug ·  道格 · 2025-05-19
In software engineering, over-reliance on LLMs accelerates incompetence. LLMs can't replace human critical thinking.
在软件工程中，过度依赖 LLMs 会加速无能。LLMs 无法取代人类的批判性思维。

The text in this essay was written without any use of AI.
这篇论文中的文字没有使用任何 AI 编写。

![](https://www.slater.dev/llm_dependence.jpg)
A chart showing a speculative inverse correlation between LLM dependence and IQ
A speculative inverse correlation between LLM dependence and IQ
LLM 依赖与 IQ 之间的推测性负相关

By now much ink has dried on the wave of AI and LLMs which crashed upon the public consciousness in late 2022. As an experienced software engineer, I'd like to speak to two troubling engineering perspectives I've observed on LLMs.
到目前为止，关于 2022 年末冲击公众意识的 AI 和 LLM 浪潮，已经有很多笔墨。作为一名经验丰富的软件工程师，我想谈谈我在 LLM 上观察到的两个令人不安的工程观点。

"LLMs are my friend"
"LLMs 是我的朋友"
I don't think anyone believes that a computer program is literally their companion, so let's address the euphemistic intent of the above phrase: namely that an LLM conveys magnificent benefits upon its user.
我不认为任何人真的相信计算机程序是他们的真正伴侣，所以让我们来谈谈上述说法的委婉意图：即 LLM 为用户带来了巨大的好处。

Engineers who view LLMs as an ally invariably prioritize or feel pressured to prioritize velocity; for them, production trumps perspicacity. While it's true that LLMs can deliver a lot of code quickly, their use carries a long tail of risks.
将 LLMs 视为盟友的工程师们总会优先考虑或感到压力优先考虑速度；对他们而言，产量胜过洞察力。虽然 LLMs 确实能快速生成大量代码，但它们的使用伴随着一系列长期风险。

Risks of using LLM
使用 LLMs 的风险
Output Risk. An LLM can give output that is blatantly incorrect, for example code that won't compile. More likely and dangerously, it can give output that is subtly and undetectably wrong, like logic bugs.
输出风险。LLMs 可能会给出明显错误的输出，例如无法编译的代码。更有可能且更危险的是，它们可能会给出微妙且难以察觉的错误输出，例如逻辑错误。
The risk is elevated if the prompter is not qualified to evaluate the output, for example project managers prompting for source code.
如果提示者没有资格评估输出，风险会进一步升高，例如项目经理提示要求源代码。
Input Risk. An LLM does not challenge a prompt which is leading1 or whose assumptions are flawed or context is incomplete. Example: An engineer prompts, "Provide a thread-safe list implementation in C#" and receives 200 lines of flawless, correct code.
输入风险。一个 LLM 不会挑战引导 1 的提示，或者其假设有缺陷或背景不完整的提示。例如：一个工程师提示"提供一个线程安全的列表实现 C#"，并收到 200 行无懈可击的正确代码。
It's still the wrong answer, because the question should have been, "How can I make this code thread-safe?" and whose answer is "Use System.Collections.Concurrent" and 1 line of code. The LLM is not able to recognize an instance of the XY problem2 because it was not asked to.
这仍然是一个错误的答案，因为问题应该是"我如何使这段代码线程安全？"，其答案是"使用 System.Collections.Concurrent "和 1 行代码。LLM 无法识别 XY 问题的实例 2 ，因为它没有被要求这样做。
Future Velocity. This is your typical "tech debt" argument, but more urgent. AI can degrade the quality of your codebase so fast. Have you ever seen the fruits of hoarding disorder? From the outside, a house or apartment may look fine. But the inside is unsanitary, reprehensible, and nonfunctional. Developers are discovering that without strong guardrails, code produced by an LLM is like such a space.
未来速度。这是一个典型的"技术债务"论点，但更紧迫。AI 可以迅速降低你代码库的质量。你见过囤积混乱的成果吗？从外面看，一栋房子或公寓可能看起来不错。但内部肮脏、可憎且无法使用。开发人员发现，如果没有强有力的护栏，由 LLM 生成的代码就像这样的空间。
User Infantilization. An extinction of talent will occur within individuals and organizations that outsource thinking and problem solving to LLMs:
用户幼稚化。在将思考和问题解决外包给 LLM 的个人和组织中，将发生才能的消亡：
As senior engineers are deprived of the opportunity to learn through productive struggle, their existing problem solving and critical thinking skills atrophy:
随着高级工程师失去了通过积极奋斗学习的机会，他们现有的解决问题和批判性思维能力逐渐退化：
"Microsoft research on knowledge workers found that AI-driven confidence often comes at the expense of critical thinking"3
"微软对知识工作者的一项研究发现，AI 驱动的自信往往以牺牲批判性思维为代价" 3
"In a world pushing for “reflexive AI usage,” I’m advocating for something different: thoughtful, intentional collaboration with AI that preserves the essence of coding as a craft"4
"在一个推动“反射式 AI 使用”的世界里，我倡导的是一种不同的事物：与 AI 进行深思熟虑、有目的的协作，同时保留编程作为一门手艺的本质" 4
"LLMs give me finished thoughts, polished and convincing, but none of the intellectual growth that comes from developing them myself" 5
"LLMs 为我提供了完整的想法，它们经过润色且具有说服力，但没有我自己发展它们所带来的智力成长" 5
Junior engineers never develop such skills to begin with and so can never in turn mentor future junior engineers.
初级工程师从一开始就从未培养出这些技能，因此也永远无法反过来指导未来的初级工程师。
Loss of Joy. Many developers are reporting that using AI robs them of flow state and the joy of creation.6 AI-generated code is miserable to read and change.
失去乐趣。许多开发者报告说，使用 AI 会剥夺他们的心流状态和创造的乐趣。 6 AI 生成的代码难以阅读和修改。
In a future post, I plan to write about mitigations for each of these risks. Be sure to subscribe below if that sounds interesting.
在未来的文章中，我计划写一篇关于缓解这些风险的措施。如果这听起来很有趣，请确保在下方订阅。

"I'll become redundant"  "我将变得多余"
Source7  来源 7

No, you won't. That said, there are certainly things you can do to further differentiate yourself from an LLM. To stay on topic, I'll defer that to a future post.
不，你不会。不过，当然有办法让你自己与 LLM 进一步区分开来。为了紧扣主题，我会将其留待未来的帖子中讨论。

There are two programming competences that LLMs cannot furnish: program theory and program entropy.
有两项编程能力是 LLM 无法提供的：程序理论和程序熵。

Program Theory  程序理论
...programming properly should be regarded as an activity by which the programmers form or achieve a certain kind of insight, a theory, of the matters at hand
...编程应该被视为一种活动，通过这种活动，程序员形成或达到对当前事务的某种洞察力，即一种理论。

-- Peter Naur, Programming as Theory Building, 19858
-- Peter Naur, 编程作为理论构建，1985 8

Naur was one of the greats in computing. He argued, against popular belief at the time, that a program is not its source code. Rather, the program is a shared mental construct: a theory or design. From that, the engineer derives code, but the work product of value is the design, not code.
Naur 是计算机领域的大师之一。他反对当时普遍的观点，认为程序不等于其源代码。相反，程序是一个共享的心理构建：一个理论或设计。从这一点出发，工程师才能得出代码，但具有价值的工作成果是设计，而非代码。

To help you think about the difference between program theory and program text, consider this thought experiment: Imagine that two engineering teams of equivalent talent, A and B, are locked in separate rooms. Each team is told not to communicate with the other.
为了帮助你思考程序理论与程序文本之间的区别，考虑这个思想实验：想象两个同等才华的工程团队 A 和 B 被锁在不同的房间里。每个团队被告知不要与其他团队交流。
Team A is tasked to write a program, for example a simple terminal-based Chess game. Team B just waits, plays real Chess, or whatever. When Team A is finished, their source code is handed to Team B.
团队 A 被要求编写一个程序，例如一个简单的基于终端的象棋游戏。团队 B 则只是等待，玩真实的象棋，或者做任何其他事情。当团队 A 完成后，他们的源代码被交给团队 B。
Now each team is asked in parallel to add a feature to the program, for example a virtual chess player so the game can be played solo. (We'll let Team A take a coffee break before they get started).
现在要求每个团队并行地为程序添加一个功能，例如一个虚拟象棋玩家，以便可以独自玩游戏。（我们将让 A 团队先休息一下再开始工作）。

Question: Which team will deliver a better solution?
问题：哪个团队会提供一个更好的解决方案？

Answer: Team A, because those engineers have a fresh mental model of the program they just created, while Team B has none.
答案：A 团队，因为那些工程师对他们刚刚创建的程序有一个全新的思维模型，而 B 团队则没有。

According to Naur, the theory matters because inevitably a program needs to be maintained, i.e. modified after its initial creation. If all you have is the source code and not an internalized understanding of its design, the cost for those modifications will be higher. I think we can each remember a time we were introduced to a big existing codebase.
根据 Naur 的说法，理论之所以重要，是因为程序不可避免地需要维护，即在其初始创建后进行修改。如果你只有源代码而没有对其设计的内化理解，那么这些修改的成本将会更高。我想我们每个人都能回忆起一次接触大型现有代码库的经历。
At first our productivity was near zero. As we loaded the program theory into our mind, productivity rose.
起初我们的生产力几乎为零。随着我们将程序理论加载到大脑中，生产力开始提升。

LLMs and Program Theory
LLMs 与程序理论
LLMs as they currently exist cannot master a theory, design, or mental construct because they don't remember beyond their context window. Only humans can can gain and retain program theory.
当前的 LLMs 无法掌握理论、设计或心理结构，因为它们无法记住超出上下文窗口的内容。只有人类能够获得并保持程序理论。

Program Entropy  程序熵
Complexity is a fundamental opposing force of programming9, and it correlates with entropy.
复杂性是编程的基本对抗力量 9 ，它与熵相关。

...program building is an entropy-decreasing process...program maintenance is an entropy-increasing process, and even its most skillful execution only delays the subsidence of the system into unfixable obsolescence
...程序构建是一个熵减少的过程...程序维护是一个熵增加的过程，即使其最精湛的执行也只能延缓系统陷入无法修复的过时状态...

-- Fred Brooks, The Mythical Man-Month, 1975
-- Fred Brooks，《人月神话》，1975 年

Brooks, another prominent historical figure in computing, asserted that after initial construction, the changes made to a program can only make the source code more complex. However, changes made in harmony with the design will do so at a slower rate.
Brooks，另一位在计算机领域具有重要历史地位的人物，断言在初始构建之后，对程序所做的任何更改都只会使源代码更加复杂。然而，与设计相协调的更改会以较慢的速度实现这一点。

LLMs and Program Entropy
LLMs 和程序熵
An LLM is a token predictor. It works only at the level of text. It is not capable of working at a conceptual level: it doesn't reason about ideas, diagrams, or requirements specifications.
一个 LLM 是一个标记预测器。它只在文本层面工作。它无法在概念层面工作：它不会对想法、图表或需求规格进行推理。
Everyone who has prompted an LLM with a large chunk of code has beheld that the LLM tends to apply unnecessary and bizarre changes, and the longer the conversation drags on, the more it diverges. How often have you witnessed an LLM reduce the complexity of a piece of code?
所有使用大量代码提示过 LLM 的人都会发现，LLM 倾向于做出不必要且奇怪的修改，而且对话越拖延，它就越偏离主题。你见过多少次 LLM 简化代码的复杂性？

Only humans can decrease or resist complexity.
只有人类能够减少或抵抗复杂性。

Conclusion  结论
We found wisdom for the LLM age by remembering what two forerunners of our discipline had to say about software design and complexity.
通过回顾我们学科的两个先驱在软件设计和复杂性方面的观点，我们为 LLM 时代找到了智慧。

If you had hoped that AI would launch your engineering career to the next level, be warned that it could do the opposite. LLMs can accelerate incompetence.
如果你曾希望 AI 能将你的工程职业生涯提升到新的水平，请注意它可能会适得其反。LLMs 会加速无能。

If you're a skilled, experienced engineer and you fear that AI will make you unemployable, adopt a more nuanced view. LLMs can't replace human engineering.
如果你是一位经验丰富的工程师，并且担心 AI 会让你失业，请采取更细致的看法。LLMs 无法取代人类工程。

The business allure of AI is reduced costs through commoditized engineering, but just like offshore engineering talent brings forth mixed fruit, LLMs fall short and open risks.
AI 的商业吸引力在于通过标准化工程降低成本，但就像离岸工程技术人才带来的是混合成果一样，LLMs 也未能达标并带来了风险。

The AI hype cycle will eventually peak10. Companies which overuse AI now will inherit a long tail of costs, and they'll either pivot or go extinct. As such, the long-term value proposition for humans in engineering remains unchanged.
人工智能的炒作周期最终会达到顶峰 10 。现在过度使用人工智能的公司将继承长期的成本负担，他们要么转型要么消亡。因此，工程领域对人类的长期价值主张保持不变。
The world still needs and will pay for technical skills and deep thinking in engineering.
世界仍然需要并会为工程领域的专业技能和深度思考付费。

AI will stick around, though. Use it as a tool, not a crutch, and continue to invest in the same fundamental engineering skills that were deemed valuable in 2019.
AI 还是会继续存在的。把它当作工具而不是拐杖，并继续投资于 2019 年被认为是有价值的那些基本工程技能。

Next...  接下来...
Subscribe to my email list below. I plan to write more.
在下方订阅我的邮件列表。我计划继续写作。

References  参考文献
Leading Question  核心问题
The XY Problem  XY 问题
ThoughtWorks Technology Radar Volume 32
ThoughtWorks 技术雷达第 32 期
Coding as Craft: Going Back to the Old Gym
编程作为手艺：回归旧健身房
Thoughts on Thinking  思考关于思考
The Hidden Cost of AI Coding
AI 编程的隐藏成本
"I wonder if I'll become redundant"
"我在想我是否会变得多余"
Programming as Theory Building
编程作为理论构建
Grug on Complexity  关于复杂性
Gartner Hype Cycle  Gartner 炒作周期
Subscribe for More  订阅获取更多
I'll tell you about new posts. I take your privacy seriously.
我会告诉你有关新文章的内容。我非常重视你的隐私。
Your Name
 
your@email.com

Tags
code
←
Tech Risk is Business Risk
  ←技术风险是商业风险

© 2020 - 2025 Doug | CC BY-SA 4.0
