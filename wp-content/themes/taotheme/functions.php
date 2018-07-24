<?php
/**
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Astra
 * @since 1.0.0
 */

// правильный способ подключить стили и скрипты
add_action( 'wp_enqueue_scripts', 'tao_scripts' );

function tao_scripts() {
	wp_enqueue_style( 'animate', get_template_directory_uri() . '/assets/css/animate.css' );
	wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/assets/css/bootstrap.min.css' );
	wp_enqueue_style( 'core-style', get_template_directory_uri() . '/assets/css/core-style.css' );
	wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/assets/css/font-awesome.min.css' );
	wp_enqueue_style( 'jquery-ui', get_template_directory_uri() . '/assets/css/jquery-ui.min.css' );
	wp_enqueue_style( 'nouislider', get_template_directory_uri() . '/assets/css/nouislider.css' );
	wp_enqueue_style( 'owl.carousel', get_template_directory_uri() . '/assets/css/owl.carousel.css' );
	wp_enqueue_style( 'responsive', get_template_directory_uri() . '/assets/css/responsive.css' );
	wp_enqueue_style( 'themify-icons', get_template_directory_uri() . '/assets/css/themify-icons.css' );

	wp_enqueue_script( 'active', get_template_directory_uri() . '/assets/js/jquery/jquery-2.2.4.min.js', array(), '1.0.0', true );
	wp_enqueue_script( 'popper', get_template_directory_uri() . '/assets/js/popper.min.js', array(), '1.0.0', true );
	wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array(), '1.0.0', true );
	wp_enqueue_script( 'plugins', get_template_directory_uri() . '/assets/js/plugins.js', array(), '1.0.0', true );
	wp_enqueue_script( 'active', get_template_directory_uri() . '/assets/js/active.js', array(), '1.0.0', true );
	
	
	

}