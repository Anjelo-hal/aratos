<?php 
session_start();

if (isset($_SESSION['username'])) {

 ?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style0.css"
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">Add</a>
  <a href="#">Edit</a>
  <a href="#">Delete</a>
  <a href="#">Search</a>
</div>


<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Students</span>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
   <div id="divid0">
	<span>
     <h1>Hello, <?php echo $_SESSION['name'] . ' ' . $_SESSION['surname'] ; ?></h1>
	</span>
	<span>
     <a id="trs" href="logout.php">Logout</a>
	</span>
	</div>
</body>
</html> 
<?php 
}else{
     header("Location: index.php");
     exit();
}
 ?>