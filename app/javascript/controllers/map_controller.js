import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Object
  }
  connect() {
    console.log("I am connected.")

    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersToMap()
    this.#fitToMap()
  }

  #addMarkersToMap() {
    console.log([ this.markersValue['lng'], this.markersValue['lat'] ])
    new mapboxgl.Marker()
      .setLngLat([ this.markersValue['lng'], this.markersValue['lat'] ])
      .addTo(this.map)
  }

  #fitToMap() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ this.markersValue['lng'], this.markersValue['lat'] ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 1000 })
  }

}
