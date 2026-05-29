# Javier Díez Pérez — CV

Online CV hosted via GitHub Pages.

## Live

[https://jdiez.github.io/ecume-cv](https://jdiez.github.io/ecume-cv)

## Files

- `index.html` — Main CV page (HTML + inline CSS)
- `cv.md` — Markdown source
- `cv.pdf` — PDF export (generated from HTML via headless Chrome)
- `style.css` — Additional styles (legacy)
- `photo.jpg` — Profile photo

## Regenerate PDF

### macOS

```bash
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  --headless --disable-gpu --no-margins \
  --print-to-pdf=cv.pdf file://$(pwd)/index.html
```

### Linux (Ubuntu/Debian)

```bash
# Install Chromium if not present
sudo apt install -y chromium-browser

chromium-browser --headless --disable-gpu --no-margins \
  --print-to-pdf=cv.pdf file://$(pwd)/index.html
```
