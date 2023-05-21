<?php
/**
 * @package PlanaPlugin
 */

namespace Inc\Api\CallBacks;

use Inc\Base\BaseController;

class AdminCallbacks extends BaseController{

    public function createEvent(){
        return require_once $this->plugin_path.'templates/createevent.php'; 
    }

    public function editEvent(){
        return require_once $this->plugin_path.'templates/edit-event.php';
    }

    public function viewEvents(){
        return require_once $this->plugin_path.'templates/view-events.php';
    }


}