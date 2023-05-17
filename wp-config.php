<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'eventmanagementsystem' );

/** Database username */
define( 'DB_USER', 'admin' );

/** Database password */
define( 'DB_PASSWORD', 'admin' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'UD,`y`20Yz`*$U_1Q<#La<OmMo_JP%x^?;v.C <pd~UC:R}_ u*C=5EVX;J|_AH?' );
define( 'SECURE_AUTH_KEY',  '*xiK+anqy1$/<p[kwAqw?a!bX0A|QJ)zCD*QyS< t;C)9Oa@u$m<0`vbr*K4f[`:' );
define( 'LOGGED_IN_KEY',    'wyGV;C{_O_;-pnY8, {(NNM)uAF0ClArP+,oPAp^qv3aN_vQe9Ad4^@+IDPxXcv]' );
define( 'NONCE_KEY',        'w.UGp(/f#!x%6z_9E}0iYuWr-E|=Q*A9PZ-yl(O@YY6$8S6|teNgdmke^?+V01;;' );
define( 'AUTH_SALT',        'CUTG=DqX8Lb-Dvqi-w?Oh^}@h?<:C>gH+U2flk3#6oq;TR0[[mDBUh!u5V/-k$!`' );
define( 'SECURE_AUTH_SALT', 'S0m&Q&0uU$4Q_q *Pz2&eq^>I36&:UvN<a8X_LD<g?R~OU[35+bsCp3QO!: q&0d' );
define( 'LOGGED_IN_SALT',   'c)9/e_[5o6[`tkkk_PIy]c#~JTlY:iwQ-1QLuTuN8Dgu6.beiF=.)-~m} c[:Jr_' );
define( 'NONCE_SALT',       'i.vo_#,ZQ*2X  f6+g@;`L7`_W5<ZrvSE{k`%>xv!rw-V}xkH7b{6U}afs=}/Q%k' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
