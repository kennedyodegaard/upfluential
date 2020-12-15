import Glide, { Arrows } from '@glidejs/glide'

const initGlide = () => {
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
    }).mount({ Arrows })
}

export { initGlide }
