import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  connect() {
    console.log("connected");
  }

  static targets = ["openSidebar", "sidebar"];

  call(event) {
    console.log("running toggle#call");
    event.preventDefault();
    console.log(this.element);
    console.log(this.openSidebarTarget)


    this.sidebarTarget.classList.toggle("d-none")
    this.openSidebarTarget.classList.toggle("d-none")
  }
}
