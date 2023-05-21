<?php 
// if (is_user_logged_in()){
//     wp_redirect(home_url());
//     exit;
//  } 
 ?>

<?php
/**
 * Template Name: Register Template
 */

?>

<?php
//     if (isset($_POST['register'])){
//         $fullname = $_POST['fullname'];
//         $email = $_POST['email'];
//         $phonenumber = $_POST['phonenumber'];
//         $password = $_POST['password'];
    
//         $user_id = wp_create_user($email, $password, $email);
    
//         if (!is_wp_error($user_id)){
//             // wp_update_user(array(
//             //     'ID' => $user_id,
//             //     'first_name' => $fullname,
//             //     'nickname' => $fullname
//             // ));
//             update_user_meta($user_id, 'fullname', $fullname);
//             update_user_meta($user_id, 'email', $email);
//             update_user_meta($user_id, 'phonenumber', $phonenumber);

//             $user = wp_signon([
//                 'user_login' => $email,
//                 'user_password' => $password
//             ]);
    
//             if (!is_wp_error($user)) {
//                 wp_set_current_user($user->ID);
//                 wp_set_auth_cookie($user->ID);
//                 do_action('wp_login', $user->user_login, $user);
    
    
//             wp_redirect(home_url());
//             exit;
//         } else {
//             $err = $user_id->get_error_message();
//         }
//     }
// }
?>

<?php //get_header(); ?>

<!-- <div class="bg-white">
    <div class="bg-light w-75 m-auto mt-5 rounded-1 round shadow-sm border p-4">
        <div class="text-center mb-2">
            <h3>Register</h3>
        </div>

        <?php //if (!empty($err)) : ?>
            <p class="form-error"><?php //echo esc_html($err); ?></p>
        <?php //endif; ?>

        <form action="<?php //echo esc_url($_SERVER['REQUEST_URI']); ?>" method="post">
            <div class="form-group mb-2">
                <label for="fullname" class="mb-1">Full Name</label>
                <input type="text" class="form-control" name="fullname" placeholder="Full Name" required>
            </div>
            <div class="form-group mb-2">
                <label for="email" class="mb-1">Email</label>
                <input type="email" class="form-control" name="email" placeholder="name@example.com" required>
            </div>
            <div class="form-group mb-2">
                <label for="phone_no" class="mb-1">Phone Number</label>
                <input type="tel" class="form-control" name="phonenumber" placeholder="Phone Number" required>
            </div>
            <div class="form-group mb-2">
                <label for="password" class="mb-1">Password</label>
                <input type="password" class="form-control" name="password" placeholder="Password" required>
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <button class="btn btn-primary" name="register" type="submit">Register</button>
            </div>
            <div class="text-center mt-1">
                <p>Already have an account? <a href="/eventmanagementsystem/login">Login</a></p>
            </div>
        </form>
    </div>
</div> -->

<?php //get_footer(); ?>
