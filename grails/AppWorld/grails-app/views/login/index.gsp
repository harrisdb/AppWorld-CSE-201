<!doctype html>
<html lang="en">
  <head>
    <head>
      <title>Login</title>
      <style>
      p.home {
        position: relative;
        right: 200px;
      }
      p.search {
        position: relative;
        top: 58px;
        right: 75px;
      }
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

      }
      </style>
    <head>
      <div class="jumbotron jumbotron-fluid" style="background-image: url(https://timedotcom.files.wordpress.com/2016/01/time-100-2016-usain-bolt.jpg?quality=85); background-size: 100%;">
        <h1 class="display-3" align="right"><font color="white">App World</font></h1>
        <p class="lead" align="right"><font color="white">Voted #1 Fitness App Catalog in the Universe!</font></p>
          <p class="search" align="right">
            <a class="btn btn-primary btn-lg" href="#" role="button">Search</a>
          </p>
            <p class="home" align="right">
              <a class="btn btn-primary btn-lg" href="#" role="button">Home</a>
            </p>
      </div>
    </head>

    <g:form action="login" style="padding-left:200px">
      <div class="form-group">
        <label for="formGroupExampleInput" name="username">Username:</label>
        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Username">
      </div>
      <div class="form-group">
        <label for="formGroupExampleInput2" name="password">Password:</label>
        <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Password">
      </div>
    </g:form>
    <g:form action="signup" style="padding-left:200px">
      <p class="search" align="right">
        <a class="btn btn-primary btn-lg" href="#" role="button">Login</a>
      </p>
    </g:form>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  </head>
  <body>
    <div

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  </body>
</html>
