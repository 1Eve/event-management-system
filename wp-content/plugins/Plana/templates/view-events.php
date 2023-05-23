<?php

global $wpdb;

$table_name = $wpdb->prefix . 'events';


$data = $wpdb->get_results("SELECT * FROM $table_name ");

// $bought = 

if ($data) {
  echo '<table class="table table-striped" style=" width: 85vw;  border-collapse: collapse;color: black; margin-top: 20px; border-shadow: 2px 2px 2px grey;">';
  echo '<thead>
            <tr>
            
              <th style="border: 1px solid black; padding: 10px;">Event Name</th>
              
              <th style="border: 1px solid black; padding: 10px;">Event Date</th>
              <th style="border: 1px solid black; padding: 10px;">Event Time</th>
              <th style="border: 1px solid black; padding: 10px;">Evet Location</th>
              <th style="border: 1px solid black; padding: 10px;">Event Description</th>
              <th style="border: 1px solid black; padding: 10px;">Total Tickets</th>
              <th style="border: 1px solid black; padding: 10px;">Bought Tickets</th>
              <th style="border: 1px solid black; padding: 10px;">Organizer Info</th>
              <th style="border: 1px solid black; padding: 10px;">Action</th>
            </tr>
          </thead>';
  echo '<tbody>';


  foreach ($data as $result) { ?>
    <tr>
      <!-- <td style="border: 1px solid black; padding: 10px;">
        <?php //echo $result->event_id ?>
      </td> -->
      <td style="border: 1px solid black; padding: 10px;">
        <?php echo $result->event_name ?>
      </td>
      <!-- <td style="border: 1px solid black; padding: 10px;">
        <img src="<?php //echo $result->event_poster ?>" style="width:10vw;height:20vh;">
      </td>
      <td style="border: 1px solid black; padding: 10px;">
        <?php //echo $result->event_category ?>
      </td> -->
      <td style="border: 1px solid black; padding: 10px;">
        <?php echo $result->event_date ?>
      </td>
      <td style="border: 1px solid black; padding: 10px;">
        <?php echo $result->event_time ?>
      </td>
      <td style="border: 1px solid black; padding: 10px;">
        <?php echo $result->event_location ?>
      </td>
      <td style="border: 1px solid black; padding: 10px;">
        <?php echo $result->event_desc ?>
        <td style="border: 1px solid black; padding: 10px;">
        <?php echo $result->event_tickets ?>
      </td> 
      <td style="border: 1px solid black; padding: 10px;">
        <?php echo $result->bought_tickets?>
      </td> 
      </td>
      <td style="border: 1px solid black; padding: 10px;">
        <?php echo $result->organizer_info ?>
      </td>

      <td style="border: 1px solid black; padding: 10px;display:flex;">
        <form method="POST">
          <input type="hidden" name="event_id" value="<?php echo $result->event_id; ?>" />
          <input type="submit" name="delete_event" value="Delete"
            style="background-color: #fd434c;color:white; border-radius:3px;padding:5px;border:none;" />
          <a href="<?php echo esc_url(add_query_arg('event_id', $result->event_id, 'admin.php?page=edit_events'))
            ?>"
            style="background-color: #006b0c;color:white; border-radius:3px;text-decoration:none;padding:5px;border: #006b0c;border-radius:3px;">Edit</a>
      </td>
    </tr>
    </form>

  <?php } ?>

  </tbody>
  </table>
<?php } else {
  echo 'No events found.';
}

global $wpdb;

$table_name = $wpdb->prefix . 'events';

if (isset($_POST['delete_event'])) {
  $event_id = $_POST['event_id'];
  $wpdb->delete($table_name, array('event_id' => $event_id));
  echo '<script> location.reload(); </script>';
}
?>