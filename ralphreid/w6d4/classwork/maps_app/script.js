$(function(){

  var mapOptions = {
    zoom: 8,
    center: new google.maps.LatLng(51.508, -0.120),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  canvas = document.getElementById("googleMap");
  map = new google.maps.Map(canvas, mapOptions);

  function updateLocation(position) {
    var coords = position.coords;
    var latlng = new google.maps.LatLng(coords.latitude, coords.longitude);
    var marker = new google.maps.Marker({
      position: latlng,
      map: map
    })
    map.setCenter(latlng);
    map.setZoom(17);
  }

  function handleErrorLocation(error) {
    console.log(error);
  }

  $('#current_position').on('click', function() {
    if(navigator.geolocation){
      navigator.geolocation.getCurrentPosition(updateLocation, handleErrorLocation);
      navigator.geolocation.watchPosition(updateLocation, handleErrorLocation);
    } else {
      alert("I leave you in the 90's");
    }
  })

  // Autocomplete
  var infowindow = new google.maps.InfoWindow();
  var marker = new google.maps.Marker({
    map: map
  });

  var input = document.getElementById('autocomplete');
  var autocomplete = new google.maps.places.Autocomplete(input);

  autocomplete.bindTo("bounds", map);

  google.maps.event.addListener(autocomplete, 'place_changed', function(){
    var place = autocomplete.getPlace();
    marker.setVisible(false);
    infowindow.close();

    if(place.geometry.viewport){
      map.fitBounds(place.geometry.viewport)
    } else {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
    }

    marker.setIcon({
      url: place.icon
    });
    marker.setPosition(place.geometry.location);
    marker.setVisible(true);

    var address = "";
    if(place.address_components) {
      address = (place.address_components[0] && place.address_components[0].short_name || "")
    };

    infowindow.setContent("<div>"+place.name+"</div><br />" + address);
    infowindow.open(map, marker);

  });

  //Directions
  $('#directions_form').on('submit', function(){
    from = $('#directions_from').val();
    to = $('#directions_to').val();
    mode = $('#directions_mode').val();
    var request = {
      origin: from,
      destination: to,
      travelMode: google.maps.TravelMode[mode]
    }

    directionsService = new google.maps.DirectionsService();
    directionsDisplay = new google.maps.DirectionsRenderer();
    directionsDisplay.setMap(map);
    directionsService.route(request, function(response, status){
      if(status == google.maps.DirectionsStatus.OK){
        directionsDisplay.setDirections(response);
        $('#directions-panel').html('');
        directionsDisplay.setPanel(document.getElementById('directions-panel'));
      } else {
        alert('something went wrong !');
      }
    });
    return false;
  });

})




















