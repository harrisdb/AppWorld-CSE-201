<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


  <script>
    function showhide(id) {

      // Resets all tables to none; makes screen blank
      document.getElementById('Apps Table').style.display = 'none';
      document.getElementById('Users Table').style.display = 'none';
      document.getElementById('User Submissions Table').style.display = 'none';

      var buttonID = document.getElementById(id);
      var tableID = null;

      //Check which table needs to be displayed, displays the correpsonding table
      if (buttonID == document.getElementById('Apps')) {
        tableID = document.getElementById('Apps Table');
      } else if (buttonID == document.getElementById('Users')) {
        tableID = document.getElementById('Users Table');
      } else if (buttonID == document.getElementById('Submissions')) {
        tableID = document.getElementById('User Submissions Table');
      }
      tableID.style.display = 'block';
    }
  </script>

</head>

<body>
  <div class="navbar">
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Admin</a>
        </div>
        <ul class="nav navbar-nav">
          <li><a href="http://localhost:8080/">Home</a></li>
          <li id="Apps"><a href="javascript: showhide('Apps');">Apps</a></li>
          <li id="Users"><a href="javascript: showhide('Users');">Users</a></li>
          <li id="Submissions"><a href="javascript: showhide('Submissions');">User Submissions</a></li>
        </ul>
      </div>
    </nav>
  </div>

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
        <tr>
          <td>Twitter</td>
          <td>John Doe</td>
          <td>App Votes</td>
          <td>www.sampleLink.com</td>
          <td> <button class="btn-danger" id="delete App">delete</button> </td>
        </tr>
        <tr>
          <td>Instagram</td>
          <td>Mary Moe</td>
          <td>App Votes</td>
          <td>www.sampleLink.com</td>
          <td> <button class="btn-danger" id="delete App">delete</button> </td>
        </tr>
        <tr>
          <td>Snapchat</td>
          <td>Julie Dooley</td>
          <td>App Votes</td>
          <td>www.sampleLink.com</td>
          <td> <button class="btn-danger" id="delete App">delete</button> </td>
        </tr>
      </tbody>
    </table>
  </div>

  <div class="container" id="Users Table" style="display:none">
    <table class="table table-hover table-striped">
      <thead>
        <tr>
          <th>Username</th>
          <th>First name</th>
          <th>Last Name</th>
          <th>User Votes</th>
          <th>Status</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>DoeJ97</td>
          <td>John</td>
          <td>Doe</td>
          <td>50</td>
          <td>User</td>
          <td> <button class="btn-danger">delete</button> </td>
        </tr>
        <tr>
          <tdead>
            <td>MoeM90</td>
            <td>Mary</td>
            <td>Moe</td>
            <td>10</td>
            <td>Moderator</td>
            <td> <button class="btn-danger">delete</button> </td>
        </tr>
        <tr>
          <td>BoJ88</td>
          <td>Jeff</td>
          <td>Bo</td>
          <td>125</td>
          <td>Admin</td>
          <td> <button class="btn-danger">delete</button> </td>
        </tr>
      </tbody>
    </table>
  </div>

  <div class="container" id="User Submissions Table" style="display:none">
    <table class="table table-hover table-striped">
      <thead>
        <tr>
          <th>App Name</th>
          <th>App Description</th>
          <th>User</th>
          <th>Approve?</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Twitter</td>
          <td>
            <p>This is a sample description of the app</p>
          </td>
          <td>DoeJ97</td>
          <td> <button class="btn-success">Yes</button> <button class="btn-danger">No</button></td>
        </tr>
        <tr>
          <td>Instagram</td>
          <td>
            <p>hghghghghugdlsnfjmrnsod;filjeosrdjgdklnrgokjtrngkldxjbnghk.dbndngzfesknfusneifhuweioshfusfiuhsiohfos</p>
            <p>The above text is 100 characters long</p>
            <p>...</p>
          </td>
          <td>MoeM88</td>
          <td> <button class="btn-success">Yes</button> <button class="btn-danger">No</button></td>
        </tr>
        <tr>
          <td>Viber</td>
          <td>
            <p>This is yet another sample description of the app</p>
          </td>
          <td>Jeff1000</td>
          <td> <button class="btn-success">Yes</button> <button class="btn-danger">No</button></td>
        </tr>
      </tbody>
    </table>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>

</html>