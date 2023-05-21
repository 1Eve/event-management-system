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
        $curr_page = basename(get_permalink());

        if ($curr_page == 'register' || $curr_page == 'login'){
    ?>

    <nav class="bg-light">
        <h3>EVENT MANAGEMENT SYSTEM</h3>
    </nav>

    <?php
        } else{
    ?>

    <!-- navwalker -->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="<?php esc_attr_e('Toggle navigation', 'your-theme-slug'); ?>">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="http://localhost/eventmanagementsystem/">EVENT MANAGEMENT SYSTEM</a>
            <?php
            wp_nav_menu(
                array(
                    'theme_location' => 'primary',
                    'depth' => 2,
                    'container' => 'div',
                    'container_class' => 'collapse navbar-collapse',
                    'container_id' => 'bs-example-navbar-collapse-1',
                    'menu_class' => 'nav navbar-nav',
                    'fallback_cb' => 'WP_Bootstrap_Navwalker::fallback',
                    'walker' => new WP_Bootstrap_Navwalker(),
                )
            );
            ?>
        </div>
    </nav>
    
    <?php } ?>
