
const upcomingButton = document.querySelector(".dashboard-cards.upcoming");
const completedButton = document.querySelector(".dashboard-cards.completed");
const  upcomingEvents = document.querySelector(".upcoming-events");
const  completedEvents = document.querySelector(".completed-events");

const checkActivityStatus = () => {
    if (upcomingEvents) {
      upcomingButton.addEventListener('click', (event) =>  {
        upcomingEvents.classList.toggle("d-none");
        completedEvents.classList.add("d-none");
        event.curretTarget.classList.remove(".dashboard-cards.upcoming")
        event.curretTarget.classList.add(".dashboard-cards.upcoming.disable")
      });

     completedButton.addEventListener('click', (event) =>  {
        completedEvents.classList.toggle("d-none");
        upcomingEvents.classList.add("d-none");
    });
    }
  }

  export { checkActivityStatus };