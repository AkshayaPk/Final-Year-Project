<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div>
<ul id="dropdown1" class="dropdown-content">
  
  <li><a href="../updateroutename.jsp">UPDATE ROUTE NAME</a></li>
    <li class="divider"></li>
  
  <li><a href="../updateroutebusno.jsp">UPDATE ROUTE BUS NO</a></li>
  <li class="divider"></li>
  <li><a href="../updaterouteintermediary.jsp">UPDATE INTERMEDIARY POINTS</a></li>
</ul>
<nav>
  <div class="nav-wrapper">
    <a></a>
    <ul class="right hide-on-med-and-down">
      <!-- Dropdown Trigger -->
            <li><a href="../addroute.jsp">ADD A ROUTE</a></li>
                         <li><a href="../admin">ADMIN VIEW ROUTES</a></li>
            
             <li><a href="../route">ROUTE CHECKER</a></li>
                  <li><a href="../routecheck.jsp">ROUTE DISTANCE</a></li>
       
      <li><a href="../deleteroute.jsp">DELETE A ROUTE</a></li>
      <li><a class="dropdown-button" href="#!" data-activates="dropdown1">UPDATE<i class="material-icons right">arrow_drop_down</i></a></li>
        <li><a href="/admin/logout">LOGOUT</a></li>   
    </ul>
  </div>
</nav>
</div>	
<main>
<div class=container>
<form action="/admin/updaterouteintermediary" method="post">

Enter Bus Number :<input type="number" name="busno" required/>
Enter Intermediary 1 :<input type="text" name="ip1" required/>
Enter Intermediary 2 :<input type="text" name="ip2" required/>
Enter Intermediary 3 :<input type="text" name="ip3" required/>
Enter Intermediary 4 :<input type="text" name="ip4" required/>
Enter Intermediary 5 :<input type="text" name="ip5" required/>
Enter Intermediary 6 :<input type="text" name="ip6" required/>
<input type="submit" value="UPDATE" class="waves-effect waves-light btn"/>
</form>
</div>
</main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>