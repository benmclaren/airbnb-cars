import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startDate", "endDate", "price", "pricePerDay" ]
  
  connect() {
    flatpickr(this.startDateTarget, {
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d",
    })
    flatpickr(this.endDateTarget, {
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d",
    })
  }

  calculateTotalPrice() {
    const startDateValue = new Date(this.startDateTarget.value);
    const endDateValue = new Date(this.endDateTarget.value);
    const pricePerDay = this.pricePerDayTarget.innerText
    const millisecondsPerDay = 24 * 60 * 60 * 1000;
    const numberOfDays = Math.round((endDateValue - startDateValue) / millisecondsPerDay);
    const totalPrice = numberOfDays * pricePerDay
    this.priceTarget.innerText= totalPrice
  }
}
