import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="rich-text"
export default class extends Controller {
  connect() {
    this.element.querySelectorAll('a').forEach(function(anchorTagElement) {
      if (anchorTagElement.host !== window.location.host) {
        anchorTagElement.classList.add('rich-text-link')
      }
    })

    this.element.querySelectorAll('pre').forEach(function(preElement) {
      preElement.classList.add('rich-text-code')
    })
  }
}
