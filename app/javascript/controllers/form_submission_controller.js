import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-submission"
// Automatically send search as user types
// Ref: https://www.colby.so/posts/instant-search-with-rails-6-and-hotwire
export default class extends Controller {
  search() {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.element.requestSubmit()
    }, 200)
  }
}
