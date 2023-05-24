<?php get_header();
wp_head();
global $wpdb;

$table = $wpdb->prefix . 'events';

$music = $wpdb->get_results("SELECT * FROM $table WHERE event_category = 'Music Concerts' ");
$sports = $wpdb->get_results("SELECT * FROM $table WHERE event_category = 'Sport Events' ");
$model = $wpdb->get_results("SELECT * FROM $table WHERE event_category = 'Modelling' ");
$trips = $wpdb->get_results("SELECT * FROM $table WHERE event_category = 'Trips & Adventure' ");



$carousel = json_decode(json_encode($music), true);
$carousel1 = json_decode(json_encode($sports), true);
$carousel2 = json_decode(json_encode($model), true);
$carousel3 = json_decode(json_encode($trips), true);



?>
<section>

    <div>
        <img src="./assests/logo-event.png" alt="">
    </div>

    <div id="carouselExampleAutoplaying" class="carousel slide mb-3 "
        style="width:100%;height:28rem;box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;"
        data-bs-ride="carousel">
        <div class="carousel-inner h-100">
            <div class="carousel-item active">
                <img src="<?php echo $carousel[0]['event_poster']; ?>" class="d-block w-100" alt="...">
                <div class="hover-text">
                    <h6>
                        <?php echo $carousel[0]['event_name']; ?>
                    </h6>
                    <p>
                        <?php echo $carousel[0]['event_location']; ?>
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="<?php echo $carousel1[1]['event_poster']; ?>" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="<?php echo $carousel2[2]['event_poster']; ?>" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


    <div class=""
        style="background-color:#ECF0F1 ;width:80vw;height:auto;margin: 0 10%;border-radius:10px;box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;">
        <div class="Sport">
            <div class="" style="color:#6A359C;padding:3px;font-weight:500;margin-left:10px;">
                <h5>Sports</h5>
            </div>
            <div  style="display:flex;justify-content:center;flex-direction:row; width:100%;margin-bottom:10px;" >

                <?php
                for ($i = 0; $i < min(count($carousel1), 4); $i++) {
                    $sport = $carousel1[$i];
                    ?>
                    <form action="eventmanagementsystem/event-details/" method="get" class="hover-zoom resp-bg">
                        <input type="hidden" name="event_id" value="<?php echo $sport['event_id']; ?>">
                        <div class="effect2 resp-bg">
                            <button type="submit" style="background:none;border:none;padding:0;">
                                <img class="resp-img" src="<?php echo esc_url($sport['event_poster']); ?>"
                                    style="width:18vw;height:45vh;border-radius:5px;margin:10px;box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;">
                                <div class="hover-text" style="font-size:18px;">
                                    <h5>
                                        <?php echo $sport['event_name']; ?>
                                    </h5>
                                    <p>
                                        <?php echo $sport['event_date']; ?> <br>
                                        <?php echo $sport['event_time']; ?> <br>
                                        <?php echo $sport['event_location']; ?>
                                    </p>

                                </div>
                            </button>
                        </div>
                    </form>

                <?php } ?>

            </div>
        </div>

        <div class="Music">
            <div class="" style="color:#6A359C;padding:3px;font-weight:500;margin-left:10px;">
                <h5>Music Concerts</h5>
            </div>
            <div style="display:flex;justify-content:center;flex-direction:row; width:100%;margin-bottom:10px;">

                <?php
                for ($i = 0; $i < min(count($carousel), 4); $i++) {
                    $music = $carousel[$i];

                    ?>

                    <form action="eventmanagementsystem/event-details/" method="get">
                        <input type="hidden" name="event_id" value="<?php echo $music['event_id']; ?>">
                        <div class="effect2">
                            <button type="submit" style="background:none;border:none;padding:0;">
                                <img src="<?php echo esc_url($music['event_poster']); ?>"
                                    style="width:18vw;height:45vh;border-radius:5px;margin:10px;box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;">
                                <div class="hover-text" style="font-size:18px;">
                                    <h5>
                                        <?php echo $music['event_name']; ?>
                                    </h5>
                                    <p>
                                        <?php echo $music['event_date']; ?> <br>
                                        <?php echo $music['event_time']; ?> <br>
                                        <?php echo $music['event_location']; ?>
                                    </p>

                                </div>
                            </button>
                        </div>
                    </form>
                <?php } ?>
            </div>
        </div>


        <div class="Modelling">
            <div class="" style="color:#6A359C;padding:3px;font-weight:500;margin-left:10px;">
                <h5>Fashion and Modelling</h5>
            </div>
            <div style="display:flex;justify-content:center;flex-direction:row; width:100%;;margin-bottom:10px;">

                <?php
                for ($i = 0; $i < min(count($carousel2), 4); $i++) {
                    $model = $carousel2[$i];
                    ?>
                    <form action="eventmanagementsystem/event-details/" method="get">
                        <input type="hidden" name="event_id" value="<?php echo $model['event_id']; ?>">
                        <div class="effect2">
                            <button type="submit" style="background:none;border:none;padding:0;">
                                <img src="<?php echo esc_url($model['event_poster']); ?>"
                                    style="width:18vw;height:45vh;border-radius:5px;margin:10px;box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;">
                                <div class="hover-text " style="font-size:18px;">
                                    <h5>
                                        <?php echo $model['event_name']; ?>
                                    </h5>
                                    <p>
                                        <?php echo $model['event_date']; ?> <br>
                                        <?php echo $model['event_time']; ?> <br>
                                        <?php echo $model['event_location']; ?>
                                    </p>

                                </div>
                            </button>
                        </div>
                    </form>

                <?php } ?>

            </div>
        </div>

        <div class="Trips">
            <div class="" style="color:#6A359C;padding:3px;font-weight:500;margin-left:10px;">
                <h5>Trips & Adventures</h5>
            </div>
            <div style="display:flex;justify-content:center;flex-direction:row; width:100%;margin-bottom:10px;">

                <?php
                for ($i = 0; $i < min(count($carousel3), 4); $i++) {
                    $trip = $carousel3[$i];
                    ?>

                    <form action="eventmanagementsystem/event-details/" method="get">
                        <input type="hidden" name="event_id" value="<?php echo $trip['event_id']; ?>">
                        <div class="effect2">
                            <button type="submit" style="background:none;border:none;padding:0;">
                                <img src="<?php echo esc_url($trip['event_poster']); ?>"
                                    style="width:18vw;height:45vh;border-radius:5px;margin:10px;box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;">
                                <div class="hover-text" style="font-size:18px;">
                                    <h5>
                                        <?php echo $trip['event_name']; ?>
                                    </h5>
                                    <p>
                                        <?php echo $trip['event_date']; ?> <br>
                                        <?php echo $trip['event_time']; ?> <br>
                                        <?php echo $trip['event_location']; ?>
                                    </p>

                                </div>
                            </button>
                        </div>
                    </form>
                <?php } ?>
            </div>
        </div>


    </div>

</section>



<?php get_footer(); ?>