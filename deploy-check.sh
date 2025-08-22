#!/bin/bash

# Simple deployment verification script
echo "🚀 SBU Alumni Network - Deployment Verification"
echo "==============================================="

# Check if all required files exist
echo "📁 Checking files..."
required_files=("index.html" "style.css" "alumni.html" "contact.html" "events.html" "login.html" "mentorship.html" "news.html" "register.html")

all_exist=true
for file in "${required_files[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file exists"
    else
        echo "❌ $file missing"
        all_exist=false
    fi
done

# Check if images directory exists
if [ -d "images" ]; then
    echo "✅ images directory exists"
    image_count=$(ls images/*.png 2>/dev/null | wc -l)
    echo "📸 Found $image_count images"
else
    echo "❌ images directory missing"
    all_exist=false
fi

# Check GitHub workflow
if [ -f ".github/workflows/deploy.yml" ]; then
    echo "✅ GitHub Pages deployment workflow configured"
else
    echo "❌ GitHub Pages deployment workflow missing"
    all_exist=false
fi

echo ""
if [ "$all_exist" = true ]; then
    echo "🎉 All files present! Ready for deployment."
    echo ""
    echo "📝 Deployment Instructions:"
    echo "1. Merge this PR to main branch"
    echo "2. Enable GitHub Pages in repository settings"
    echo "3. Set source to 'GitHub Actions'"
    echo "4. Your site will be available at: https://saharshkmr.github.io/sbualumninet/"
else
    echo "❌ Some files are missing. Please check the above list."
fi

echo ""
echo "🌐 Local testing: python3 -m http.server 8000"