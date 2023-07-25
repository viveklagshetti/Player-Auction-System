<%-- 
    Document   : teamDashboard
    Created on : May 10, 2023, 9:44:28 AM
    Author     : 91762
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.entities.Team"%>
<%@page import="com.dau.TeamDatabase"%>
<%@page import="com.dau.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!--Adding fontosm css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--Adding bootstrap cdn-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!--Adding Default css--> 
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .banner-bg{
                clip-path: polygon(50% 0%, 100% 0, 100% 95%, 78% 92%, 38% 96%, 0 93%, 0 0);
            }
        </style>

    </head>
    <body class="bg-colors">
        <nav class="navbar navbar-expand-lg bg-colors navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="main.jsp"><span class="fa fa-gavel"></span> Sports Auction</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>
        <div class="container col-md-6 mt-2">
            <a href="main.jsp" class="btn btn-secondary"> Go Back</a>            
        </div>
        <div class="container-fluid text-center col-md-6">
            <h4>Team Dashboard</h4>                    
        </div>
        <form action="SoldPlayerServlet" method="post">
            
            <div class="container col-md-4 mt-3" >

                <div class="form-group mb-3">
                    <label for="teamSelect" class="form-label col-md-6"><b> Select Team </b> </label>
                    <select class="form-control col-md-8" id="teamSelect" name="teamId">
                        <%
                            TeamDatabase tm = new TeamDatabase(ConnectionProvider.getConnection());
                            ArrayList<Team> teams = tm.displayTeam();
                            for (Team t : teams) {
                        %>
                        <option value="<%=t.getTeamId()%>"><%=t.getTeamName()%></option>
                        <%
                            }
                        %>
                    </select>

                </div>
                <div>
                    <button type="submit" class="btn btn-secondary"> Submit </button>                  

                </div>
            </div>      
        </form>
                    

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <!--javascript  ajax -->
        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

    </body>
</html>
