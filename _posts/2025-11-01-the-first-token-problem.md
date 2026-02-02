---
layout: post
title: "the first token problem"
---

Ruminations from a year ago…

In the ["Deep Dive into LLMs like ChatGPT"](https://youtu.be/7xTGNNLPyMI?t=6416) video, Andrej Karpathy talks what he calls "models need tokens to think".
He is showing us the a prompt with two possible responses. Both responses are correct; the questions is which response should we prefer?
The prompt is a math question, and one response gives the answer followed by an explanation. The other response works out the problem and then provides the answer.
As humans we might prefer the former, with the answer first, but with the goal of fine-tuning, we should prefer the one which works out the problem first.
The problem is that by training the model to respond this way, we are expecting it to solve the problem in one or very few passes, using very few tokens, and thus using very little thinking.
If a prompt can't be solved in only one or a few passes then the model is going to struggle, get it wrong, or have to reset.

This is what I think of as the "first token" problem.

We don't want to require the model to have to figure out the entire answer in the first few tokens.

However we tend to dislike verbose answers and often prompt models saying "Give a concise answer" or "no yapping".
Some response formats such as JSON do effectively the same thing because they require the shape of the answer to be known right away (JSON in particular requires the first token to be punctuation like `{`, `[`, `"`, or a number or the word `true` or `false`.)

So, if we want models to be able to work out the problem *before* providing the answer, we need to give them an opportunity. This could be "Show your work, then write `Answer:` and show the exact answer. As it happened, the entire industry was thinking about this problem and invented "thinking tags" in late 2024. This permits the models to spend lots of tokens working out a problem but keeps that output separate from the answer.

I definitely think that any prompts requiring JSON responses should only be conducted with thinking models.
Even with non-JSON responses (say DSPy chat format), it can be beneficial to ask for a "thoughts" answer first. For example:

```python
class Classification(dspy.Signature):
    item_name: str = dspy.InputField()
    item_description: str = dspy.InputField()

    thoughts: str = dspy.OutputField(desc="Thoughts about which category to output for this question")
    category: str = dspy.OutputField(desc="One of: " + ", ".join(categories))
```

This prompt invites the model to think before doing the strict categorization.
In my experiments I saw just the addition of the `thoughts` field to produce a 1% increase in accuracy (and it was high accuracy to begin with, so a bigger deal than it sounds).
