import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["openSidebar", "sidebar"];

  call(event) {
    event.preventDefault();
    this.sidebarTarget.classList.toggle("d-none");
    this.openSidebarTarget.classList.toggle("d-none");
    this.element.classList.toggle("border-end");
  }
}
