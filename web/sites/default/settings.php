<?php

// phpcs:ignoreFile

/**
 * @file
 * Drupal site-specific configuration file.
 * 
 * FOSSEE Drupal 11 Settings Configuration
 * This file contains the basic configuration for the FOSSEE Drupal site.
 */

/**
 * Database settings.
 * 
 * For DDEV development environment:
 * - Database name: db
 * - Username: db
 * - Password: db
 * - Host: db (DDEV container name)
 * - Port: 3306
 */

// Default database configuration for DDEV
$databases['default']['default'] = [
  'database' => 'db',
  'username' => 'db', 
  'password' => 'db',
  'host' => 'db',
  'port' => '3306',
  'driver' => 'mysql',
  'prefix' => '',
  'collation' => 'utf8mb4_general_ci',
  'init_commands' => [
    'isolation_level' => 'SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED',
  ],
];

/**
 * Environment-specific database override
 * 
 * This allows overriding database settings using environment variables
 * for production or other environments.
 */
// Environment overrides: honor DB_* vars even if DATABASE_URL is not set.
$env_db_name = getenv('DB_NAME');
$env_db_user = getenv('DB_USER');
$env_db_pass = getenv('DB_PASSWORD');
$env_db_host = getenv('DB_HOST');
$env_db_port = getenv('DB_PORT');

if ($env_db_name || $env_db_user || $env_db_pass || $env_db_host || $env_db_port || getenv('DATABASE_URL')) {
  $databases['default']['default'] = [
    'database' => $env_db_name ?: 'fossee_drupal',
    'username' => $env_db_user ?: 'drupal_user',
    'password' => $env_db_pass ?: '',
    'host' => $env_db_host ?: 'localhost',
    'port' => $env_db_port ?: '3306',
    'driver' => 'mysql',
    'prefix' => '',
    'collation' => 'utf8mb4_general_ci',
    'init_commands' => [
      'isolation_level' => 'SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED',
    ],
  ];
}

/**
 * Location of the site configuration files.
 */
$settings['config_sync_directory'] = '../config/sync';

/**
 * Salt for one-time login links, cancel links, form tokens, etc.
 */
$settings['hash_salt'] = getenv('DRUPAL_HASH_SALT') ?: 'fossee-drupal-site-secure-hash-salt-change-in-production';

/**
 * Explicitly mark the site as installed by setting the install profile.
 * This prevents Drupal from redirecting to core/install.php when the
 * database is already populated.
 */
$settings['install_profile'] = 'minimal';

/**
 * Deployment identifier.
 */
$settings['deployment_identifier'] = \Drupal::VERSION;

/**
 * Access control for update.php script.
 */
$settings['update_free_access'] = FALSE;

/**
 * External access proxy settings.
 */
$settings['reverse_proxy'] = FALSE;

/**
 * File system paths.
 */
$settings['file_public_path'] = 'sites/default/files';
$settings['file_private_path'] = '';
$settings['file_temp_path'] = '/tmp';

/**
 * Trusted host configuration.
 * 
 * To enable, uncomment and set appropriate patterns for your domain(s).
 */
// $settings['trusted_host_patterns'] = [
//   '^fossee\.ddev\.site$',
//   '^www\.fossee\.in$',
//   '^fossee\.in$',
// ];

/**
 * Class loader configuration.
 */
$settings['class_loader_auto_detect'] = FALSE;

/**
 * Allow test modules and themes.
 */
$settings['extension_discovery_scan_tests'] = FALSE;

/**
 * Container configuration.
 */
$settings['container_yamls'][] = $app_root . '/' . $site_path . '/services.yml';

/**
 * The default list of directories that will be ignored by Drupal's file API.
 */
$settings['file_scan_ignore_directories'] = [
  'node_modules',
  'bower_components',
];

/**
 * Entity update backup settings.
 */
$settings['entity_update_backup'] = TRUE;

