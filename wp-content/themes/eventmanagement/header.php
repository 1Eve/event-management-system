<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <title>Event Management System</title>
    <?php wp_head(); ?>
</head>

<?php
if (is_front_page()) :
    $custom_classes = ['event-home-class', 'my-class-event'];
else :
    $custom_classes = ['other-event-class', 'event-other-class'];
endif;
?>

<body <?php body_class($custom_classes); ?>>

<?php
if (is_front_page()) :
    $custom_classes = ['event-home-class', 'my-class-event'];
else :
    $custom_classes = ['other-event-class', 'event-other-class'];
endif;
?>

<body <?php body_class($custom_classes); ?>>

<?php
$curr_page = basename(get_permalink());
$logo = get_template_directory_uri() . "/assets/final design.png";
if ($curr_page == 'register' || $curr_page == 'login') :
    ?>

    <nav class="reg-title text-center pt-2 pb-2" style="background-color: #fff;">
        <a href="/eventmanagementsystem/"><img src="<?php echo $logo; ?>" class="logo" alt='logo' style="height: 10vh; cursor:pointer;" /></a>
    </nav>

<?php else :
    $fullname = '';
    $is_admin = false; 

    if (is_user_logged_in()) :
        $user = wp_get_current_user();
        $is_admin = current_user_can('manage_options');
        $fullname = $user->display_name;
       

        global $wpdb;
        $table = $wpdb->prefix . 'userinfo';
        $email = $user->user_email;

        if (!$is_admin) {
            $useremail = str_replace('"', '', $email);
            $useremail[0] = '*';
            $useremail[-1] = '*';
            $useremail = str_replace('*', '', $useremail);

            $user = $wpdb->get_row($wpdb->prepare("SELECT * FROM $table WHERE email = '$useremail'"));
        }
    endif;
    ?>
<?php
$logo = get_template_directory_uri() . "/assets/final design.png";
?>

    <nav class="main-nav">
        <div class="plana-navbar">
        <a href="/eventmanagementsystem/"><img src="<?php echo $logo; ?>" class="logo" alt='logo' style="height: 10vh; cursor:pointer;" /></a>
            <!-- <a class="display-6" href="/eventmanagementsystem/">Plana</a> -->
            <?php  //var_dump();?>
        </div>
        <div class="d-flex flex-row justify-content-around align-items-center gap-2 w-25">
            <div class="account pt-2 pb-2">
                <ion-icon name="person-outline"></ion-icon>
                <a href="eventmanagementsystem/account/"><?php echo $fullname==''? 'My': $fullname."'s"; ?> Account</a>
            </div>
            <div class="signout">
                <?php
                if ($is_admin) {
                    echo '<a href="/eventmanagementsystem/">Sign Out</a>';
                } else {
                    if (isset($_COOKIE['currentuser']) && $_COOKIE['currentuser']) {
                        echo '<a href="eventmanagementsystem/login">Sign Out</a>';
                    } else {
                        echo '<a href="eventmanagementsystem/login">Sign In</a>';
                    }
                }
                ?>
            </div>
        </div>
    </nav>

<?php endif; ?>
