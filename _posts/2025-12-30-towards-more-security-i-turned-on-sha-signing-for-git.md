---
layout: post
title: "Towards more security - I turned on sha signing for git"
---

I randomly read [How we got hit by Shai-Hulud](https://trigger.dev/blog/shai-hulud-postmortem) which is kind of scary.
The problem in a nutshell is that if you as a developer run any kind of malware locally, it can exfiltrate all your locally-stored credentials.
It's a hard problem to solve.
They discuss this and a bunch of related problems (like how to not get infected by malware while installing libraries),
so I took the first steps: Use 1Password agent for ssh keys, and sign git commits using this agent.

Their documentation is totally good: [1Password SSH Agent](https://developer.1password.com/docs/ssh/agent/) and [Sign Git Commits with SSH](https://developer.1password.com/docs/ssh/git-commit-signing/).

The only downside now is that I need a faster cpu. I have a heavy git-rebase workflow and now rebase involves signing dozens of commits, and I do this repeatedly.
Frustratingly, the nature of git means that this process must be serialized, so it is basically a single-core problem.
I have an M1 Max and, well, I want new benchmarks around git signing.
