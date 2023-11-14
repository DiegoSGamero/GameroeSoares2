import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="signup"
export default class extends Controller {
  static targets = ["user", "admin"]
  connect() {
    console.log('connected')
  }

  showuser() {
    this.userTarget.classList.remove("d-none")
    this.adminTarget.classList.add("d-none")
  }

  showadmin() {
    this.adminTarget.classList.remove("d-none")
    this.userTarget.classList.add("d-none")
  }
}
