
const upcomingButton = document.querySelector(".dashboard-cards.upcoming");
const completedButton = document.querySelector(".dashboard-cards.completed");
const  upcomingEvents = document.querySelector(".upcoming-events");
const  completedEvents = document.querySelector(".completed-events");
const myEventsButton = document.querySelector(".dashboard-cards-my-event")
const myEvents = document.querySelector(".my-events")

const checkActivityStatus = () => {
    if (upcomingEvents) {
      upcomingButton.addEventListener('click', (event) =>  {
        upcomingEvents.classList.remove("d-none");
        completedEvents.classList.add("d-none");
        completedButton.classList.add("disable")
        upcomingButton.classList.remove("disable")
        myEvents.classList.add("d-none");
        myEventsButton.classList.add("disable");
      });

     completedButton.addEventListener('click', (event) =>  {
        completedEvents.classList.remove("d-none");
        upcomingEvents.classList.add("d-none");
        upcomingButton.classList.add("disable")
        completedButton.classList.remove("disable")
        myEvents.classList.add("d-none");
        myEventsButton.classList.add("disable");
    });

     myEventsButton.addEventListener('click', (event) => {
      myEvents.classList.remove("d-none");
      myEventsButton.classList.remove("disable");
      completedButton.classList.add("disable");
      completedEvents.classList.add("d-none");
      upcomingEvents.classList.add("d-none");
      upcomingButton.classList.add("disable")
     });
    }
  }

  export { checkActivityStatus };
