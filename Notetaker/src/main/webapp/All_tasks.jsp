<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Notes"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToDo: All Task List</title>
<%@include file="Import.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>
	</div>
	<div class='content text-uppercase m-3'>
		<h4>Assigned Task List</h4>
	</div>
	<div class="row m-3">
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Notes");
		List<Notes> list = q.list();
		for (Notes note : list) {
		%>
		<div class="card">
			<div class="card-header d-flex align-items-center gap-2">
				<%-- <img src="${pageContext.request.contextPath}/Images/post-it.png"
					alt="Notes Icon" style="max-width: 25px;"> --%>
				<%=note.getTitle()%>
			</div>
			<div class="card-body">
				<p class="card-text"><%=note.getContent()%></p>
				<%
				java.util.Date date = note.getAddDate();
				SimpleDateFormat formatter = new SimpleDateFormat("EEE, dd MMM yyyy");
				String formattedDate = formatter.format(date);
				%>
				<p class="text-primary"><%=formattedDate%></p>
				<a href="Updatetask.jsp?note_id=<%=note.getId()%>"
					class="btn btn-primary">Update</a> <a
					href="DeleteServlet?note_id=<%=note.getId()%>"
					class="btn btn-danger">Delete</a>

			</div>
		</div>

		<%
		}
		s.close();
		%>
	</div>
</body>
</html>



