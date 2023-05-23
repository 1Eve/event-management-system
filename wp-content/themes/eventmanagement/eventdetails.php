<?php get_header(); ?>
<?php
/**
 * Template Name: Event Details
 */
?>
<?php

global $wpdb;

$event_id = $_GET['event_id'];
$table = $wpdb->prefix . 'events';

$data = $wpdb->get_results("SELECT * FROM $table WHERE event_id = '$event_id' ");
$bought_tickets = $wpdb->get_results("SELECT * FROM $table WHERE event_id = '$event_id' ");

$event = $data[0];

?>

<section class="container-description" id="container-description">
    <div class="event-description">
        <div class="event-img" style="
    background-image: url(<?php echo $event->event_poster; ?>);
    max-width: 100%;
    height: auto; background-size: cover;
  background-repeat: no-repeat;
  background-position: center 
">
        </div>
        <div class="event-info">
            <h5>Event Info</h5>
            <hr>
            <h4>
                <?php echo $event->event_name; ?>
            </h4>
            <p class="host">Hosted by PATRICK MWANIKI</p>
            <p>Put on your dancing shoes and join us for a memorable evening with Miguel Paley. Sample some Danish
                hotdogs and ex-Yugoslavian BBQ, and enjoy a glass of wine at the firepit.</p>
            <div class="event-date">
                <ion-icon class="icon" name="calendar-outline"></ion-icon>
                <p>Wed, 7 Jun 2023, 16:30</p>
            </div>
            <div class="event-location">
                <ion-icon class="icon" name="location-outline"></ion-icon>
                <p><a href="https://www.bomasofkenya.co.ke/">Bomas of Kenya</a>, Nairobi</p>
            </div>
            <div class="TicketButton">
                <button class="BookTicket" name="BookTicket" id="BookTicket">Book Your Ticket Now<i
                        class="icon bi bi-box-arrow-up-right"></i></button>

            </div>
        </div>
    </div>
    <section id="popup" class="section-pricing">
        <div id="popupContent" class="hidden">
            <span class="close">&times;</span>
            <div>
                <h4>Check Out</h4>
                <p>Wed, 7 Jun 2023, 16:30</p>
                <p><a href="">Bomas of Kenya</a>, Nairobi</p>
                <p>MIGUEL PALEY LIVE IN CONCERT</p>
                <div class="pricing-grid">
                    <div class="pricing-header">
                        <p>TICKET</p>
                        <h6>REGULAR TICKETS</h6>
                        <h6>VIP TICKETS</h6>
                        <h6>VVIP TICKETS</h6>
                        <h6>TOTAL AMOUNT</h6>
                        <h6 class="showtickets"></h6>
                      
                    </div>
                    <div>
                        <div class="tickets">
                            <div>
                                <p>PRICE</p>
                                <P>TOTAL</P>
                            </div>
                            <div class="regular-tickets">
                                <p>Ksh <span>2,500</span></p>
                                <div class="ticket-counter">
                                    <button class="subtract-btn" onclick="subtractRegularTicket()">-</button>
                                    <span class="regular-ticket-count">0</span>
                                    <button class="add-btn" onclick="addRegularTicket()">+</button>
                                </div>
                            </div>

                            <div class="vip-tickets">
                                <p>Ksh <span>5,000</span></p>
                                <div class="ticket-counter">
                                    <button class="subtract-btn" onclick="subtractVipTicket()">-</button>
                                    <span class="vip-ticket-count">0</span>
                                    <button class="add-btn" onclick="addVipTicket()">+</button>
                                </div>
                            </div>

                            <div class="vvip-tickets">
                                <p>Ksh <span>10,000</span></p>
                                <div class="ticket-counter">
                                    <button class="subtract-btn" onclick="subtractVvipTicket()">-</button>
                                    <span class="vvip-ticket-count">0</span>
                                    <button class="add-btn" onclick="addVvipTicket()">+</button>
                                </div>
                            </div>
                            
                            <div class="amounts-section">
                                <span id="total-ticket-amount">0</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="booknow">
            <span> <h6>Total Tickets:</h6></span>
            <?php if(is_user_logged_in()){
            ?>

<form action="" method="post">
    <input type="hidden" class="hiddentickets" name="bought_tickets" value="<?php echo $event->bought_tickets ? $event->bought_tickets:0; ?>">
    <input type="submit" class="BookNow" name="BookNow" id="BookNow" value="Book Now">

</form>
            <?php
            } else {?>
<a href="">

<input type="submit" name="BookNow" id="BookNow" value="Login">

</a>
                
           <?php }
            
            
            ?>
        </div>
    </section>
    <div class="more-events">

    </div>
