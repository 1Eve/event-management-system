<?php

/**
 * Template Name: Login Template
 */

 // Check if user is already logged in
// if (is_user_logged_in()) {
//     wp_redirect(home_url()); // Redirect to home page
//     exit();
// }
 ?>

 <?php
    $err = '';

    if(isset($_POST['loginbtn'])){
        $email = $_POST['email'];
        $password = $_POST['password'];

    //     $user = wp_signon([
    //         'user_login' => $email,
    //         'user_pass' => $password
    //     ]);

        if(!is_wp_error($user)){
            wp_set_current_user($user->ID);
            wp_set_auth_cookie($user->ID);
            do_action('wp_login', $user->user_login, $user);
        
            wp_redirect(home_url());
            exit;
        } else {
            $err = "Invalid email or password";
        }
    }
 ?>
 <?php
//  get_header();
 ?>

 <div class="bg-white">
    <div class="bg-light w-50 m-auto shadow-sm mt-5 round rounded-1 border p-4">
        <div class="text-center mb-3">
            <h3>Login</h3>
        </div>
        <?php if (!empty($err)) : ?>
            <p class="error"><?php echo $err; ?></p>
        <?php endif; ?>

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
                <button class="btn btn-primary" name="loginbtn" type="submit">Login</button>
            </div>
            <div class="text-center mt-1">
                <p>Don't have an account? <a href="/eventmanagementsystem/register">Register</a></p>  
            </div>
        </form>
    </div>
 </div>