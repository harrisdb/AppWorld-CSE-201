<!doctype html>
<html lang="en">
  <head>
    <title>AppWorld</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
    h1.display-3 {
      right: 70px;
      bottom: 50px;
      position: relative;
    }
    p.lead {
      right:15px;
      bottom: 50px;
      position: relative;
    }
    form.form-inline {
      position: relative;
      left:720px;
      top: 50px;
    }
    </style>
  </head>
  <head>
    <div class="jumbotron jumbotron-fluid" style="background-image: url(https://timedotcom.files.wordpress.com/2016/01/time-100-2016-usain-bolt.jpg?quality=85); background-size: 100%;">
      <h1 class="display-3" align="right"><font color="white">App World</font></h1>
      <p class="lead" align="right"><font color="white">Voted #1 Fitness App Catalog in the Universe!</font></p>
    </div>



    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  </head>
  <body>

    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" id="loginButton" data-toggle="modal" data-target="#myModal">
      Login!
    </button>

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
            <g:form controller="home" action="login">
              <div class="form-group">
                <label for="exampleInputEmail1">Full Name</label>
                <input type="text" class="form-control" id="signupFormName" placeholder="Full Name" name="sUsername">
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
            </g:form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-success">Signup!</button>
          </div>
        </div>
      </div>
    </div>

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
