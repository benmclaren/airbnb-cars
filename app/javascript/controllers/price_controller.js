import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  connect() {
    console.log('connected from price controller');
  }
}
