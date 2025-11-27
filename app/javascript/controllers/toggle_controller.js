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

  open(event) {
    event.preventDefault();
    this.openSidebarTarget.classList.add("d-none");
    this.sidebarTarget.classList.remove("d-none");
    this.element.classList.remove("col-md-1");
    this.element.classList.add("border-end col-md-2");

  }
  close(event) {
    event.preventDefault();
    this.openSidebarTarget.classList.remove("d-none");
    this.sidebarTarget.classList.add("d-none");
    this.element.classList.remove("border-end col-md-2");
    this.element.classList.add("col-md-1")
  }
}
