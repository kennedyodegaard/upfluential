
const upcomingButton = document.querySelector(".dashboard-cards.upcoming");
const completedButton = document.querySelector(".dashboard-cards.completed");
const  upcomingEvents = document.querySelector(".upcoming-events");
const  completedEvents = document.querySelector(".completed-events");

const checkActivityStatus = () => {
    if (upcomingEvents) {
      upcomingButton.addEventListener('click', (event) =>  {
        upcomingEvents.classList.remove("d-none");
        completedEvents.classList.add("d-none");
        completedButton.classList.add("disable")
        upcomingButton.classList.remove("disable")
      });

     completedButton.addEventListener('click', (event) =>  {
        completedEvents.classList.remove("d-none");
        upcomingEvents.classList.add("d-none");
        upcomingButton.classList.add("disable")
        completedButton.classList.remove("disable")
    });
    }
  }

  export { checkActivityStatus };