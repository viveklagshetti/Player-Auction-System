<nav class="navbar navbar-expand-lg bg-colors navbar-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><span class="fa fa-gavel"></span> Sports Auction</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav" style="margin-left: 970px">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home &nbsp;</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Teams
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#exampleModal">Add Team</a></li>
                        <li><a class="dropdown-item" href="teamlist.jsp">Team List</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Players
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#playerModal">Add Player</a></li>
                        <li><a class="dropdown-item" href="playerlist.jsp">Player List</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Auction
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="auction.jsp">Start Auction</a></li>
                        <li><a class="dropdown-item" href="teamDashboard.jsp">Team Dashboard</a></li>
                        <li><a class="dropdown-item" href="">Sold Players</a></li>
                        <li><a class="dropdown-item" href="">Unsold Players</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>