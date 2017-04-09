<html>
<head>
<!-- Latest compiled and minified CSS -->
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
  
          
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>
 <main class="card-panel lime lighten-5">
<div class="section no-pad-bot " id="index-banner">

    <div class="container">
    <div class="row">
    <form action="admin/login" class="col s12" method="post">
      <br><br>
      <h5 class="header center orange-text">ADMIN LOGIN</h5>
      <div class="row">
      <div class="input-field row s6">
          <input placeholder="Username" id="first_name" type="text" class="validate" name="username" required> 
        </div>
        <div class="input-field row s6">
          <input id="last_name" type="password" class="validate" name="password" placeholder="Password" required>
        </div>
      </div>
      <div class="center">
        <input type="submit" class="waves-effect waves-light btn"/>
      </div>
      
      <br><br>
</form>
    </div>
    
  </div>
 </div>
  
  </main>
 <jsp:include page="footer.jsp"></jsp:include>
  
 </body>

 </html>