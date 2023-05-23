<?php
/**
 * Template Name: Account Update Template
 */

 global $wpdb;
 $email = $_COOKIE['currentuser'];
 $table = $wpdb->prefix . 'userinfo';
 
 // $current_user = wp_get_current_user();
 // echo($email);
 $useremail = str_replace('"','',$email);
 $useremail[0]='*';
 $useremail[-1]='*';
 $useremail = str_replace('*','',$useremail);
 // echo '<br/>';
 // ECHO($useremail);
 $user = $wpdb->get_row($wpdb->prepare("SELECT * FROM $table WHERE email = '$useremail'"));
 
 if(isset($_POST['update'])){
     $fullname = $_POST['fullname'];
     $email = $_POST['email'];
     $phonenumber = $_POST['phonenumber'];
     $password = $_POST['password'];
 
     $wpdb->update(
         $table,
         array(
             'fullname' => $fullname,
             'email' => $email,
             'phonenumber' => $phonenumber,
             'password' => $password
         ),
         array(
             'email' => $user->email
         )
     );
 
     wp_redirect('/eventmanagementsystem/account/');
 }

get_header();


    
?>

<div class="container-fluid bg-light pt-5 pb-5">
    <div class="row justify-content-center align-items-center h-100">
        <div class="col-lg-6 col-md-8 col-sm-10 bg-white pt-2 pb-2 ms-4 shadow-sm rounded-1 border mb-4">
            <div>
                <h5 class="fw-bold text-center">Update Account Information</h5>
            </div>
            <hr class="opacity-25">
            <div class="d-flex flex-column">
                <form action="<?php echo esc_url($_SERVER['REQUEST_URI']); ?>" method="post">
                    <div class="form-group mb-2">
                        <label for="fullname" class="mb-1">Full Name</label>
                        <input type="text" class="form-control" name="fullname" value="<?php echo $user->fullname; ?>" required>
                    </div>
                    <div class="form-group mb-2">
                        <label for="email" class="mb-1">Email</label>
                        <input type="email" class="form-control" name="email" value="<?php echo $user->email; ?>" required>
                    </div>
                    <div class="form-group mb-2">
                        <label for="phonenumber" class="mb-1">Phone Number</label>
                        <input type="tel" class="form-control" name="phonenumber" value="<?php echo $user->phonenumber; ?>" required>
                    </div>
                    <div class="form-group mb-2">
                        <label for="password" class="mb-1">Password</label>
                        <input type="password" class="form-control" name="password" value="<?php echo $user->password; ?>" required>
                    </div>
                    <div class="d-flex justify-content-center align-items-center">
                        <button class="btn btn-primary" name="update" type="submit">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>
