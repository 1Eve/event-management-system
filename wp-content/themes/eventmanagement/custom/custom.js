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

    let totaltickets = vvipTicketCount + vipTicketCount + regularTicketCount + numberoftickets;
    document.querySelector('.BookNow').innerHTML = totaltickets;
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