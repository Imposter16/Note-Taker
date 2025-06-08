<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Notes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToDo: Updating Task</title>
<%@include file="Import.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>
		<%
		int noteid = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Notes note = (Notes) s.get(Notes.class, noteid);
/* 		response.sendRedirect("All_tasks.jsp"); */
		%>
		<form action="UpdateServlet" method="post">
		<h4 class="m-3">Edit Your Notes:</h4>
		<br>
		<input class="m-3" value="<%= note.getId() %>" name="taskId" type="hidden" />

			<div class="mb-3 p-2">
				<label for="titleinput" class="form-label">Task Title</label> 
				<input
					name="titleinput" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter ToDo's Title here" required value="<%= note.getTitle() %>" />
				<div id="titleinput" class="form-text">We'll never share your
					TODO details with anyone else.</div>
			</div>

			<div class="mb-3 p-2">
				<label for="content" class="form-label">Task Content</label>
				<textarea name="content" id="content"
					placeholder="Enter Task's content here" required
					class="form-control " ><%= note.getContent() %> </textarea>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-success">Update</button>
			</div>
		</form>

	</div>
</body>
</html>