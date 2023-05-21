<?php
/**
 * @package PlanaPlugin
 */

/*
    Plugin Name: Plana 
    Plugin URI: http://ticketing-system.org
    Description: A plugin to create, edit and view events  
    Version: 1.0.0
    Author: PPJ
    Author URI: http://ppj.org
    Licence: GPLv2 
*/

// security check
defined('ABSPATH') or die('Security Breach!!!');


// Checking if composer exists
if(file_exists(dirname(__FILE__).'/vendor/autoload.php')){
    require_once(dirname(__FILE__).'/vendor/autoload.php');

}

function activate_PlanaPlugin(){
    Inc\Base\Activate::activate();
}

function deactivate_PlanaPlugin(){
    Inc\Base\Deactivate::deactivate();
}

register_activation_hook(__FILE__, 'activate_PlanaPlugin');

register_deactivation_hook(__FILE__, 'deactivate_PlanaPlugin');


//Considering all classes as a service
if(class_exists('Inc\\Init')){
    Inc\Init::register_services(); 
}