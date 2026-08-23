#!/bin/bash
cd ..
if [ -f cv.md ] && [ -f index.html ]; then
  if [ cv.md -nt index.html ] || [ cv.md -nt cv.pdf ]; then
    cat <<EOF
{
  "injectSteps": [
    {
      "ephemeralMessage": "The cv.md file is newer than index.html or cv.pdf. Please sync the latest changes to index.html and regenerate cv.pdf using the instructions in GEMINI.md."
    }
  ]
}
EOF
    exit 0
  fi
fi

echo '{"injectSteps": []}'
