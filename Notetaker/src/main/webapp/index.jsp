<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>ToDo: Making Tasks Memorable</title>
<%@include file="Import.jsp"%>

</head>
<body>
<%-- <%response.sendRedirect(request.getContextPath()+"/home") %> --%>
	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>
		<br>
		<div class="card py-5">
			<%-- <img alt="Notes Icon" class="img-fluid mx-auto"
				style="max-width: 300px;"
				src="${pageContext.request.contextPath}/Images/post-it.png"> --%>
				<h1><c:out value="${name }"></c:out></h1>
			<h2 class="text-primary text-uppercase text-center mt-3">Start
				Taking Your Notes</h2>
			<div class="btnctnr text-center">
				<a class="btn btn-primary text-center" href="Addtask.jsp">Start
					Here</a>
			</div>
		</div>
	</div>


</body>
</html>