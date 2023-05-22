<?php

function eventtheme_script_enqueue(){
    wp_enqueue_style('customstyle', get_template_directory_uri().'/custom/custom.css', [], '3.1.1', 'all');
    wp_enqueue_script('customjs', get_template_directory_uri(). '/custom/custom.js',[], '1.0.0', true);

    // Using bootstrap
    wp_register_style('bootstrapcss', 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css', [], '5.2.3', 'all');

    wp_enqueue_style('bootstrapcss');

    wp_register_script('jsbootstrap','https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js', [], '5.2.3', false);
    wp_enqueue_script ('jsbootstrap');
}

add_action('wp_enqueue_scripts', 'eventtheme_script_enqueue');

function eventtheme_setup(){
    //Add Menu
add_theme_support('menus');
register_nav_menu('primary', 'Primary Header');
register_nav_menu('secondary', 'Footer Navigation');
}

//introduce navwalker
// navwalker
if (!file_exists(get_template_directory() . '/class-wp-bootstrap-navwalker.php')) {
    return new WP_Error('class-wp-bootstrap-navwalker-missing', __('It appears the class-wp-bootstrap-navwalker.php file may be missing.', 'wp-bootstrap-navwalker'));
} else {
    require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';
}

add_action('init', 'eventtheme_setup');

/**
 * theme support
 */

 add_theme_support('custom-background');
 add_theme_support('custom-header');
 add_theme_support('post-thumbnails');
 
 
 //declare global variables
 
 global $successmessage;
 $successmessage;
 
 global $errormessage;
 $errormessage;

 function get_current_user_details()
{
    $current_user = [];
    $user = wp_get_current_user();
    $current_user['email'] = $user->user_email;
    $id = $user->ID;
    $current_user['id'] = $user->ID;

    if (!current_user_can('manage_options')) {
        $user_meta = get_user_meta($id);
        $fullname = $user_meta['fullname'][0];
        $current_user['fullname'] = $fullname;

        $current_user['phonenumber'] = $user_meta['phonenumber'][0];
    } else {
        $current_user['fullname'] = 'Admin';
        $current_user['phonenumber'] = 'N/A';
    }
    return $current_user;
}