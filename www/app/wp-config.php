<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'kibo' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'mz$IrS4}9hNo?nhJ>~Ln$uY@P|_yh5oq>OfIE:7Pj*:0)-~L:Hxc5_u`eFC+=X*;' );
define( 'SECURE_AUTH_KEY',  'M}^e0Z&V)?iNL@sc(Ht[uc5;;Vr4mQDGZ5bwVjEOC5hj>h*,4L5??NN7.Dvz.Ieb' );
define( 'LOGGED_IN_KEY',    '?,- a@_7%DzZ *ibvbEqBG]<7EP>I2vUC_j)8tr9hIFJw%!Euz1tFTVPN@i+xVGl' );
define( 'NONCE_KEY',        '@|.oqgu,>oR?}0i_A^.bC|F48$k@6?{r0.`S$13)L?/3#F#^}9W<alO!>s6Kn0?q' );
define( 'AUTH_SALT',        'v-Jx5+K${[Bd@pY3E|%Vcb&B,:$RCFF~B7tVIIj7kmW!Xudh5@^b:~%;m8Du@Y&k' );
define( 'SECURE_AUTH_SALT', 'TWgz%7e30w*mI{o*g>m)J3*0AM</m-Zp+`wQX5ygR8Kd7JFc46rFtNVbx+jpWLPQ' );
define( 'LOGGED_IN_SALT',   'A4?;S4zO*T<0q(NJ)e+TN&$D$Tjdmw^e(scsgl]8f%q~N=PfET*T.~vRMAm<ng=*' );
define( 'NONCE_SALT',       '^?A% |FW/e0]^UPf=c[e!WK)d+8a@g&N{,/Of7E0:nf0OR)9BW)1GFH|<vnFQBux' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'kibo_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );


/** Redis options. */
define('WP_REDIS_HOST', 'redis');