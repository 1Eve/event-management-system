<?php

/**
 * @package $CreateEmployeePlugin
 */

namespace Inc\Pages;

use \Inc\Base\BaseController;
use \Inc\Api\SettingsApi;

use \Inc\Api\CallBacks\AdminCallbacks;

class AdminPage extends BaseController
{

    public $settings;

    public $event_id;

    public $callbacks;

    public $pages;

    public $subpages;

    function register()
    {
        $this->settings = new SettingsApi();

        $this->callbacks = new AdminCallbacks();

        $this->setPages();

        $this->setSubPages();

        $this->setPages();

        $this->settings->AddPages($this->pages)->HasSubPage('Create Event')->addSubPages($this->subpages)->register();
    }

    public function setPages()
    {
        $this->pages = [
            [
                'page_title' => 'Events',
                'menu_title' => 'Manage Events',
                'capability' => 'manage_options',
                'menu_slug' => 'manage_events',
                'callback' => [$this->callbacks, 'createEvent'],
                'icon_url' => 'dashicons-database-add',
                'position' => 200
            ]
        ];
    }
    public function setSubPages()
    {

        $this->subpages = [
            [
                'parent_slug' => 'manage_events',
                'page_title' => 'Edit Event',
                'menu_title' => 'Edit Event',
                'capability' => 'manage_options',
                'menu_slug' => 'edit_events',
                'callback' => [$this->callbacks, 'editEvent'],
            ],
            [
                'parent_slug' => 'manage_events',
                'page_title' => 'View Events',
                'menu_title' => 'View Events',
                'capability' => 'manage_options',
                'menu_slug' => 'view_events',
                'callback' => [$this->callbacks, 'viewEvents'],
            ]
        ];
    }


}