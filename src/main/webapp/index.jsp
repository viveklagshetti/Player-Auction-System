<%-- 
    Document   : index
    Created on : May 4, 2023, 7:53:41 AM
    Author     : 91762
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index page</title>


        <!--Adding fontosm css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--Adding bootstrap cdn-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!--Adding Default css--> 
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="bg-colors">
        <!--navbar-->
        <nav class="navbar navbar-expand-lg bg-colors navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><span class="fa fa-gavel"></span> Sports Auction</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav" style="margin-left: 1230px; font-size:18px">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="login.jsp"><span class="fa fa-user-circle fa-1x"></span> Login &nbsp;</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!--heading-->

        <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center ">
            <div class="col-md-5 p-lg-5 mx-auto my-5">
                <h1 class="display-4 fw-normal">Organised By Studio Sports Production</h1>
                <p class="lead fw-normal">We are Streaming live Sports in our youtube channel and organising the live auction events</p>
                <a class="btn btn-secondary" href="https://www.youtube.com/live/mASEDZpbr2c?feature=share">Watch the Live action</a>
            </div>
            <div class="product-device shadow-sm d-none d-md-block"></div>
            <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </body>
</html>
