## File: index.html

```html
---
layout: default
---

<div class="snippets">
  {% for post in site.posts %}
    <article class="snippet">
      <div class="snippet-header">
        <time>{{ post.date | date: "%Y-%m-%d" }}</time>
        <h2>{{ post.title }}</h2>
      </div>
      <div class="snippet-content">
        {{ post.content }}
      </div>
    </article>
  {% endfor %}
</div>
```

## File: assets/style.css

```css
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif;
  line-height: 1.6;
  color: #333;
  background: #fff;
  padding: 20px;
}

.container {
  max-width: 700px;
  margin: 0 auto;
}

header {
  margin-bottom: 60px;
  padding-bottom: 20px;
  border-bottom: 1px solid #e1e4e8;
}

header h1 {
  font-size: 28px;
  margin-bottom: 5px;
}

header h1 a {
  color: #333;
  text-decoration: none;
}

header p {
  color: #666;
  font-size: 15px;
}

.snippet {
  margin-bottom: 50px;
}

.snippet-header {
  margin-bottom: 15px;
}

.snippet-header time {
  display: block;
  color: #666;
  font-size: 14px;
  font-family: 'Courier New', monospace;
  margin-bottom: 5px;
}

.snippet-header h2 {
  font-size: 20px;
  font-weight: 600;
  color: #111;
}

.snippet-content {
  color: #444;
}

.snippet-content p {
  margin-bottom: 15px;
}

.snippet-content code {
  background: #f6f8fa;
  padding: 2px 6px;
  border-radius: 3px;
  font-family: 'Courier New', Consolas, monospace;
  font-size: 14px;
}

.snippet-content pre {
  background: #f6f8fa;
  padding: 15px;
  border-radius: 5px;
  overflow-x: auto;
  margin-bottom: 15px;
}

.snippet-content pre code {
  background: none;
  padding: 0;
}

.snippet-content ul, .snippet-content ol {
  margin-left: 20px;
  margin-bottom: 15px;
}

.snippet-content a {
  color: #0366d6;
  text-decoration: none;
}

.snippet-content a:hover {
  text-decoration: underline;
}

/* Dark mode */
@media (prefers-color-scheme: dark) {
  body {
    background: #0d1117;
    color: #c9d1d9;
  }
  
  header {
    border-bottom-color: #30363d;
  }
  
  header h1 a {
    color: #c9d1d9;
  }
  
  header p {
    color: #8b949e;
  }
  
  .snippet-header time {
    color: #8b949e;
  }
  
  .snippet-header h2 {
    color: #c9d1d9;
  }
  
  .snippet-content {
    color: #c9d1d9;
  }
  
  .snippet-content code {
    background: #161b22;
  }
  
  .snippet-content pre {
    background: #161b22;
  }
  
  .snippet-content a {
    color: #58a6ff;
  }
}
```

## Setup Instructions

1. Create a new GitHub repository
2. Clone it locally
3. Create all the files above in your local repo
4. Commit and push:

   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

5. Enable GitHub Pages:
   - Go to repo Settings → Pages
   - Source: Deploy from branch
   - Branch: main, folder: / (root)
   - Save

Your site will be live at `https://yourusername.github.io/your-repo-name/`

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
