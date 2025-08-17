# FOSSEE Drupal - Quick Start Guide

## 🚀 Get Started in 5 Minutes

### Prerequisites
- [Docker Desktop](https://www.docker.com/products/docker-desktop) installed
- [DDEV](https://ddev.readthedocs.io/en/stable/) installed
- Git

### Installation Steps

1. **Clone the Repository**
   ```bash
   git clone [your-repo-url]
   cd fossee-drupal-site
   ```

2. **Start DDEV Environment**
   ```bash
   ddev start
   ```

3. **Install Drupal Dependencies**
   ```bash
   ddev composer install
   ```

4. **Import Database with Content**
   ```bash
   ddev import-db --file=fossee_database.sql
   ```

5. **Clear Drupal Cache**
   ```bash
   ddev drush cache:rebuild
   ```

6. **Open Your Site**
   ```bash
   ddev launch
   ```

### 🎉 That's It!

Your FOSSEE Drupal site will be available at:
**http://fossee-drupal-site.ddev.site**

### What You'll See

✅ **Front Page Features:**
- FOSSEE Header with logo and branding
- Dr. A.P.J. Abdul Kalam quote section
- Interactive Activities tabs (working!)
- News and Notice sections
- Social media and poster sections
- Responsive footer

✅ **Working Functionality:**
- Front-page only custom sections (no layout breaks on other pages)
- Interactive activity tabs with content switching
- Responsive design for all devices
- Proper Drupal block and menu integration

### Useful DDEV Commands

```bash
# Stop the site
ddev stop

# Restart the site
ddev restart

# View site status
ddev status

# Access database
ddev mysql

# View logs
ddev logs

# SSH into container
ddev ssh
```

### Admin Access

- **Username**: admin (or check database for users)
- **Password**: Check imported database or reset with:
  ```bash
  ddev drush user:password admin "newpassword"
  ```

### Need Help?

- Check the full [README.md](README.md) for detailed documentation
- Visit DDEV documentation: https://ddev.readthedocs.io/
- Contact: info [at] fossee [dot] in

---

**Happy Coding! 🎉**
