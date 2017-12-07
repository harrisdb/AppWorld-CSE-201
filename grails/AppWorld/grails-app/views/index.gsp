<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>AppWorld</title>
  <asset:stylesheet src="home.css" />

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
    <a class="navbar-brand" href="http://localhost:8080">Home</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">

        <li class="nav-item">
          <a class="nav-link" href="http://localhost:8080/search"><b>Search</b></a>
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
        <g:form controller="Home" action="logout">
          <form class="form-inline">
            <span class="navbar-text">
                Logged in as ${username}
              </span>
            <button type="submit" class="btn btn-outline-danger my-2 my-sm-0" id="loginButton">
                Logout
              </button>
              <form class="form-inline my-2 my-lg-0">
                <button type="button" class="btn btn-outline-info my-2 my-sm-0" id="loginButton" data-toggle="modal" data-target="#appModal">
                    Submit Application
                  </button>
              </form>
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
          <g:form controller="Home" action="login">
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
          <g:form controller="Home" action="signUp">
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

  <!-- Submit Application Modal -->
  <div class="modal fade" id="appModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Submit Application Form</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
          <g:form controller="Home" action="submitApp">
            <div class="form-group">
              <label for="exampleInputEmail1">Application Name</label>
              <input type="text" class="form-control" id="signupFormName" placeholder="" name="appName">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Application Developer</label>
              <input type="text" class="form-control" id="signupFormUsername" placeholder="" name="appDev">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Application Link</label>
              <input type="text" class="form-control" id="signupFormPassword" placeholder="" name="appLink">
            </div>
            <div class="form-group">
              <label for="comment">Description:</label>
              <textarea class="form-control" type="text" rows="5" id="comment" name="appDesc"></textarea>
            </div>
            <div class="radio">
              <label><input type="radio" name="catRadio">Athletics</label>
            </div>
            <div class="radio">
              <label><input type="radio" name="catRadio">Lifting</label>
            </div>
            <div class="radio">
              <label><input type="radio" name="catRadio">Meditation</label>
            </div>
            <div class="radio">
              <label><input type="radio" name="catRadio">Nutrition</label>
            </div>
            <div class="radio">
              <label><input type="radio" name="catRadio">Running</label>
            </div>
            <div class="radio">
              <label><input type="radio" name="catRadio">Scheduling</label>
            </div>
            <div class="radio">
              <label><input type="radio" name="catRadio">Sleep</label>
            </div>
            <div class="radio">
              <label><input type="radio" name="catRadio">Yoga</label>
            </div>
            <hr class="my-4">
            <button type="submit" class="btn btn-success">Signup!</button>
          </g:form>
        </div>
      </div>
    </div>
  </div>

  <h1 class="display-4" align="right" id="adminpickText"><font color="4d4e4f">Top Picks!</font></h2>

    <div class="card" style="width: 20rem;" id="adminPick1">
      <div class="card-block">
        <h4 class="card-title">Nike Running Club</h4>
        <p class="card-text">Any runner needs this! Comes with 1000+ different running plans to get you started!</p>
        <a href="http://localhost:8080/app" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>

    <div class="card" style="width: 20rem;" id="adminPick2">
      <div class="card-block">
        <h4 class="card-title">MyFitnessPal</h4>
        <p class="card-text">Very helpful application to track calories and other intakes! Must need if you're looking for better nutrition!</p>
        <a href="http://localhost:8080/app" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>

    <div class="card" style="width: 20rem;" id="adminPick3">
      <div class="card-block">
        <h4 class="card-title">iBike</h4>
        <p class="card-text">Anyone that loves to go biking will love this! Has many different trails to explore</p>
        <a href="http://localhost:8080/app" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>

    <div class="card" style="width: 20rem;" id="adminPick4">
      <div class="card-block">
        <h4 class="card-title">iYoga</h4>
        <p class="card-text">If you are into Yoga check this Application out! 1500+ different yoga poses.</p>
        <a href="http://localhost:8080/app" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>

    <div class="card" style="width: 20rem;" id="adminPick5">
      <div class="card-block">
        <h4 class="card-title">SleepTrkr</h4>
        <p class="card-text">It's important you get 8 hours of sleep a day, make sure you are with SleepTrkr!</p>
        <a href="http://localhost:8080/app" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>

    <div class="card" style="width: 20rem;" id="adminPick6">
      <div class="card-block">
        <h4 class="card-title">GymBuddy</h4>
        <p class="card-text">Looking to start building muscle or already doing so? GymBuddy comes with 2000+ different gym workouts!</p>
        <a href="http://localhost:8080/app" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>

    <!-- <h1 class="display-4" align="right" id="recommendedForUser"><font color="4d4e4f">Recommended for you!</font></h2> -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <!-- Initialize Bootstrap functionality -->
    <script>
    $('#myModal').on('shown.bs.modal', function() {
      $('#myInput').focus()
    })
    </script>
  </body>
</html>
