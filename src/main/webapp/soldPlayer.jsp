<%-- 
    Document   : playerlist
    Created on : May 8, 2023, 10:54:29 AM
    Author     : 91762
--%>
<%@page import="com.dau.ConnectionProvider"%>
<%@page import="com.dau.PlayerDatabase"%>
<%@page import="com.entities.Player"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Player List page</title>


        <!--Adding fontosm css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--Adding bootstrap cdn-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!--Adding Default css--> 
        <link href="css/style.css" rel="stylesheet" type="text/css"/>


    </head>
    <body class="bg-colors">
        <nav class="navbar navbar-expand-lg bg-colors navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><span class="fa fa-gavel"></span> Sports Auction</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>
        <div class="container-fluid col-md-8 mt-2">
            <a href="teamDashboard.jsp" type="submit" class="btn btn-secondary">Go Back</a>

        </div>

        <div class="container-fluid text-center col-md-8 mb-5">
            <h4>Player List</h4>                    
        </div>

        <div class="container col-md-10" >
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Price</th>
                    </tr>
                </thead>

                <tbody>
                    <%
                        int i = 1;
                        String teamId = (String) request.getAttribute("teamId");
                        Player p = new Player(teamId);
                        PlayerDatabase pd = new PlayerDatabase(ConnectionProvider.getConnection());
                        List<Player> players = pd.soldPlayer(p);
                        if (players != null) {
                            for (Player pr : players) {
                    %>       
                    <tr>
                        <td> <%= i%> </td>
                        <td><%= pr.getFirstname()%></td>
                        <td><%= pr.getLastname()%></td>
                        <td> <%= pr.getCatgory()%> </td>
                        <td><%= pr.getRate()%></td>
                    </tr>
                    <%
                            i++;
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="5">No players found.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>

            </table>
        </div>
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <!--javascript  ajax -->
        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>


    </body>
</html>
