<%-- 
    Document   : main
    Created on : May 4, 2023, 2:49:38 PM
    Author     : 91762
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main page</title>

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
    <body>
        <!--navbar-->
        <%@include file="navbar.jsp" %>

        <!--jumbotron-->
        <div class="p-5 mb-4 bg-colors banner-bg">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold">Studio Sports</h1>
                <p class="col-md-8 fs-4">Live cricket matches and Live auctions, <br> all types of sports live streaming only on Studio Sports,<br> Youtube Channel </p>

                <a href="LogoutServlet" class="btn btn-secondary btn-lg" type="button">Log out</a>

            </div>
        </div>


        <!--Team add modal start-->
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Team Add</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="team-add" action="TeamAddServlet" method="post" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label for="teamName" class="form-label">Team Name</label>
                                <input name="teamName" type="text" class="form-control" id="teamName" placeholder="Enter team name">
                            </div>
                            <div class="mb-3 mt-3">
                                <label for="formFile" class="form-label">Team pic</label>
                                <input name="teamPic" class="form-control" type="file" id="formFile">
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-secondary">Add Team</button>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!--Team add modal ends-->

        <!--Player Add modal Start-->
        <!-- Modal -->
        <div class="modal fade" id="playerModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Player</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="player-add" action="PlayerAddServlets" method="post" enctype="multipart/form-data">
                            <div class="form-floating mb-3">
                                <input name="firstName" type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
                                <label for="floatingInput">First Name</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input name="lastName" type="text" class="form-control" id="floatingPassword" placeholder="Password">
                                <label for="floatingPassword">Last Name</label>
                            </div>
                            <div class="form-floating mb-3">
                                <select name="playerCategory" class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                    <option selected>Batter</option>
                                    <option>Batsman</option>
                                    <option>Bowler</option>
                                    <option>WicketKeeper</option>
                                    <option>All rounder</option>
                                </select>
                                <label for="floatingSelect">Select Category</label>
                            </div>
                                <div class="form-floating mb-3">
                                <select name="subCategory" class="form-select" id="floatingSelect" aria-label="Disabled select example" disabled>
                                    <option>Unknown</option>
                                    <option>Left Hand</option>
                                    <option>Right Hand</option>
                                </select>
                                <label for="floatingSelect">Select SubCategory</label>
                            </div>
                        
                            <div class="form-floating mb-3">
                                <select name="playerStatus" class="form-select" id="floatingSelect" aria-label="select example">
                                    <option selected >Unsold</option>
                                    <option>Sold</option>
                                </select>
                                <label for="floatingSelect">Select Status</label>
                            </div>
                            <div class="mb-3">
                                <label for="formFile" class="form-label">Player Image</label>
                                <input name="playerPic" class="form-control" type="file" id="formFile">
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-secondary">Add Player</button>
                            </div>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!--Player add modal ends-->



        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <!--javascript  ajax -->
        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>



        <!--Team add script-->
        <script>
            $(document).ready(function (e)
            {
                // we will add a listner to the model form body 
                $("#team-add").on("submit", function (event) {
                    //this code gets called when the form is submitted to the AddPostServlet 
                    //we will stop the normal behaviour of the form when submitted by the help of preventDefault
                    event.preventDefault();  //It stops the synchronous form submiition


                    // In this we stores all the data in the form  type variable with the help of the  FormData object

                    let form = new FormData(this);  //this means(add-post-form)

                    // we will send the form through ajax with jqery 

                    $.ajax({
                        //we will have to mention the requirements 
                        url: "TeamAddServlet",
                        type: "POST",
                        data: form,
                        //When the request will successfully submitted the success function will be called
                        success: function (data, textStatus, jqXHR)
                        {
                            console.log(data);
                            if (data.trim() === 'done')
                            {
                                swal("Successfully Added...");
                            } else
                            {
                                swal("Failed to Add! Try Again");
                            }

                        },
                        //When the request will unsuccessfully submitted the error function will be called
                        error: function (jqXHR, textStatus, errorThrown)
                        {
                            swal("Failed to Add");
                        },
                        //we have to specify formate of the data which we sending to the servlet beacuse we are sending the images also 
                        //this is false beacuse we are sending all the data including photo
                        processData: false,
                        contentType: false

                    });



                });
            });
        </script>
        <!--End Team Add Script-->

         <!--Start Player add script-->
        <script>
            $(document).ready(function (e)
            {
                // we will add a listner to the model form body 
                $("#player-add").on("submit", function (event) {
                    //this code gets called when the form is submitted to the AddPostServlet 
                    //we will stop the normal behaviour of the form when submitted by the help of preventDefault
                    event.preventDefault();  //It stops the synchronous form submiition


                    // In this we stores all the data in the form  type variable with the help of the  FormData object

                    let form = new FormData(this);  //this means(add-post-form)

                    // we will send the form through ajax with jqery 

                    $.ajax({
                        //we will have to mention the requirements 
                        url: "PlayerAddServlets",
                        type: "POST",   
                        data: form,
                        //When the request will successfully submitted the success function will be called
                        success: function (data, textStatus, jqXHR)
                        {
                            console.log(data);
                            if (data.trim() === 'done')
                            {
                                swal("Successfully Added...");
                            } else
                            {
                                swal("Failed to Add! Try Again");
                            }

                        },
                        //When the request will unsuccessfully submitted the error function will be called
                        error: function (jqXHR, textStatus, errorThrown)
                        {
                            swal("Failed to Add");
                        },
                        //we have to specify formate of the data which we sending to the servlet beacuse we are sending the images also 
                        //this is false beacuse we are sending all the data including photo
                        processData: false,
                        contentType: false

                    });



                });
            });
        </script>
        <!--End Player Add Script-->


    </body>
</html>
