const setUpEventSearchPills = () => {
  if (document.querySelector(".event-category.pill-white")){
    const hiddenField = document.querySelector("input#category")
    const form = document.querySelector(".events-search-form")
    const whitePills = document.querySelectorAll(".event-category.pill-white")
    whitePills.forEach((pill) => {
      pill.addEventListener('click', () => {
        const category = pill.innerText
        hiddenField.value = category
        pill.classList.remove("pill-white")
        pill.classList.add("pill-purple")
        form.submit()
      })
    })

    const purplePills = document.querySelectorAll(".event-category.pill-purple")
    purplePills.forEach((pill) => {
      pill.addEventListener('click', () => {
        hiddenField.value = ""
        pill.classList.remove("pill-purple")
        pill.classList.add("pill-white")
        form.submit()
      })
    })
  }
}
export {setUpEventSearchPills}
