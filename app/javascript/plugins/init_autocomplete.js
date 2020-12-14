import places from 'places.js';
import { addMarkersToMap, fitMapToMarkers } from './init_mapbox';

const addressInput = document.getElementById('event_location');

const initAutocomplete = () => {
  const placesAutocomplete = places({
      container: addressInput
    });

  placesAutocomplete.on('change', e => handleOnChange(e));

  const markers = [];

  const handleOnChange = (e) => {
    console.log(e);
    const suggestions = [{
      lat: e.suggestion.latlng.lat,
      lng: e.suggestion.latlng.lng,
      image_url: 'https://res.cloudinary.com/kennedyodegaard/image/upload/v1607525650/Grouppinpoint_i8hcsk.png'
    }]
    addMarkersToMap(suggestions)
    fitMapToMarkers(suggestions)
  }
}

export { initAutocomplete };
