<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    
    <title>Simple markers</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
 

  </head>
  <body>
 <jsp:include page="header.jsp"></jsp:include>
    <div id="map"></div>
    <script>

      function initMap() {
        var myLatLng = {lat: 12.8686, lng:80.2211};
        var thiruvallurlatlong ={lat : 13.1444 , lng:79.8940};
        var manavalannagar ={lat : 12.9331 , lng: 80.1579};
        var kallarai={lat:13.049514,lng:80.104778};
        var vellavudu={lat:13.0675 , lng:80.0356};
        var flightPlanCoordinates = [
            {lat: 12.8686, lng:80.2211},
            {lat :12.9331 , lng: 80.1579},
            {lat :13.049514,lng:80.104778},
            {lat: 13.0675 , lng:80.0356},
            {lat: 13.1444 , lng:79.8940}
          ];
        var flightPath = new google.maps.Polyline({
            path: flightPlanCoordinates,
            geodesic: true,
            strokeColor: '#FF0000',
            strokeOpacity: 1.0,
            strokeWeight: 2
          });

        var startImage = 'http://maps.google.com/mapfiles/ms/icons/red-dot.png';
        var intermediary = 'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png';
        var endHome = 'http://maps.google.com/mapfiles/ms/icons/green-dot.png';
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 9,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Jeppiaar Engineering College Start',
          icon: startImage
        });
        var marker = new google.maps.Marker({
        	position: vellavudu,
            map: map,
            title: 'Vellavudu',
            icon : intermediary
          });
        var marker = new google.maps.Marker({
        	position: thiruvallurlatlong,
            map: map,
            title: 'Thiruvallur Home',
            icon : endHome
          });
        var marker = new google.maps.Marker({
            position: manavalannagar,
            map: map,
            title: 'Manavalan Nagar',
            icon : intermediary
          });
        var marker = new google.maps.Marker({
            position: kallarai,
            map: map,
            title: 'Kallarai',
            icon : intermediary
          });
        flightPath.setMap(map);

      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8Nz4OK9OidMycdbPsz71Ka-8QxclxiW0&callback=initMap">
    </script>
     <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>