/**
 * Entity update batch size.
 */
$settings['entity_update_batch_size'] = 50;

/**
 * Skip file system permissions hardening.
 */
$settings['skip_permissions_hardening'] = FALSE;

/**
 * Configuration for DDEV environment.
 */
if (getenv('IS_DDEV_PROJECT') == 'true') {
  // DDEV-specific configurations
  $settings['trusted_host_patterns'] = [
    '^fossee-drupal-site\.ddev\.site$',
    '^.*\.fossee-drupal-site\.ddev\.site$',
  ];
  
  // Disable CSS and JS aggregation in development
  $config['system.performance']['css']['preprocess'] = FALSE;
  $config['system.performance']['js']['preprocess'] = FALSE;
  
  // Enable development services
  if (file_exists($app_root . '/' . $site_path . '/services.local.yml')) {
    $settings['container_yamls'][] = $app_root . '/' . $site_path . '/services.local.yml';
  }
  
  // Show all error messages on development
  $config['system.logging']['error_level'] = 'verbose';
}

/**
 * Load services definition file.
 */
$settings['container_yamls'][] = $app_root . '/' . $site_path . '/default.services.yml';

/**
 * Load local development override configuration, if available.
 * 
 * Create a settings.local.php file to override settings for your local
 * development environment.
 */
if (file_exists($app_root . '/' . $site_path . '/settings.local.php')) {
  include $app_root . '/' . $site_path . '/settings.local.php';
}

/**
 * FOSSEE-specific configurations.
 */
// Default theme configuration
$config['system.theme']['default'] = 'fossee_theme';
$config['system.theme']['admin'] = 'claro';

// Site information
$config['system.site']['name'] = 'FOSSEE Drupal Site';
$config['system.site']['slogan'] = 'Free and Libre/Open Source Software for Education';
$config['system.site']['mail'] = 'info@fossee.in';

// Default front page
$config['system.site']['page']['front'] = '/node/1';

/**
 * Environment-specific settings.
 */
$environment = getenv('DRUPAL_ENV') ?: 'development';

switch ($environment) {
  case 'production':
    // Production-specific settings
    $config['system.performance']['cache']['page']['max_age'] = 3600;
    $config['system.performance']['css']['preprocess'] = TRUE;
    $config['system.performance']['js']['preprocess'] = TRUE;
    $config['system.logging']['error_level'] = 'hide';
    break;
    
  case 'staging':
    // Staging-specific settings  
    $config['system.performance']['cache']['page']['max_age'] = 1800;
    $config['system.performance']['css']['preprocess'] = TRUE;
    $config['system.performance']['js']['preprocess'] = TRUE;
    $config['system.logging']['error_level'] = 'some';
    break;
    
  default:
    // Development settings (default)
    $config['system.performance']['cache']['page']['max_age'] = 0;
    $config['system.performance']['css']['preprocess'] = FALSE;
    $config['system.performance']['js']['preprocess'] = FALSE;
    $config['system.logging']['error_level'] = 'verbose';
    break;
}

/**
 * Assertions.
 *
 * The legacy Drupal assertion handler (Drupal\Component\Assertion\Handle)
 * was removed in newer Drupal core, so we disable this to avoid fatal
 * errors on Drupal 11.
 */
// assert_options(ASSERT_ACTIVE, TRUE);
// \Drupal\Component\Assertion\Handle::register();

/**
 * Show all error messages, with backtrace information.
 */
if ($environment == 'development') {
  $config['system.logging']['error_level'] = 'verbose';
  error_reporting(E_ALL);
  ini_set('display_errors', TRUE);
  ini_set('display_startup_errors', TRUE);
}
// Automatically generated include for settings managed by ddev.
$ddev_settings = __DIR__ . '/settings.ddev.php';
if (getenv('IS_DDEV_PROJECT') == 'true' && is_readable($ddev_settings)) {
  require $ddev_settings;
}
