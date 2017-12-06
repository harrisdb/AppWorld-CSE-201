<!DOCTYPE html>
<html lang="en">

<head>

  <title>AppWorld</title>
  <asset:stylesheet src="userSettings.css" />
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

  <script>
    function showhide(id) {

      // Resets all tables to none; makes screen blank
      document.getElementById('FavContainer').style.display = 'none';
      document.getElementById('NameContainer').style.display = 'none';
      document.getElementById('PassContainer').style.display = 'none';
      document.getElementById('ModContainer').style.display = 'none';

      var buttonID = document.getElementById(id);
      var showContainer = null;

      //Check which table needs to be displayed, displays the correpsonding table
      if (buttonID == document.getElementById('Fav')) {
        showContainer = document.getElementById('FavContainer');
      } else if (buttonID == document.getElementById('Name')) {
        showContainer = document.getElementById('NameContainer');
      } else if (buttonID == document.getElementById('Pass')) {
        showContainer = document.getElementById('PassContainer');
      } else if (buttonID == document.getElementById('Mod')) {
        showContainer = document.getElementById('ModContainer');
      }
      showContainer.style.display = 'block';
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
    <a class="navbar-brand" href="#">User Settings</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="http://localhost:8080/"><b>Home</b> <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost:8080/Search"><b>Search</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost:8080/Admin"><b>Admin</b></a>
        </li>
        <li id="Fav" class="nav-item">
          <a class="nav-link" href="javascript: showhide('Fav');"> <i>Favorite Categories</i> </a>
        </li>
        <li id="Name" class="nav-item-content-center">
          <a class="nav-link" href="javascript: showhide('Name');"> <i>Change Name</i> </a>
        </li>
        <li id="Pass" class="nav-item-content-center">
          <a class="nav-link" href="javascript: showhide('Pass');"> <i>Change Password</i> </a>
        </li>
        <li id="Mod" class="nav-item-content-center">
          <a class="nav-link" href="javascript: showhide('Mod');"> <i>Become a Moderator</i> </a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container" id="FavContainer">
    <form class="form-vertical">
      <h3>Select Favorite Categories</h3>
      <ul>
        <div class="checkbox">
          <label><input type="checkbox">Athletics</label>
        </div>
        <div class="checkbox">
          <label><input type="checkbox">Lifting</label>
        </div>
        <div class="checkbox">
          <label><input type="checkbox">Meditation</label>
        </div>
        <div class="checkbox">
          <label><input type="checkbox">Nutrition</label>
        </div>
        <div class="checkbox">
          <label><input type="checkbox">Running</label>
        </div>
        <div class="checkbox">
          <label><input type="checkbox">Scheduling</label>
        </div>
        <div class="checkbox">
          <label><input type="checkbox">Sleep</label>
        </div>
        <div class="checkbox">
          <label><input type="checkbox">Yoga</label>
        </div>
      </ul>
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Save</button>
      </div>
      <div class="col-xs-12" style="height:30px;"></div>
    </form>
  </div>

  <div class="container" id="NameContainer">
    <h3>Change Name</h3>
    <form class="form-horizontal">
      <div class="form-group">
        <label class="control-label col-sm-2"></label>
        <div class="col-sm-10">
          <input class="form-control" id="name" placeholder="Enter new name" name="email">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-success">Save</button>
        </div>
        <div class="col-xs-12" style="height:30px;"></div>
      </div>
    </form>
  </div>

  <div class="container" id="PassContainer">
    <h3>Change Password</h3>
    <div class="form-group">
      <form class="horizontal">
        <label class="control-label col-sm-2"></label>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="pwd" placeholder="Enter current password" name="pwd">
        </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd"></label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="pwd" placeholder="Enter new password" name="pwd">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd"></label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="pwd" placeholder="Re enter new password" name="pwd">
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Save</button>
      </div>
    </div>
    </form>
  </div>

  <div class="container" id="ModContainer">
    <h3>Your current status: <i>Person/User/Moderator</i></h3>
    <form class="form-vertical">

      <div class="col-sm-10">
        <label class="control-label col-sm-10" for="modMessage" style="padding-top:50px"><i>*A Moderator can delete app comments. Use your power wisely</i></label>
        <textarea type="text" class="form-control" id="modMessage" placeholder="Write why you should be a moderator" name="modMessage"></textarea>
      </div>
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Save</button>
      </div>
    </form>

    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>

</html>