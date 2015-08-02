// alert("My example alert box.");
var map;
function initialize() {
  map = new google.maps.Map(document.getElementById('map-canvas'), {
    zoom: 2,
    center: {lat: 25, lng: 0},
    mapTypeId: google.maps.MapTypeId.TERRAIN
  });
}

google.maps.event.addDomListener(window, 'load', initialize);