<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Search</title>
    <asset:stylesheet src="search.css"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
  </head>
  <body>

    <div class="jumbotron jumbotron-fluid" id="mainJumbo">
      <h1 class="display-3" align="right" id="jumboApp"><font color="white">App World</font></h1>
      <p class="lead" align="right" id="jumboVoted"><font color="white">Voted #1 Fitness App Catalog in the Universe!</font></p>
    </div>

    <nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse" id="mainNav">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="#">AppWorld</a>
      <form class="form-inline">
        <button type="button" class="btn btn-outline-info my-2 my-sm-0" id="allAppsButton" data-toggle="modal" data-target="#appModal">
          View All Applications
        </button>
      </form>
      <form class="form-inline">
        <button type="button" class="btn btn-outline-info my-2 my-sm-0" id="byVotesButton" data-toggle="modal" data-target="#appModal">
          Sort by Votes
        </button>
      </form>
      <form class="form-inline">
        <button type="button" class="btn btn-outline-info my-2 my-sm-0" id="byCategoryButton" data-toggle="modal" data-target="#appModal">
          Sort by Category
        </button>
      </form>
    </nav>

    <!-- Sort by Category modal -->
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

    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>
