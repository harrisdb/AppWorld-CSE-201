<!DOCTYPE html>
<html>

<head>
  <title>app</title>
  <asset:stylesheet src="home.css" />
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">


  <script>
    function showhide(id) {

      // Resets all tables to none; makes screen blank
      document.getElementById('Apps Table').style.display = 'none';
      document.getElementById('Users Table').style.display = 'none';
      document.getElementById('User Submissions Table').style.display = 'none';
      // document.getElementById('Moderator Requests Table').style.display = 'none';

      var buttonID = document.getElementById(id);
      var tableID = null;

      //Check which table needs to be displayed, displays the correpsonding table
      if (buttonID == document.getElementById('Apps')) {
        tableID = document.getElementById('Apps Table');
      } else if (buttonID == document.getElementById('Users')) {
        tableID = document.getElementById('Users Table');
      } else if (buttonID == document.getElementById('Submissions')) {
        tableID = document.getElementById('User Submissions Table');
      } // } else if (buttonID == document.getElementById('Moderator')) {
      //   tableID = document.getElementById('Moderator Requests Table');
      // }
      tableID.style.display = 'block';
    }
  </script>

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
    <a class="navbar-brand" href="#">Admin</a>
    </div>
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/"><b>Home</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/search"><b>Search</b></a>
      </li>
      <li>
        <a class="nav-link" href="http://localhost:8080/UserSettings"><b>User Settings</b> <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" id="Apps"><a class="nav-link" href="javascript: showhide('Apps');"> <i>Apps</i> </a></li>
      <li class="nav-item" id="Users"><a class="nav-link" href="javascript: showhide('Users');"> <i>Users</i> </a></li>
      <li class="nav-item" id="Submissions"><a class="nav-link" href="javascript: showhide('Submissions');"> <i>User Submissions</i> </a></li>
      <!-- <li class="nav-item" id="Moderator"><a class="nav-link" href="javascript: showhide('Moderator');"> <i>Moderator Requests</i> </a></li> -->
    </ul>
    </div>
  </nav>

  <div class="container" id="Apps Table">
    <table class="table table-hover table-striped">
      <thead>
        <tr>
          <th>App Name</th>
          <th>Developer</th>
          <th>Link</th>
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
            <td>${it.getLink()}</td>
            <g:set var="devName" value="${it.getDeveloperName()}" />
            <td>${it.getVotes()}</td>
            <td style='white-space:nowrap'>
              <g:link action="deleteApp" params="[appName: appName, appDev: devName]">
                <button type="button" class="btn-danger">Delete</button></td>
              </g:link>
            </td>
          </tr>
        </g:each>
      </tbody>
    </table>
  </div>

  <div class="container" id="Users Table" style="display:none">
    <table class="table table-hover table-striped">
      <thead>
        <tr>
          <th>Username</th>
          <th>Name</th>
          <th>User Votes</th>
          <th>Status</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <g:each in="${usersList}">
          <tr>
            <g:set var="uName" value="${it.getUsername()}" />
            <td>${it.getUsername()}</td>
            <td>${it.getName()}</td>
            <td>${it.getVotedNumber()}</td>
            <td>${it.getRole()}</td>
            <td style='white-space:nowrap'>
              <g:if test="${it.getRole() == 'User'}">
                <g:link action="deleteUser" params="[username: uName]">
                  <button type="button" class="btn-danger">Delete</button>
                </g:link>
                <g:link action="userToMod" params="[username: uName]">
                  <button type="button" class="btn-info">Make Mod</button>
                </g:link>
                <g:link action="toAdmin" params="[username: uName]">
                  <button type="button" class="btn-warning">Make Admin</button>
                </g:link>
              </g:if>
              <g:if test="${it.getRole() == 'Moderator'}">
                <g:link action="deleteUser" params="[username: uName]">
                  <button type="button" class="btn-danger">Delete</button>
                </g:link>
                <g:link action="modToUser" params="[username: uName]">
                  <button type="button" class="btn-info">Revoke Mod</button>
                </g:link>
                <g:link action="toAdmin" params="[username: uName]">
                  <button type="button" class="btn-warning">Make Admin</button>
                </g:link>
              </g:if>
            </td>
          </tr>
        </g:each>
      </tbody>
    </table>
  </div>

  <div class="container" id="User Submissions Table" style="display:none">
    <table class="table table-hover table-striped">
      <thead>
        <tr>
          <th>App Name</th>
          <th>Link</th>
          <th>App Description</th>
          <th>User</th>
          <th>Approve?</th>
        </tr>
      </thead>
      <tbody>
        <g:each in="${reviewApps}">
          <tr>
            <g:set var="appName" value="${it.getAppName()}" />
            <td >${appName}</td>
            <td >${it.getLink()}</td>
            <td >${it.getDesc()}</td>
            <g:set var="devName" value="${it.getDeveloperName()}" />
            <td>${it.getDeveloperName()}</td>
            <td style='white-space:nowrap'>
              <g:link action="acceptApp" params="[appName: appName, appDev: devName]">
                <button type="button" class="btn-success">Yes</button>
              </g:link>
              <g:link action="denyApp" params="[appName: appName, appDev: devName]">
                <button type="button" class="btn-danger">No</button></td>
              </g:link>
            </td>
          </tr>
        </g:each>
      </tbody>
    </table>
  </div>

  <!-- <div class="container" id="Moderator Requests Table" style="display:none">
    <table class="table table-hover table-striped">
      <thead>
        <tr>
          <th>Username</th>
          <th>Votes</th>
          <th>Message</th>
          <th>Approve?</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>efly000</td>
          <td>
            50
          </td>
          <td>
            <p>Please make me a moderator, I have been a very good boy, I would love to delete comments, that would be an amazing thing</p>
          </td>
          <td style='white-space:nowrap'> <button class="btn-success">Yes</button> <button class="btn-danger">No</button></td>
        </tr>

      </tbody>
    </table>
  </div> -->

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>

</html>
