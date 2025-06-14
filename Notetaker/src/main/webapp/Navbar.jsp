<!-- Custom Style -->
<style>
  .pink {
    background-color: #6a0dad !important;
  }
</style>
<%@include file="Import.jsp"%>

<nav class="navbar navbar-expand-lg navbar-dark pink">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">Todo Manager</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Addtask.jsp">Add Task</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="All_tasks.jsp" tabindex="-1" aria-disabled="true">All Tasks</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-dark" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>