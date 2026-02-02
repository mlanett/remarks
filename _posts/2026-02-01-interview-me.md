---
layout: default
title: "Interview Me"
---

Good idea from Danny Postma for an "interview me" skill using the AskUserQuestion (both Claude Code and Cursor have this).

<https://x.com/dannypostma/status/2017864243895538012>

I tweaked it because I want to use it for spec writing.
I was not familiar with the "argument-hint" option but this just a form of completion when invoking it.

```text
---
argument-hint: [instructions]
description: Interview user in-depth to create a detailed spec
allowed-tools: AskUserQuestion, Write
---

# Writing Specs via Interview

Follow the user instructions and interview me in detail using the AskUserQuestionTool about literally anything: technical implementation, UI & UX, concerns, tradeoffs, etc. but make sure the questions are not obvious.
Be very in-depth and continue interviewing me continually until it's complete.
Then, write the spec to a file.

<instructions>$ARGUMENTS</instructions>
```
