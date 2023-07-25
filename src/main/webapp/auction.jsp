<%-- 
    Document   : auction
    Created on : May 9, 2023, 11:10:31 AM
    Author     : 91762
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.entities.Team"%>
<%@page import="com.dau.TeamDatabase"%>
<%@page import="com.dau.ConnectionProvider"%>
<%@page import="com.dau.PlayerDatabase"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.Player"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Auction Page</title>

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
            <a class="navbar-brand" href="main.jsp"><span class="fa fa-gavel"></span> Sports Auction</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>

        <div class="container-fluid col-md-8 mt-2" style="margin-left: 1150px">
            <a href="main.jsp" type="submit" class="btn btn-secondary">Go Back</a>
        </div>
    </nav>
    <%@include file="message.jsp" %>
    <div class="container-fluid text-center col-md-8">
        <h3>Player Auction</h3>                    
    </div>


    <%        Player pl = new Player();
        PlayerDatabase pd = new PlayerDatabase(ConnectionProvider.getConnection());
        int pgno = request.getParameter("pgno") == null ? 0 : Integer.parseInt(request.getParameter("pgno"));
        request.setAttribute("pgno", pgno);
        int i;
        int end = 1;
        int total = pd.getPlayerCount();
        pd.myMethod(request);
        List<Player> ac = pd.displayAuctionPlayer();
        if (ac != null) {
            for (Player p : ac) {
    %>

    <div class="container">
        <div class="row col-md-12">
            <div class="col col-md-6">
                <div class="container-fluid col-md-3 text-center mt-3">
                    <img src="<%= p.getPlayePic()%>" alt="Player Image" height="300px" width="300px"/>
                </div>                
            </div>               

            <div class="col col-md-6 font">
                <div class="container-fluid col-md-12 mt-5 text-center ">
                    <table class="table table-borderless ">
                        <tbody>
                            
                            <tr>
                                <th scope="row" style="font-size: 18px; ">PLAYER ID :</td>
                                <td style="font-size: 25px; "><%= p.getPlayerId()%> </td>
                            </tr>
                            <tr>
                                <th scope="row"style="font-size: 25px; font-family:  ">NAME :</th>
                                <td style="font-size: 30px; "><b> <%= p.getFirstname().toUpperCase() %> &nbsp; <%= p.getLastname().toUpperCase() %></b> </td>
                                <!--<td> <%= p.getLastname()%> </td>-->
                                </th>
                            </tr>

                            <tr>
                                <th scope="row" style="font-size: 22px; ">CATEGORY :</td>
                                <td style="font-size: 26px; "><%= p.getCatgory().toUpperCase() %></td>
                            </tr>

                            <% if (p.getSubCategory() != null) {
                            %>
                            <tr>
                                <th scope="row"style="font-size: 18px; ">SUB CATEGORY</td>
                                <td style="font-size: 18px; "> <%= p.getSubCategory()%> </td>
                            </tr>
                            <%
                                }
                            %>

                            <tr>
                                <th colspan="2">
                                    <% for (i = 0; i <= total / end; i++) {%>
                                    <a href="auction.jsp?pgno=<%= i%>"></a>
                                    <%}%>
                                </th>
                            </tr>


                        </tbody>
                    </table>

                </div>
            </div>
        </div>
        <!--        <div class="container-fluid row col-md-12 text-center mt-3">
                    <div class="col col-md-2">
                        <div class="row">
                            <h5><%= p.getFirstname()%></h5>
                        </div>
                    </div>
                    <div class="col col-md-2">
                        <div class="row text-center">
                            <h5><%= p.getLastname()%></h5>
                        </div>
                    </div>
                </div>-->
    </div>
    <form id="sold-out" method="post" action="AuctionServlet">
        <div class="container col-md-2 text-center">                 
            <label for="teamName" class="form-label col-md-8 mt-4"style="font-size: 18px; " ><b>CURRENT BID </b> </label>

            <div class="input-group ">
                <div class="input-group-prepend">
                    <button class="btn btn-outline-secondary" type="button" id="minus-btn"style="height:50px;">-</button>
                </div>
                <input name="bidAmount" type="number" class="form-control" value="3000" min="1" max="50000" id="qty-input" style="height:50px;">
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button" id="add-btn" style="height:50px;">+</button>
                </div>
            </div>
        </div>
        <div class="container col-md-3 mt-4" >
            <div class="form-group mb-3 text-center">
                <label for="teamSelect" class="form-label col-md-8" style="font-size: 18px; "><b> SELECT TEAM </b> </label>
                <select class="form-control col-md-8" id="teamSelect" name="teamId">
                    <%
                        TeamDatabase tm = new TeamDatabase(ConnectionProvider.getConnection());
                        ArrayList<Team> teams = tm.displayTeam();
                        for (Team t : teams) {
                    %>
                    <option value="<%=t.getTeamId()%>" style="font-size: 18px; "><%=t.getTeamName()%></option>
                    <%
                        }
                    %>
                </select>
            </div>
        </div>

        <input type="hidden" name="playerId" value="<%= p.getPlayerId()%>">
        <div class="container text-center">
        </div>
        <div class="container col-md-10 mt-3" style="text-align:center;">
                        <button type="submit" class="btn btn-secondary">SOLD OUT</button>

            <span style="float:left">
                <a href="auction.jsp?pgno=<%=pgno - 1%>" class="btn btn-secondary">Previous</a>
            </span> 
            <span style="float:right">
                <a href="auction.jsp?pgno=<%=pgno + 1%>" class="btn btn-secondary">Next</a>
            </span>
        </div>
    </form>

</div>
<%
        }
    }
%>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<!--javascript  ajax -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script>
    // Get the add and minus buttons
    var addButton = document.getElementById("add-btn");
    var minusButton = document.getElementById("minus-btn");

    // Get the input field
    var inputField = document.getElementById("qty-input");

    // Add event listener to the add button
    addButton.addEventListener("click", function () {
        var currentValue = parseInt(inputField.value);
        if (currentValue < 50000) {
            inputField.value = currentValue + 1000;
        }
    });

    // Add event listener to the minus button
    minusButton.addEventListener("click", function () {
        var currentValue = parseInt(inputField.value);
        if (currentValue > 1) {
            inputField.value = currentValue - 1000;
        }
    });

</script>

</body>

