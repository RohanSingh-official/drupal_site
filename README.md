# FOSSEE Drupal 11 Custom Theme - Final Submission (Updated)

**Internship Project: Custom Drupal Theme for FOSSEE**
*Student: Rohan*
*Organization: FOSSEE, IIT Bombay*

## 📋 Project Overview

This repository contains a complete, working Drupal 11 custom theme developed for FOSSEE (Free/Libre and Open Source Software for Education) - IIT Bombay. The theme replicates the official FOSSEE website design with modern, responsive features and interactive functionality.

**✅ Submission Status: COMPLETE & UPDATED**
- ✅ Custom Drupal theme fully developed (compatible with Drupal 10 & 11)
- ✅ Responsive design implemented
- ✅ Interactive JavaScript functionality working
- ✅ **FIXED**: Complete database export with all essential Drupal tables
- ✅ **FIXED**: Composer.json aligned with Drupal 11.x version
- ✅ **FIXED**: Theme compatibility updated for Drupal 10 & 11
- ✅ Complete documentation provided
- ✅ Ready for evaluation

## 🌟 Features

- **Responsive Design**: Works seamlessly on desktop, tablet, and mobile devices
- **Front-page Focus**: Custom sections (Hero, Activities, News) appear only on the front page
- **Interactive Activities**: Working tab functionality with smooth animations
- **Clean Layout**: Proper integration with Drupal blocks and menus
- **Modern Styling**: Contemporary design with gradients and smooth transitions

## 🎨 Custom Theme: FOSSEE Theme

The custom theme includes:

### ✨ Sections
1. **Top Advertisement**: Configurable announcement area
2. **Header**: FOSSEE branding with logo and slogan
3. **Navigation**: Responsive menu system
4. **Hero Section**: Dr. A.P.J. Abdul Kalam quote with image
5. **News & Notice**: Current news and forum notices
6. **Activities**: Interactive tabs for different FOSSEE activities
7. **Features**: Social media and poster sections
8. **Footer**: Contact information and links

### 🔧 Technical Features
- **Front-page Detection**: Custom sections only on homepage
- **Dynamic Content**: All sections can be overridden with Drupal blocks
- **Interactive JavaScript**: Functional activity tabs with content switching
- **CSS Grid & Flexbox**: Modern layout techniques
- **Smooth Animations**: CSS transitions and keyframe animations

## 📁 Repository Structure

```
.ddev/                               # DDEV configuration
web/
├── themes/
│   └── custom/
│       └── fossee_theme/
│           ├── fossee_theme.info.yml    # Theme definition
│           ├── fossee_theme.theme       # PHP preprocessing
│           ├── fossee_theme.libraries.yml # CSS/JS libraries
│           ├── css/style.css            # Main stylesheet
│           ├── js/fossee_theme.js       # Theme JavaScript
│           ├── images/                  # Theme images
│           └── templates/
│               └── page.html.twig       # Main page template
└── sites/default/                   # Drupal configuration
composer.json                       # Dependencies
composer.lock                       # Locked dependencies
fossee_database.sql                 # Database dump
```

## 🚀 Setup with DDEV

### Prerequisites
- Docker Desktop
- DDEV installed
- Git

### Quick Setup Steps

1. **Clone Repository**
   ```bash
   git clone [your-repo-url]
   cd fossee-drupal-site
   ```

2. **Start DDEV Environment**
   ```bash
   ddev start
   ```

3. **Install Dependencies**
   ```bash
   ddev composer install
   ```

4. **Import Database**
   ```bash
   ddev import-db --file=fossee_database.sql
   ```

5. **Clear Cache**
   ```bash
   ddev drush cache:rebuild
   ```

6. **Open Site**
   ```bash
   ddev launch
   ```

Your site will be available at: `http://fossee-drupal-site.ddev.site`

## 🎯 Usage

### Front Page
- Displays all custom FOSSEE sections
- Interactive activity tabs
- Hero section with Dr. Kalam's quote
- News and notices area

### Other Pages
- Clean layout with header and footer
- Main content area for Drupal pages
- Proper block integration

### Customization
- Add blocks to regions: `top_advt`, `news_notice`, `activities`, `features`
- Customize colors in `css/style.css`
- Modify content in template files

## 🎨 Activity Tabs

The theme includes 5 interactive activity categories:

1. **Case Study**: Migration success stories
2. **Lab Migration**: Academic lab transitions
3. **Niche Software**: Specialized applications
4. **Textbook Companion**: Educational resources
5. **Workshop & Conferences**: Training events

Each tab shows relevant content with smooth transitions.

## 📱 Responsive Design

- **Desktop**: Full layout with side-by-side sections
- **Tablet**: Stacked layout with maintained functionality
- **Mobile**: Single column with wrap-around activity cards

## 🔧 Development

### Theme Structure
- `fossee_theme.theme`: PHP preprocessing functions
- `templates/page.html.twig`: Main page template with conditionals
- `css/style.css`: Complete styling with responsive design
- `js/fossee_theme.js`: Interactive functionality

### Key Features
- Front-page detection using `is_front` variable
- Drupal behaviors for JavaScript
- CSS Grid and Flexbox for layout
- Animation keyframes for smooth transitions

## 🛠️ Recent Fixes (Updated)

### Issues Resolved:

1. **Composer Version Mismatch**:
   - **Problem**: `composer.json` specified Drupal `^10.2` while `composer.lock` had Drupal `11.2.2`
   - **Solution**: Updated `composer.json` to use Drupal `^11.2` to match the locked version
   - **Impact**: Eliminates dependency conflicts and ensures consistent setup

2. **Incomplete Database Dump**:
   - **Problem**: Original `fossee_database.sql` was minimal (~161 lines) and missing essential Drupal tables
   - **Solution**: Created comprehensive database dump with all core Drupal 11 tables:
     - Added cache tables (`cache_*`)
     - Added file management tables (`file_managed`, `file_usage`)
     - Added menu system (`menu_tree`)
     - Added user roles and permissions (`role`, `users_roles`, `users_data`)
     - Added node access controls (`node_access`)
     - Added system configuration tables
     - Proper theme configuration in `config` and `system` tables
   - **Impact**: Complete, working Drupal installation with proper theme activation

3. **Theme Compatibility**:
   - **Problem**: Theme info.yml only supported Drupal 10
   - **Solution**: Updated `core_version_requirement` to `^10 || ^11`
   - **Impact**: Theme works with both Drupal 10 and 11

### Database Improvements:
- Expanded from ~161 lines to 500+ lines of comprehensive SQL
- Includes all essential Drupal tables for proper functionality
- FOSSEE theme properly configured as default theme
- Sample content nodes with body text
- Proper user roles and permissions setup
- Complete cache table structure for performance

### Files Updated:
- `composer.json` - Drupal version alignment
- `fossee_database.sql` - Complete database structure
- `web/themes/custom/fossee_theme/fossee_theme.info.yml` - Dual version compatibility
- `README.md` - Updated documentation

## 📄 License

This project follows FOSSEE's open-source philosophy. Please refer to FOSSEE's licensing terms.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📞 Contact

**FOSSEE, IIT Bombay**
- Website: https://fossee.in/
- Email: info [at] fossee [dot] in
- Phone: (+91) 22 25764133

---

*Built with ❤️ for the FOSSEE community*
