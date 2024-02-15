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
// data base table prefix is tin_
define( 'DB_NAME', 'martin' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

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
define( 'AUTH_KEY',         'VSGNDJNy.Jnl<Xd>hPXkvYf7MOlLFE0X:fcGd #HztYH^lZUsC5rAO%n?Pz?L:Ut' );
define( 'SECURE_AUTH_KEY',  'H1ACJ6`0nU~o7KC%CQ M9`V(T<?7T~%7?2bz/j&jv}z,Dla)W*G[[Xst_T-sv^fV' );
define( 'LOGGED_IN_KEY',    '4Ww ScHMao)UKb%;p1Xp/IsvIa{Tl?p5k]LVi>Cqmh*~Fy}+*M^DTTB]@U%g +jE' );
define( 'NONCE_KEY',        'Ru^VdsGz]b4PXSXo#-*RdW<Y|g;c?=k%Y3t,owRO8PDPD5=V&G9u(Usi@G0VS%S+' );
define( 'AUTH_SALT',        '{oz/7[{eI5&,J]T5t+}Wm|v.EdfTOd[^PI<`_*Wl(A58kb*-DcY;#|rPb+uLli*Y' );
define( 'SECURE_AUTH_SALT', 'W7Ct7t?mCap#O)GH>ViV6dO41M)Cgm9+Q>Rn>fx!2XgX;v8?R+NeHB4D*s-?6 C5' );
define( 'LOGGED_IN_SALT',   '`L4&<N|>(XX 4;JKu)`hi=ni1C}q,nmoDYAC1W:bGbmIGrVXXIC7vua=cYLcy?y?' );
define( 'NONCE_SALT',       'U;8%K/k zL=QO 9JRUpHQ]|caiBnDT`m#L+C>NxK^#?.-V:G&o]1/u%l MNA`VKx' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'tin_';

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
