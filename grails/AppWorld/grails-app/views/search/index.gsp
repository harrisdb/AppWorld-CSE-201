<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Search</title>
  <asset:stylesheet src="search.css" />

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
    <a class="navbar-brand" href="">Search</a>

    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080"><b>Home</b></a>
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

      <g:form action="fillTables">
        <form class="form-inline" style="padding-left:200px">
          <button type="submit" class="btn btn-info my-2 my-sm-0" id="allAppsButton" style="background-color:transparent">
            <i>View All Applications</i>
          </button>
        </form>
      </g:form>

      <g:form action="sortByVotes">
        <form class="form-inline">
          <button type="submit" class="btn btn-info my-2 my-sm-0" id="byVotesButton" style="background-color:transparent">
            <i>Sort by Votes</i>
          </button>
        </form>
      </g:form>

      <form class="form-inline">
        <button type="button" class="btn btn-info my-2 my-sm-0" id="byCategoryButton" data-toggle="modal" data-target="#categoryModal" style="background-color:transparent">
          <i>Sort by Category</i>
        </button>
      </form>

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

  <!-- Sort by Category modal -->
  <div class="modal fade" id="categoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Select Category</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
        </div>
        <div class="modal-body">
          <g:form action="sortByCategory">
            <div class="form-group">
              <div class="radio">
                <label><input type="radio" name="catRadio" value="Athletics">Athletics</label>
              </div>
              <div class="radio">
                <label><input type="radio" name="catRadio" value="Lifting">Lifting</label>
              </div>
              <div class="radio">
                <label><input type="radio" name="catRadio" value="Meditation">Meditation</label>
              </div>
              <div class="radio">
                <label><input type="radio" name="catRadio" value="Nutrition">Nutrition</label>
              </div>
              <div class="radio">
                <label><input type="radio" name="catRadio" value="Running">Running</label>
              </div>
              <div class="radio">
                <label><input type="radio" name="catRadio" value="Scheduling">Scheduling</label>
              </div>
              <div class="radio">
                <label><input type="radio" name="catRadio" value="Sleep">Sleep</label>
              </div>
              <div class="radio">
                <label><input type="radio" name="catRadio" value="Yoga">Yoga</label>
              </div>
            </div>
            <hr class="my-4">
            <button type="submit" class="btn btn-success">Sort</button>
          </g:form>
        </div>
      </div>
    </div>
  </div>

    <div class="container" id="Apps Table">
     <table class="table table-hover table-striped">
       <thead>
         <tr>
           <th>App Name</th>
           <th>Developer</th>
           <th>Link</th>
           <th>Category</th>
           <th>Votes</th>
           <th></th>
        </tr>
       </thead>
       <tbody>
         <g:each in="${appsList}">
           <tr>
             <g:set var="appName" value="${it.getAppName()}" />
             <td>${it.getAppName()}</td>
             <td>${it.getDeveloperName()}</td>
             <g:set var="devName" value="${it.getDeveloperName()}" />
             <td>${it.getLink()}</td>
             <td>${it.getCategory()}</td>
             <td>${it.getVotes()}</td>
             <td style='white-space:nowrap'>
               <g:link action="viewApp" params="[appName: appName, appDev: devName]">
                <button type="button" class="btn-info">View App</button></td>
              </g:link>
             </td>
           </tr>
         </g:each>
       </tbody>
     </table>
   </div>

  <!-- jQuery first, then Tether, then Bootstrap JS. -->
  <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>

</html>
