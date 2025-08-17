# FOSSEE Drupal Website

A custom Drupal theme and website for FOSSEE (Free/Libre and Open Source Software for Education) - IIT Bombay.

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
