<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

  <script>
  $(document).ready(function(){
	    $('.tooltipped').tooltip({delay: 50});
	  });
	    
  </script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<main>
		
		<div>
		<table class="highlight bordered">
<thead>
<th>ROUTE</th>
<th>BUS NO</th>
<th>DEP DATE</th>
<th>DEP TIME</th>
</thead>
<c:forEach var="c" items="${ROUTE_LIST_BY_NAME}" varStatus="i">
						<tr >
							<td>${c.routeId.routeId.routeName}</td>
							<td> <a class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="${c.ip1}<br>${c.ip2}<br>${c.ip3}<br>${c.ip4}<br>${c.ip5}<br>${c.ip6}<br>" data-html="true">${c.routeId.busNo}</a>
							</td>
							
							<td>${c.routeId.departureDate}</td>
							<td>${c.routeId.departureTime}</td>
							
							
						</tr>
					</c:forEach>
</table>	
		</div>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>