</section>
<script>

    let regularTicketCount = 0;
    let vipTicketCount = 0;
    let vvipTicketCount = 0;
    let numberoftickets = Number(document.querySelector('.hiddentickets').value);

    

    function addRegularTicket() {
        regularTicketCount++;
        updateTicketCount();
        updateTotalAmount();
    }

    function subtractRegularTicket() {
        if (regularTicketCount > 0) {
            regularTicketCount--;
            updateTicketCount();
            updateTotalAmount();
        }
    }

    function addVipTicket() {
        vipTicketCount++;
        updateTicketCount();
        updateTotalAmount();
    }

    function subtractVipTicket() {
        if (vipTicketCount > 0) {
            vipTicketCount--;
            updateTicketCount();
            updateTotalAmount();
        }
    }

    function addVvipTicket() {
        vvipTicketCount++;
        updateTicketCount();
        updateTotalAmount();
    }

    function subtractVvipTicket() {
        if (vvipTicketCount > 0) {
            vvipTicketCount--;
            updateTicketCount();
            updateTotalAmount();
        }
    }

    function updateTicketCount() {
        const regularTicketCountElement = document.querySelector('.regular-ticket-count');
        regularTicketCountElement.textContent = regularTicketCount;

        const vipTicketCountElement = document.querySelector('.vip-ticket-count');
        vipTicketCountElement.textContent = vipTicketCount;

        const vvipTicketCountElement = document.querySelector('.vvip-ticket-count');
        vvipTicketCountElement.textContent = vvipTicketCount;

        let totaltickets= vvipTicketCount+vipTicketCount+regularTicketCount+numberoftickets;
        document.querySelector('.BookNow').innerHTML=totaltickets;
        document.querySelector('.hiddentickets').value = totaltickets;
        console.log(totaltickets);
    }
    updateTicketCount();

    function updateTotalAmount() {
        const regularTicketPrice = 2500;
        const vipTicketPrice = 5000;
        const vvipTicketPrice = 10000;

        const totalRegularAmount = regularTicketCount * regularTicketPrice;
        const totalVipAmount = vipTicketCount * vipTicketPrice;
        const totalVvipAmount = vvipTicketCount * vvipTicketPrice;

        const totalAmountElement = document.getElementById('total-ticket-amount');
        const totalAmount = totalRegularAmount + totalVipAmount + totalVvipAmount;
        totalAmountElement.textContent = totalAmount;
    }

    // Book Ticket Button
    let btn = document.getElementById('BookTicket');
    let popup = document.getElementById('popup');
    let span = document.getElementsByClassName('close')[0];
    let body = document.getElementById('container-description');

    btn.onclick = function () {
        popup.style.display = 'block';
    };

    span.onclick = function () {
        popup.style.display = 'none';
    };

    // Calculate total tickets bought
    function calculateTotalTickets() {
        const totalTickets = regularTicketCount + vipTicketCount + vvipTicketCount;
        return totalTickets;
    }

    let bookNowBtn = document.getElementById('BookNow');
    bookNowBtn.addEventListener('click', function () {
        const totalTicketsBought = calculateTotalTickets();
        console.log('Total tickets bought:', totalTicketsBought);
    });

</script>

<?php get_footer(); ?>