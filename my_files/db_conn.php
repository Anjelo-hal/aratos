<?php

function Open_Con(){
$sname= "localhost";
$uname= "root";
$password = "";

$db_name = "aratos";

$conn = new mysqli($sname, $uname, $password, $db_name);
return $conn;
}

?>