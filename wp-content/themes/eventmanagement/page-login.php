<?php

/**
 * Template Name: Login Template
 */

require_once('wp-load.php');

error_reporting(E_ALL);
ini_set('display_errors', 1);


// echo "Login Page";
if(isset($_POST['loginbtn'])){
        if(isset($_POST['email']) && isset($_POST['password'])){
            $email = $_POST['email'];
            $password = $_POST['password'];
            
            // var_dump($email, $password);
            global $wpdb;
            
            $table = $wpdb->prefix . 'userinfo';
            
            $current_user = $wpdb->get_row("SELECT * FROM $table WHERE email = '$email' AND password = '$password'");
            echo '<pre>';
            // var_dump($current_user->email);
            echo '</pre>';
            
            // $email_result = $wpdb->get_row("SELECT email from {$wpdb->prefix}userinfo WHERE email = '$email'");
            // $pwd_result = $wpdb->get_row("SELECT `password` from {$wpdb->prefix}userinfo WHERE email = '$email'");

            if($current_user){
                // if($password == $pwd_result->password){
                    // $current_user = $email_result->email;
                    
                    setcookie("currentuser", json_encode($current_user->email), time()+3600, "/eventmanagementsystem/", "", 0);


                    wp_redirect('/eventmanagementsystem/');

                // } else {
                //     echo '<script>alert("Invalid email or password")</script>';
                // }
            } else {
                echo '<script>alert("User not found")</script>';
            }
    
        } else {
            $err = "Please enter your email and password";
        }
    }
 ?>

<?php if (!empty($err)): ?>
    <div class="alert alert-danger"><?php echo esc_html($err); ?></div>
<?php endif; ?>

 <?php
  get_header();
 ?>

 <div class="bg-white">
    <div class="bg-light w-50 m-auto shadow-sm mt-5 round rounded-1 border p-4">
        <div class="text-center mb-3">
            <h3>Login</h3>
        </div>
        <form action="" method="post">
            <div class="form-group row mb-4">
                <label for="email" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="email" placeholder="email@example.com">
                </div>
            </div>
            <div class="form-group row mb-4">
                <label for="password" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" name="password" placeholder="Password">
                </div>
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <button class="btn text-white cursor-pointer" style="background-color: #7070E9;" name="loginbtn" type="submit">Login</button>
            </div>
            <div class="text-center mt-1">
                <p>Don't have an account? <a class="text-decoration-none" style="color: #7070E9;" href="/eventmanagementsystem/register">Register</a></p>  
            </div>
        </form>
    </div>
 </div>