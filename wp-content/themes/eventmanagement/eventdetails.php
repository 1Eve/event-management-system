<?php get_header(); ?>
<?php
/**
 * Template Name: Event Details
 */
?>

<section class="container-description">
    <div class="event-description">
        <div class="event-img">
        </div>
        <div class="event-info">
            <h5>Event Info</h5>
             <hr>
            <h4>MIGUEL PALEY LIVE IN CONCERT</h4>
            <p class="host">Hosted by PATRICK MWANIKI</p>
            <p>Put on your dancing shoes and join us for a memorable evening with Miguel Paley. Sample some Danish
                hotdogs and ex-Yugoslavian BBQ, and enjoy a glass of wine at the firepit.</p>
            <div class="event-date">
                <ion-icon class="icon" name="calendar-outline" ></ion-icon>
                <p>Wed, 7 Jun 2023, 16:30</p>
            </div>
            <div class="event-location">
                <ion-icon class="icon" name="location-outline"></ion-icon>
                <p><a href="https://www.bomasofkenya.co.ke/">Bomas of Kenya</a>, Nairobi</p>
            </div>
            <form action="">
                <div class="BookTicket">
                    <input type="submit" name="BookTicket" id="BookTicket" value="Book Your Ticket">
                    <i class="icon bi bi-box-arrow-up-right"></i>
                </div>
            </form>
        </div>
    </div>
    <section class="div-pricing" >
        <div id="popup" class="hidden">
        <span id="close-btn">&times;</span>
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
                        <h6>TOTAL TICKETS</h6>
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
                                <span>Total Tickets:</span>
                                <span id="total-ticket-amount">0</span>
                            </div>
    
                        </div>
    
                    </div>
                </div>
    
            </div>
        </div>
    </section>
    <div class="more-events">

    </div>
</section>
<script>
    let regularTicketCount = 0;
    let vipTicketCount = 0;
    let vvipTicketCount = 0;

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
    }

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

    document.getElementById('BookTicket').addEventListener('click', function() {
  document.getElementById('popup').classList.remove('hidden');
});

document.getElementById('close-btn').addEventListener('click', function() {
  document.getElementById('popup').classList.add('hidden');
});


</script>
<?php get_footer(); ?>