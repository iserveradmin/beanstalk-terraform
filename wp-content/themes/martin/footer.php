<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Martin
 */

?>

	<!-- <footer id="colophon" class="site-footer">
		<div class="site-info">
			<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'martin' ) ); ?>">
				<?php
				
				printf( esc_html__( 'Proudly powered by %s', 'martin' ), 'WordPress' );
				?>
			</a>
			<span class="sep"> | </span>
				<?php
			
				printf( esc_html__( 'Theme: %1$s by %2$s.', 'martin' ), 'martin', '<a href="http://underscores.me/">Underscores.me</a>' );
				?>
		</div>
	</footer> -->
	<footer class="ftrSec">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-9 m-auto">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="fotrLeft">
                                <div class="ftrLogo">
                                    <div class="flImg">
                                        <img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/HeaderLogo.png' ); ?>" alt="">
                                    </div>
                                </div>
                                <div class="soclIcon">
                                    <ul class="sclIcnList">
                                        <li><i class="fa fa-facebook"></i></li>
                                        <li><i class="fa fa-google-plus"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="ftListWrap">
                                <ul class="ftList">
                                    <li>TERMS & CONDITIONS</li>
                                    <li>PRIVACY POLICY</li>
                                    <li>CAREERS</li>
                                </ul>
                                <p class="ftTxt">All rights reserved. Copyright 2018 Martin Label & Print and all subsidiaries</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<?php wp_footer(); ?>

</body>
</html>
