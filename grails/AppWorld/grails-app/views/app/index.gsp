<!doctype html>
<html lang="en">

<head>

  <title>app</title>
  <asset:stylesheet src="home.css" />
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

</head>

<body>
  <div class="jumbotron jumbotron-fluid" id="mainJumbo">
    <h1 class="display-3" align="right" id="jumboApp"><font color="white">App World</font></h1>
    <p class="lead" align="right" id="jumboVoted">
      <font color="white">Voted #1 Fitness App Catalog in the Universe!</font>
    </p>
  </div>

  <nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse" id="mainNav">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    <a class="navbar-brand" href="#">App</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="http://localhost:8080/"><b>Home</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost:8080/Search"><b>Search</b></a>
        </li>
        <g:if test="${username != 'guest'}">
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/UserSettings"><b>User Settings</b></a>
          </li>
        </g:if>
        <g:if test="${role == 'Admin'}">
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/Admin"><b>Admin</b></a>
          </li>
        </g:if>
      </ul>
      <g:if test="${username == 'guest' || username == null}">
        <form class="form-inline my-2 my-lg-0">
          <button type="button" class="btn btn-outline-info my-2 my-sm-0" id="loginButton" data-toggle="modal" data-target="#myModal">
            Login!
          </button>
        </form>
      </g:if>
      <g:else>
        <g:form action="logout">
          <form class="form-inline">
            <span class="navbar-text">
              Logged in as ${username}
            </span>
            <button type="submit" class="btn btn-outline-danger my-2 my-sm-0" id="loginButton">
              Logout
            </button>
          </form>
        </g:form>
      </g:else>

    </div>
  </nav>

  <!-- Modal 1 (Login) -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Login to AppWorld!</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
        </div>
        <div class="modal-body">
          <g:form action="login">
            <div class="form-group">
              <label for "loginModalFormUsername">Username</label>
              <input type="text" class="form-control" id="loginModalFormUsername" placeholder="Username" name="username">
            </div>
            <div class="form-group">
              <label for "loginModalFormPassword">Password</label>
              <input type="password" class="form-control" id="loginModalFormPassword" placeholder="Password" name="password">
              <hr class="my-4">
              <button type="submit" class="btn btn-success">Login</button>
            </div>
          </g:form>
          <button type="button" class="btn btn-danger" data-dismiss="modal" data-toggle="modal" data-target="#signUpModal">New User?</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 2 (Signup) -->
  <div class="modal fade" id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Signup for AppWorld</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
          <g:form action="signUp">
            <div class="form-group">
              <label for="exampleInputEmail1">Full Name</label>
              <input type="text" class="form-control" id="signupFormName" placeholder="Full Name" name="sName">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Username</label>
              <input type="text" class="form-control" id="signupFormUsername" placeholder="Username" name="sUsername">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Password</label>
              <input type="password" class="form-control" id="signupFormPassword" aria-describedby="passwordHelp" placeholder="Password" name="sPassword">
              <small id=passwordHelp class="form-text text-muted">Minimum 8 characters, must contain at least 1 number</small>
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Repeat Password</label>
              <input type="password" class="form-control" id="signupFormRepeatPassword" placeholder="Repeat Password" name="sPassword2">
            </div>
            <hr class="my-4">
            <button type="submit" class="btn btn-success">Signup!</button>
          </g:form>
        </div>
      </div>
    </div>
  </div>
  <g:set var="appName" value="${appName}" />
  <g:set var="devName" value="${appDev}" />
  <h1 align="center">${appName}</h1>
  <h5 align="center">Recommended by ${appVotes} users</h5>
    <h5 align="center">Developed by ${appDev}</h5>
    <h5 align="center">${appCategory}</h5>
    <h5 align="center">${appLink}</h5>
    <h5 align="center">${appPrice}</h5>
    <h5 align="center">${appVersion}</h5>
    <p align="center">${appDesc}</p>

  <hr class="my-4">
  <g:if test="${username == 'guest' || username == null}">
    <h5 align="left">Login to comment!<h5>
  </g:if>
  <g:else>
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" type="text" rows="5" id="comment" name="appDesc"></textarea>
      <button type="submit" class="btn btn-success" id="commentButton">Post Comment</button>
    </div>
  </g:else>



  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>

</html>
