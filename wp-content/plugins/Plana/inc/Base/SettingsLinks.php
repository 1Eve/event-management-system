<?php
/**
 * @package PlanaPlugin
 */

namespace Inc\Base;

class SettingsLinks extends BaseController{

    function register(){
        add_filter("plugin_action_links_".$this->plugin_basename, [$this, 'settings_link']);
    }

    public function settings_link($links){
        $CreateEventlink = '<a href="admin.php?page=create_event">Create Events </a>';

        array_push($links, $CreateEventlink);

        return $links;
    }
}