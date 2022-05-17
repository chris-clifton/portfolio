import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nav"
export default class extends Controller {
  static targets = ['mobileMenu']

  toggleMobileMenu() {
    if (this.mobileMenuTarget.classList.contains("hidden")) {
      this.mobileMenuTarget.classList.remove("hidden");
    } else {
      this.mobileMenuTarget.classList.add("hidden");
    }
  }
}
