import mapboxgl from 'mapbox-gl';

let map = null;

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

      const element = document.createElement('div');
      element.className = 'marker';

      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'cover';
      element.style.width = '17px';
      element.style.height = '25px';

    const mapboxMarker = new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])


    if (marker.infoWindow) {
      mapboxMarker.setPopup(popup)
    }

    mapboxMarker.addTo(map);
  });
};

const fitMapToMarkers = (markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(mapElement.dataset);
    if (markers && Array.isArray(markers)) {
      addMarkersToMap(markers);
      fitMapToMarkers(markers);
    }
  }
};


export { initMapbox, addMarkersToMap, fitMapToMarkers };
