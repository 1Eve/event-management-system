<?php 

/**
 * Template Name: Account Update Template
 */
get_header(); ?>

<div class="bg-white">
    <div class="bg-light w-75 m-auto mt-5 rounded-1 round shadow-sm border p-4">
        <div class="text-center mb-2">
            <h3>Register</h3>
        </div>

        <form action="<?php echo esc_url($_SERVER['REQUEST_URI']); ?>" method="post">
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
</div>

<?php get_footer(); ?>