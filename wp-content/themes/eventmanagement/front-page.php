<?php get_header();

global $wpdb;

$table = $wpdb->prefix . 'events';

$result = $wpdb->get_results("SELECT * FROM $table ");

// $carousel = $result;

$carousel = json_decode(json_encode($result), true);


?>
<section>

    <div id="carouselExampleAutoplaying" class="carousel slide mb-5 ms-3 "
        style="width:97%;border-radius:30px;margin-top:1em;height:30rem;box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;" data-bs-ride="carousel">
        <div class="carousel-inner h-100" style="border-radius:10px;">
            <div class="carousel-item active">
                <img src="<?php echo $event_poster = $carousel[0]['event_poster']; ?>" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="<?php echo $event_poster = $carousel[1]['event_poster']; ?>" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="<?php echo $event_poster = $carousel[2]['event_poster']; ?>" class="d-block w-100" alt="...">
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


    <div style="background-color:#ECF0F1 ;width:80%;height:fit-content;margin: 0 10%;border-radius:10px;box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;">
        <div class="Sport">
            <div class=""
                style="width: 100%;border-radius: 5px;background-color:#D4E6F1;color:black;padding:3px;font-weight:500;border-radius:10px;">
                <p>Sport Events</p>
            </div>
            <div style="display:flex;justify-content:center;flex-direction:row;height:15rem; width:100%;margin-bottom:10px;gap:8px;">
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[0]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[1]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[2]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[1]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
            </div>
        </div>

        <div class="Music">
            <div class=""
                style="width: 100%;border-radius: 5px;background-color:#D4E6F1;color:black;padding:3px;font-weight:500;border-radius:10px;">
                <p>Music Concerts</p>
            </div>

            <div style="display:flex;justify-content:center;flex-direction:row;height:15rem; width:100%;margin-bottom:10px;">
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[1]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[2]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[0]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[1]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
            </div>
        </div>

        <div class="Modelling">
            <div class=""
                style="width: 100%;border-radius: 5px;background-color:#D4E6F1;color:black;padding:3px;font-weight:500;border-radius:10px;">
                <p>Modelling </p>
            </div>

            <div style="display:flex;justify-content:center;flex-direction:row;height:15rem; width:100%;margin-bottom:10px;">
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[2]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[0]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[1]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[2]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
            </div>
        </div>

        <div class="Modelling">
            <div class=""
                style="width: 100%;border-radius: 5px;background-color:#E2F4FF;color:black;padding:3px;font-weight:500;border-radius:10px;">
                <p>Trips & Adventures </p>
            </div>

            <div style="display:flex;justify-content:center;flex-direction:row;height:15rem; width:100%;margin-bottom:10px;">
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[0]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[2]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[1]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
                <div style="">
                    <img src="<?php echo $event_poster = $carousel[0]['event_poster']; ?>" alt="break"
                        style="width:95%;height:100%;border-radius:5px;margin:5px;">
                </div>
            </div>
        </div>


    </div>

</section>



<?php get_footer(); ?>