<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToDo: Adding Task</title>
<%@include file="Import.jsp"%>

</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>
		<br>
		<h4>Please fill the details to add the TODO Task</h4>
		<br>
		<!--Below code is for form section &  CTRL+SHIFT+/ to geneate comment-->
		<form action="SaveNoteServlet" method="post">

			<div class="mb-3">
				<label for="titleinput" class="form-label">Task Title</label>
				 <input name="titleinput"
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter ToDo's Title here"
					required />
				<div id="titleinput" class="form-text">We'll never share your
					TODO details with anyone else.</div>
			</div>

			<div class="mb-3">
				<label for="content" class="form-label">Task Content</label>
				<textarea name="content" id="content" placeholder="Enter Task's content here"
					required class="form-control"></textarea>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary" >Add</button>
			</div>
		</form>

	</div>
</body>
</html>