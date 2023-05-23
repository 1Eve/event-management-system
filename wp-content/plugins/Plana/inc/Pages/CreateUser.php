<?php

/**
 * @package PlanaPlugin
 */

namespace Inc\Pages;


class CreateUser
{
    public function register()
    {
        $this->create_table_to_db();
        $this->add_user_to_db();
        $this->update_user_info();
    }

    function create_table_to_db()
    {

        global $wpdb;

        $table = $wpdb->prefix . 'userinfo';

        $user_data = "CREATE TABLE IF NOT EXISTS " . $table . "(
            id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
            fullname text NOT NULL,
            email text NOT NULL,
            phonenumber text NOT NULL,
            password text NOT NULL
        );";
        require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
        dbDelta($user_data);
    }

    function add_user_to_db()
    {
        if (isset($_POST['register'])) {
            $info = [
                'fullname' => $_POST['fullname'],
                'email' => $_POST['email'],
                'phonenumber' => $_POST['phonenumber'],
                'password' => $_POST['password']
            ];

            global $wpdb;
            global $successmessage;
            global $errormessage;

            $successmessage = false;
            $errormessage = false;

            $table = $wpdb->prefix . 'userinfo';

            
                $answ = $wpdb->insert($table, $info, $format = NULL);

                if ($answ == true) {
                    $successmessage = true;

                    $info['fullname'] = '';
                    $info['email'] = '';
                    $info['phonenumber'] = '';
                    $info['password'] = '';
                } else {
                    $errormessage = true;
                }
            }
    }

    function update_user_info()
    {
        if (isset($_POST['updatebtn'])) {
            global $wpdb;
            global $successmessage;
            global $errormessage;

            $successmessage = false;
            $errormessage = false;


            $new_user_data = [
                'fullname' => $_POST['fullname'],
                'email' => $_POST['emailnew'],
                'phonenumber' => $_POST['phonenumber'],
                'password' => $_POST['password'],
            ];

            $table = $wpdb->prefix . 'userinfo';

            $user_email = $_GET['user_email'];
            $condition = ['email' => $user_email];

            $result = $wpdb->update($table, $new_user_data, $condition);

            if ($result) {
                $successmessage = true;
            } else {
                $errormessage == true;
            }
        }
    }


}
