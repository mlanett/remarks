---
layout: default
title: "Git worktree for agents"
---

I discovered `git worktree` a few days ago; this lets you create a second work directory with its own branches but connected to the same local git repo.

```bash
git worktree add ../other-project other-project
```

Clean up with:

```bash
git worktree remove ../feature-branch
```

Apparently this is very useful for working with multiple agents to keep them from colliding with each other.
