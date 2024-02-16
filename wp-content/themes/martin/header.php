<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Martin
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#primary"><?php esc_html_e( 'Skip to content', 'martin' ); ?></a>

	<!-- <header id="masthead" class="site-header">
		<div class="site-branding">
			<?php
			the_custom_logo();
			if ( is_front_page() && is_home() ) :
				?>
				<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
				<?php
			else :
				?>
				<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
				<?php
			endif;
			$martin_description = get_bloginfo( 'description', 'display' );
			if ( $martin_description || is_customize_preview() ) :
				?>
				<p class="site-description"><?php echo $martin_description; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></p>
			<?php endif; ?>
		</div>

		<nav id="site-navigation" class="main-navigation">
			<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><?php esc_html_e( 'Primary Menu', 'martin' ); ?></button>
			<?php
			wp_nav_menu(
				array(
					'theme_location' => 'menu-1',
					'menu_id'        => 'primary-menu',
				)
			);
			?>
		</nav>
	</header> -->
	<header>
        <div class="topNavWrap">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 m-auto">
                        <div class="topNav">
                            <div class="navLeft">
                                <div class="siteLogo">
                                    <img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/HeaderLogo.png' ); ?>" alt="">
                                </div>
                                <div class="siteTitle">
                                    MARTIN LABEL & PRINT
                                </div>
                            </div>
                            <div class="navRight">
                                <div class="nrListWrap">
                                    <ul class="nrlist">
                                        <li class="nrItem"><span class="navIcon"><img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/headerIcon1.png' ); ?>" alt=""></span><span class="navTxt"><a href="<?php echo home_url('/faq'); ?>"> FAQ</a></span></li>
                                        <li class="nrItem"><span class="navIcon"><img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/headerIcon2.png' ); ?>" alt=""></span><span class="navTxt"><a href="<?php echo home_url('/testimonials'); ?>"> Testimonials</a></span></li>
                                        <li class="nrItem"><span class="navIcon"><img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/headerIcon3.png' ); ?>" alt=""></span><span class="navTxt"><a href="<?php echo home_url('/forms'); ?>"> Forms</a></span></li>
                                        <li class="nrItem"><span class="navIcon"><img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/headerIcon4.png' ); ?>" alt=""></span><span class="navTxt"><a href="<?php echo home_url('/request-estimate'); ?>"> Request Estimate</a></span></li>
                                        <li class="nrItem"><span class="navIcon"><img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/headerIcon5.png' ); ?>" alt=""></span><span class="navTxt"><a href="<?php echo home_url('/art-work'); ?>"> Upload Artwork</a></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottomNavWrap">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 m-auto">
                        <div class="bottomNav">
                            <div class="bnlWrap">
                                <ul class="bnList">
                                    <li class="bnItem"><a href="<?php echo home_url('/'); ?>"> Home</a></li>
                                    <li class="bnItem"><a href="javascript:(void)"> Label Solutions</a></li>
                                    <li class="bnItem"><a href="javascript:(void)"> Capabilities</a></li>
                                    <li class="bnItem"><a href="javascript:(void)"> Industries Served</a></li>
                                    <li class="bnItem"><a href="<?php echo home_url('/contact'); ?>"> Contact</a></li>
                                </ul>
                            </div>
                            <div class="bnsWrap">
                                <div class="bncntct">
                                    <a href="tel:+">CALL: 866-522-3555</a>
                                </div>
                                <div class="bnSrch">
                                    <i class="fa fa-search"></i>
                                    <input type="search" name="" hidden id="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
