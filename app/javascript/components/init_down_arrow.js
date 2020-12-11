const downArrow = document.getElementById("more-categories");
const categories = document.querySelectorAll(".category-group");
const initDownArrow = () => {
  if (downArrow) {
    downArrow.addEventListener('click', (event) => {
      categories.forEach((category) => {
        category.classList.toggle("hide");
      });
      event.currentTarget.classList.toggle("fa-chevron-up")
    });
  }
}

export {initDownArrow}
