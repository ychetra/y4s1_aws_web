<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */	
define( 'DB_NAME', 'wordpress' );

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
define( 'AUTH_KEY',         '?<gO)R0P_Gy1_V.ehU&k4F{rE`@d/=Z9C7$]F^;[4uQbf|~J iCnOUbGmF*Nb%C?' );
define( 'SECURE_AUTH_KEY',  'Hr9H:@s]bq2;-`4(DfeO${5socK{.>&X4/Zm<*%=~UkztRaxr#<]_-/JVb,n%z%9' );
define( 'LOGGED_IN_KEY',    'FjDAGVc2xm1,vPgOd<,1GD/I u4ZrCSMh-vSflz(-^;m)@r%XAxWuqZb:UC2ja%m' );
define( 'NONCE_KEY',        ':zQ#x<%$s(M&v_1M>s)FE+VOn1k`0j72_94e{M[L+[?.Kw{)zC$M(|?`J[7M+Z^-' );
define( 'AUTH_SALT',        '3nsK,=FqXNsd^v_/Zo4Gq` ( MZbKOS|&Bd)^TIA}Fag#6PZqB(wu9hfw(l,o r5' );
define( 'SECURE_AUTH_SALT', '0jsgyW6Az6vl]J^m1{$D^e`@cE[iy2&2P54|J<C${oF+PvhP`ipc::b;R<N4g375' );
define( 'LOGGED_IN_SALT',   'jSy^!}XWU!P{83/#sgM>N7yM0ZF8Bu_=z]h2~}hY1ihC}@hltQG_k6w99h=DZ`[o' );
define( 'NONCE_SALT',       'XuMX4/-zj_h4Gz3(]hb(u{q8*}0aUZn{ /iVUFD2a^dmt]a%qY<L 6Xaz#b1=cQP' );

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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
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
