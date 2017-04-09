<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
      <li><a href="../route">ROUTE CHECKER</a></li>
                  <li><a href="../routecheck.jsp">ROUTE DISTANCE</a></li>
      
            <li><a href="../addroute.jsp">ADD A ROUTE</a></li>
                    <li><a href="../admin">ADMIN VIEW ROUTES</a></li>
       
      <li><a href="../deleteroute.jsp">DELETE A ROUTE</a></li>
      <li><a class="dropdown-button" href="#!" data-activates="dropdown1">UPDATE<i class="material-icons right">arrow_drop_down</i></a></li>
        <li><a href="/admin/logout">LOGOUT</a></li>   
    </ul>
  </div>
</nav>
</div>	
<main>

			<table class="responsive-table highlight">
			<thead>
<th>Boarding Point</th>
<th>Student Count</th>
</thead>
<c:forEach var="c" items="${route_list}" varStatus="i">

<tbody>
			<tr>
			<td>${c.pointName}</td>
			<td>${c.studentCount}</td>
			</tr>
				</c:forEach>
				</tbody>
  			</table>
      
            
</main>
		<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>