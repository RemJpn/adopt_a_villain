import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    // mapboxgl.accessToken = myApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/remjpn/ckhosquhb24zm19nu2jj4kcys'
    });
  }
};

export { initMapbox };
