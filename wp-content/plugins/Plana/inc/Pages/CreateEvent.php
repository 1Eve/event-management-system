<?php
/**
 * @package PlanaPlugin
 */

namespace Inc\Pages;

class CreateEvent
{
    public function register()
    {
        $this->create_table_to_db();
        $this->add_event_to_db();
        $this->update_event_to_db();
    
    }

    //CREATING THE TABLE IN DATABASE
    function create_table_to_db()
    {
        global $wpdb;

        $table_name = $wpdb->prefix . 'events';

        $event_details = "CREATE TABLE IF NOT EXISTS " . $table_name . "(
            event_id int(10) NOT NULL AUTO_INCREMENT,
            event_name text NOT NULL,
            event_poster text NOT NULL,  
            event_category text NOT NULL,
            event_date date NOT NULL,         
            event_time text NOT NULL,
            event_location text NOT NULL,
            event_desc text NOT NULL,
            organizer_info text NOT NULL,
            PRIMARY KEY(event_id)   
        );";

        require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
        dbDelta($event_details);
    }

    function add_event_to_db()
    {

        global $wpdb;
       
        $table_name = $wpdb->prefix . 'events';

        if (isset($_POST['submitbtn'])) {
            $data = [
                'event_name' => $_POST['event_name'],
                'event_poster' => $_POST['event_poster'],
                'event_category' => $_POST['event_category'],
                'event_date' => $_POST['event_date'],
                'event_time' => $_POST['event_time'],
                'event_location' => $_POST['event_location'],
                'event_desc' => $_POST['event_desc'],
                'organizer_info' => $_POST['organizer_info'],
            ];

            $results = $wpdb->insert($table_name, $data, $format = NULL);
     
        }
    }

    function update_event_to_db()
    {
        global $wpdb;
        
        $table_name = $wpdb->prefix . 'events';

        if (isset($_POST['updatebtn'])) {
            $data = [
                'event_name' => $_POST['edt_event_name'],
                'event_poster' => $_POST['edt_event_poster'],
                'event_category' => $_POST['edt_event_category'],
                'event_date' => $_POST['edt_event_date'],
                'event_time' => $_POST['edt_event_time'],
                'event_location' => $_POST['edt_event_location'],
                'event_desc' => $_POST['edt_desc_task'],
                'organizer_info' => $_POST['edt_organizer_info'],
            ];

            $event_id = $_GET['event_id'];
            $result = $wpdb->update($table_name, $data, array('event_id' => "$event_id"));

        }
    }
}