import { Controller } from "@hotwired/stimulus"
import confetti from 'canvas-confetti'

// Connects to data-controller="likes"
export default class extends Controller {
  fire() {
    let element = document.getElementById("like-button")
    const { top, bottom, left, right } = element.getBoundingClientRect()

    confetti({
        origin: {
          // We calculate the center of the element by
          // averaging the left/right and top/bottom pixel values.
          
          // The confetti() function expects measurements to be
          // given from 0 to 1, where 0 is the top/left and 
          // 1 is the bottom/right of the page. Therefore we divide
          // by the the window's width or height to get a decimal
          // between 0 and 1.
          // Ref: https://benborgers.com/posts/confetti
          x: ((left + right) / 2) / window.innerWidth,
          y: ((top + bottom) / 2) / window.innerHeight
        }
    })
  }
}
