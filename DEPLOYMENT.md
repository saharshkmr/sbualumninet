# 🚀 Deployment Guide

## Overview

The SBU Alumni Network is a static website that can be deployed to any web hosting service. This guide covers deployment to GitHub Pages, which is the recommended and easiest option.

## 🎯 GitHub Pages Deployment (Recommended)

### Automatic Deployment

1. **Enable GitHub Pages**
   - Go to your repository on GitHub
   - Click on `Settings` tab
   - Scroll down to `Pages` section
   - Under `Source`, select `GitHub Actions`

2. **Trigger Deployment**
   - The deployment workflow will automatically run when you push to the `main` branch
   - You can also manually trigger it from the `Actions` tab

3. **Access Your Site**
   - Your site will be available at: `https://saharshkmr.github.io/sbualumninet/`
   - It may take a few minutes for the first deployment

### Manual Verification

Run the deployment verification script:
```bash
./deploy-check.sh
```

## 🌐 Alternative Deployment Options

### Netlify
1. Create account at [netlify.com](https://netlify.com)
2. Drag and drop your project folder to Netlify dashboard
3. Your site will be live instantly

### Vercel
1. Create account at [vercel.com](https://vercel.com)
2. Connect your GitHub repository
3. Deploy automatically on every push

### Traditional Web Hosting
1. Upload all files to your web server's public directory
2. Ensure `index.html` is in the root directory
3. All images and CSS files should maintain their relative paths

## 🔧 Local Development

For local testing and development:

```bash
# Clone the repository
git clone https://github.com/saharshkmr/sbualumninet.git
cd sbualumninet

# Start local server
python3 -m http.server 8000

# Open browser
open http://localhost:8000
```

## 📁 File Structure

```
sbualumninet/
├── index.html              # Homepage
├── alumni.html            # Alumni directory
├── contact.html           # Contact page
├── events.html            # Events page
├── login.html             # Login page
├── mentorship.html        # Mentorship page
├── news.html              # News page
├── register.html          # Registration page
├── style.css              # Main stylesheet
├── images/                # All images and assets
├── .github/workflows/     # GitHub Actions deployment
├── deploy-check.sh        # Deployment verification script
└── README.md              # Main documentation
```

## 🎯 Important Notes

- This is a static website (HTML/CSS/JS only)
- No server-side processing required
- No database or backend services needed
- All assets are self-contained
- Mobile responsive design included

## 🐛 Troubleshooting

### Common Issues

1. **Images not loading**: Check that image paths are correct and files exist in the `images/` directory
2. **CSS not applied**: Verify `style.css` is in the root directory
3. **404 errors**: Ensure all HTML files are in the root directory
4. **GitHub Pages not working**: Check that Pages is enabled and source is set to "GitHub Actions"

### Support

For deployment issues, check:
- GitHub Actions log in the repository
- Browser developer console for errors
- File permissions and paths