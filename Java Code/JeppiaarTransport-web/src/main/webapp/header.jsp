<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>

</head>
<body>
 <nav class="light-blue lighten-1" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="home.jsp" class="brand-logo">Transport Management</a>
      <ul class="right hide-on-med-and-down">
       <li><a href="../routes">View Routes</a></li>
       <li><a href="../viewroutemap.jsp">View Route Map</a></li>
        <li><a href="services.jsp">Services</a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><a href="../routes">View Routes</a></li>
        <li><a href="../viewroutemap.jsp">View Route Map</a></li>
         <li><a href="services.jsp">Services</a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
        
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
 
</body>
</html>