import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["sidebarCol", "contentCol", "openSidebarButton", "sidebar"];

  openSidebar(event) {
    event.preventDefault();
    this.sidebarColTarget.classList.remove("col-md-1");
    this.sidebarColTarget.classList.add("col-md-2", "border-end");
    this.contentColTarget.classList.remove("col-md-11");
    this.contentColTarget.classList.add("col-md-10");
    this.openSidebarButtonTarget.classList.add("d-none");
    this.sidebarTarget.classList.remove("d-none");
  }
  closeSidebar(event) {
    event.preventDefault();
    this.sidebarColTarget.classList.remove("col-md-2", "border-end");
    this.sidebarColTarget.classList.add("col-md-1");
    this.contentColTarget.classList.remove("col-md-10");
    this.contentColTarget.classList.add("col-md-11");
    this.openSidebarButtonTarget.classList.remove("d-none");
    this.sidebarTarget.classList.add("d-none");
  }
}
