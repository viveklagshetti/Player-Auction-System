<%
    String message = (String) session.getAttribute("message");
    if (message != null) {
%>
<!--Printing the statment-->
<div class="container-fluid col-md-5">
<div class="alert alert-secondary alert-dismissible fade show" role="alert">
    <strong><%= message %></strong>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</div>
<%            session.removeAttribute("message");
    }
%>