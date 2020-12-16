import Glide from '@glidejs/glide'

const initGlide = () => {
  if (document.querySelector('.glide')) {
    new Glide('.glide', {
      type: 'carousel',
      animationDuration: 1000,
      autoplay: 3000,
      startAt: 0,
      perView: 1,
        // set a value to show the previous and next slides peeking in
      peek: {
        before: 0,
        after: 50
      },
      gap: 10
    }).mount()
  }
}

export { initGlide }
