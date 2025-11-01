# Mark's Remarks Blog

## Adding New Snippets

Create a new file in `_posts/` with the format `YYYY-MM-DD-title.md`:

```markdown
---
layout: default
title: "Your snippet title"
---

Your content here with **markdown** and `code`.
```

Commit and push - GitHub will rebuild automatically (takes ~1 minute).

## Notes

- Posts must be in `_posts/` with the date format in filename
- Front matter (the `---` section) is required
- Dark mode is automatic based on system preference
- Code blocks get syntax highlighting via Rouge
