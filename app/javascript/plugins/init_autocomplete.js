import places from 'places.js';

const initAutocomplete = () => {
  let addressInput;

  if (document.getElementById('booking_address')) {
    addressInput = document.getElementById('booking_address');
  } else if (document.getElementById('search_booking_address')){
    addressInput = document.getElementById('search_booking_address');
  } else {
    addressInput = document.getElementById('villain_address');
  }

  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
