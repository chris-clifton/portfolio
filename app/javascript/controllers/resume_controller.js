import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="resume"
export default class extends Controller {
  static values = { url: String }

  download() {
    let button = document.getElementById("download-pdf-button");
    fetch(`${this.urlValue}`, {
      method: 'GET'
    }).then( res => res.blob() )
      .then( blob => {
        let file = window.URL.createObjectURL(blob);
        window.open(file, '_blank')
      });
  }
}
