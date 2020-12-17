const hiddenEvents = document.querySelector(".hidden-events");

const showEvents = () => {
  if (hiddenEvents) {
    const hiddenButtons = document.querySelectorAll("#more-events-button");
    hiddenButtons.forEach((hideButton) => {
      hideButton.addEventListener('click', (event) => {
        console.log('BTN: ', event.currentTarget)

        console.log('PREV: ', event.currentTarget.previousElementSibling)

        event.currentTarget.previousElementSibling.classList.toggle("d-none")
        // event.currentTarget.innerText = "Less Events";
      })
    })
  }
};

export { showEvents };
