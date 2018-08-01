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

	wp_enqueue_script( 'jquery', get_template_directory_uri() . '/assets/js/jquery/jquery-2.2.4.min.js', false, '1.0.0', false );
	wp_enqueue_script( 'popper', get_template_directory_uri() . '/assets/js/popper.min.js', array(), '1.0.0', true );
	wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array(), '1.0.0', true );
	wp_enqueue_script( 'plugins', get_template_directory_uri() . '/assets/js/plugins.js', array(), '1.0.0', true );
	wp_enqueue_script( 'active', get_template_directory_uri() . '/assets/js/active.js', array(), '1.0.0', true );
	wp_enqueue_script( 'user', get_template_directory_uri() . '/assets/js/user.js', array(), '1.0.0', true );	

}

register_nav_menus(
	array(
		'head_menu' => ' Топ меню',
		// 'side_menu' => 'Левый сайдбар'
	)
);

// Register Custom Post Type
function products_post_type() {

	$labels = array(
		'name'                  => _x( 'Совместные', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'СП', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Совместные', 'text_domain' ),
		'name_admin_bar'        => __( 'СП', 'text_domain' ),
		'archives'              => __( 'Item Archives', 'text_domain' ),
		'attributes'            => __( 'Item Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Product:', 'text_domain' ),
		'all_items'             => __( 'Все Совместные', 'text_domain' ),
		'add_new_item'          => __( 'Добавит новое СП', 'text_domain' ),
		'add_new'               => __( 'Новое СП', 'text_domain' ),
		'new_item'              => __( 'New Item', 'text_domain' ),
		'edit_item'             => __( 'Редактировать СП', 'text_domain' ),
		'update_item'           => __( 'Update Product', 'text_domain' ),
		'view_item'             => __( 'View Product', 'text_domain' ),
		'view_items'            => __( 'View Items', 'text_domain' ),
		'search_items'          => __( 'Search products', 'text_domain' ),
		'not_found'             => __( 'No products found', 'text_domain' ),
		'not_found_in_trash'    => __( 'No products found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into item', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this item', 'text_domain' ),
		'items_list'            => __( 'Items list', 'text_domain' ),
		'items_list_navigation' => __( 'Items list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter items list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Product', 'text_domain' ),
		'description'           => __( 'Product information pages.', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail', 'comments', 'custom-fields' ),
		'taxonomies'            => array( 'category', 'post_tag' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'product', $args );

}
add_action( 'init', 'products_post_type', 0 );