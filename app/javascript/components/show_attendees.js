const arrowsDown = document.querySelectorAll(".arrow-down-attendees");
const attendeesBox = document.querySelector(".event-attendees");
const eventCard = document.querySelector(".event-card-attendees");

const showAttendees = () => {
  if (attendeesBox) {
    arrowsDown.forEach((arrow) => {
      arrow.addEventListener('click', (event) => {
        event.currentTarget.nextElementSibling.classList.toggle('d-none');
      });
    });
  }
}


export { showAttendees };
