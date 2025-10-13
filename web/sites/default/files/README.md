# Drupal Files Directory

This directory (`web/sites/default/files`) is where Drupal stores uploaded files, generated stylesheets, cached images, and other assets.

## Important Notes

- **Permission Requirements**: This directory must be writable by the web server
- **Security**: Only specific file types should be uploaded here
- **Version Control**: The contents of this directory are generally not tracked in Git (except for this README and .gitkeep)

## Directory Structure

When your Drupal site is running, this directory will contain:

- `css/` - Aggregated CSS files
- `js/` - Aggregated JavaScript files  
- `styles/` - Image style derivatives
- `languages/` - Translation files
- Various uploaded files and media assets

## DDEV Setup

If you're using DDEV for development:

1. The directory permissions are automatically handled
2. Files uploaded during development will be stored here
3. You can access files via: `http://your-site.ddev.site/sites/default/files/filename`

## Production Setup

For production environments:

1. Ensure the web server has write permissions to this directory
2. Set up proper file upload limits in PHP configuration
3. Consider using external file storage for large sites
4. Regular backups should include this directory

## File Security

- PHP execution is disabled in this directory via .htaccess
- Only safe file extensions should be allowed for upload
- Regular security scans should monitor this directory

---

*This directory is part of the FOSSEE Drupal site configuration*