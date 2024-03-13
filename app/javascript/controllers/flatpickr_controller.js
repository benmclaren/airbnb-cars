import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startDate", "endDate" ]
  
  connect() {
    console.log('connected');
    flatpickr(this.startDateTarget, {})
    flatpickr(this.endDateTarget, {})
  }
}
