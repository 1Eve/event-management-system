<?php
/**
 * Template Name: Account Template
 */

// if (!is_user_logged_in()) {
//     wp_redirect(site_url('/login'));
//     exit();
//}

get_header();

global $wpdb;
$admin_table = $wpdb->prefix . 'users';
$table = $wpdb->prefix . 'userinfo';
$email = isset($_COOKIE['currentuser']) ? $_COOKIE['currentuser'] : '';

if (!empty($email)) {
    $useremail = str_replace('"', '', $email);
    $useremail[0] = '*';
    $useremail[-1] = '*';
    $useremail = str_replace('*', '', $useremail);
    $user = $wpdb->get_row($wpdb->prepare("SELECT * FROM $table WHERE email = '%s'", $useremail));

    if (current_user_can('manage_options')) {
        $admin_user = $wpdb->get_row("SELECT * FROM $admin_table WHERE ID = $user->ID");
        // $admin_user = get_current_user_details();
    }
}
?>

<div class="container-fluid bg-light pt-5 pb-5">
    <div class="row justify-content-center align-items-center h-100">
        <div class="col-lg-6 col-md-8 col-sm-10 bg-white pt-2 pb-2 ms-4 shadow-sm rounded-1 border mb-4">
            <div>
                <h5 class="fw-bold text-center">Account Information</h5>
            </div>
            <hr class="opacity-25">
            <div class="d-flex flex-column">
                <div class="d-flex justify-content-end pe-5 align-items-center gap-1">
                    <ion-icon name="pencil" style="color: #7070E9"></ion-icon>
                    <a href="eventmanagementsystem/account-update/" class="text-decoration-none cursor-pointer" style="color: #7070E9">Edit</a>
                </div>
                <div class="d-flex flex-row gap-5 align-items-center justify-content-start ps-3">
                    <div class="fw-bold text-start">
                        <ul class="list-unstyled">
                            <li>Name:</li>
                            <li>Email:</li>
                            <li>Phone:</li>
                            <li>Password:</li>
                        </ul>
                    </div>
                    <div class="text-start">
                        <ul class="list-unstyled">
                            <?php if (!empty($user)) : ?>
                                <li><?php echo $user->fullname; ?></li>
                                <li><?php echo $user->email; ?></li>
                                <li><?php echo $user->phonenumber; ?></li>
                                <li><?php echo $user->password; ?></li>
                            <?php else : ?>
                                <li>No user data found.</li>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>

            <?php if (current_user_can('manage_options') && !empty($admin_user)) : ?>
                <hr class="opacity-25">
                <div class="fw-bold text-center">Admin Information</div>
                <div class="d-flex flex-row gap-5 align-items-center justify-content-start ps-3">
                    <div class="fw-bold text-start">
                        <ul class="list-unstyled">
                            <li>Admin Name:</li>
                            <li>Admin Email:</li>
                        </ul>
                    </div>
                    <div class="text-start">
                        <ul class="list-unstyled">
                            <li><?php echo $admin_user->display_name; ?></li>
                            <li><?php echo $admin_user->user_email; ?></li>
                        </ul>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>
</div>

<?php get_footer(); ?>
