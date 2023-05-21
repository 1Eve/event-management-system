let ticketCount = 0;

function addTicket() {
  ticketCount++;
  updateTicketCount();
  updateTotalAmount();
}

function subtractTicket() {
  if (ticketCount > 0) {
    ticketCount--;
    updateTicketCount();
    updateTotalAmount();
  }
}

function updateTicketCount() {
  const ticketCountElement = document.querySelector('.ticket-count');
  ticketCountElement.textContent = ticketCount;
}

function updateTotalAmount() {
  const totalAmountElement = document.getElementById('total-ticket-amount');
  const ticketPrice = 10; // Specify the price per ticket
  const totalAmount = ticketCount * ticketPrice;
  totalAmountElement.textContent = totalAmount;
}
