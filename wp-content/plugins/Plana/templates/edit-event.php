<?php
$event_id = $_GET['event_id'];

// var_dump($ticket_id);

global $wpdb;
$table = $wpdb->prefix . 'events';

$data = $wpdb->get_results("SELECT * FROM $table WHERE event_id = '$event_id'");

var_dump($data);

?>


<div
    style="width:60%; display:flex; flex-direction:column; justify-content:center; align-items:center; margin-left: 13em; margin-top:1em;">
    <form method="post"
        style="width:40vw; box-shadow: 2px 2px 2px 2px grey;padding: 2em 2em; line-height: 2em; border-radius: 5px; background-color:#FFFFFF">

        <h1 style="text-align:center;">Edit An Event</h1>
        <div>
            <label>Event Name:</label><br>
            <input type="text" style="width:100%;" placeholder="Enter event name" value=""  name="edt_event_name" required>
        </div>

        <div>
            <label>Event Poster:</label><br>
            <input type="text" style="width:100%;" placeholder="Enter event name" value=""  name="edt_event_poster" required>
        </div>

        <label>Event Category:</label><br>
        <select class="form-select-lg" aria-label="Default select example" value=""  name="edt_event_category" style="margin-top:5px;width:100%;">

            <option selected style="width:100%;" name="event_category">choose category</option>
            <option >Sport Events</option>
            <option >Music Concerts</option>
            <option >Modelling</option>
            <option >Trips & Adventure</option>
        </select>

        <div>
            <label>Event Date:</label><br>
            <input type="date" style="width:100%;" placeholder="Event Date" value=""  name="edt_event_date" required>
        </div>

        <div>
            <label>Event Time:</label><br>
            <input type="text" style="width:100%;" placeholder="Event time" value="" name="edt_event_time" required>
        </div>

        <div>
            <label>Event Location:</label><br>
            <input type="text" style="width:100%;" placeholder="Enter event location" value=""  name="edt_event_location" required>
        </div>

        <div class="form-outline">
            <label>Event Description:</label><br>
            <textarea class="form-control" rows="4" type="text" style="width:100%;" value=""  placeholder="Enter event details"
                name="edt_event_desc" required></textarea>
        </div>

        <div>
            <label>Organizer Information </label><br>
            <input type="text" style="width:100%;" placeholder="Enter event organizer's information"
            value=""  name="edt_organizer_info" required><br>

        </div>


        <button type="submit"
            style="width:100%; background-color:#0071DC; color:white; padding:7px; border-radius: 5px; font-size: 14px; border: none; margin-top:10px;"
            name="updatebtn">Update</button>
    </form>
</div>