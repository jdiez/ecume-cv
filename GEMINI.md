# CV Sync Rules

This workspace requires `index.html` and `cv.pdf` to be manually kept in sync with changes made to `cv.md`.

When you are asked to sync the files or when a session start hook detects that `cv.md` has been updated:
1. Parse the new changes in `cv.md`.
2. Apply the exact same text changes to the HTML structure in `index.html`.
3. Regenerate the `cv.pdf` file using headless Chrome with the following command:
   ```bash
   chromium-browser --headless --disable-gpu --no-margins --print-to-pdf=cv.pdf file://$(pwd)/index.html || google-chrome --headless --disable-gpu --no-margins --print-to-pdf=cv.pdf file://$(pwd)/index.html
   ```
4. Commit and push the updated files.
