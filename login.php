<?php
$start = Mysqli_connect("localhost","root","","MCMS");

if(!$start){
    die("No Connection Found");
}

$email = $_POST["email"];
$password = $_POST["password"];

$print = "SELECT * FROM doctor1 where email='$email' AND password='$password'";
$result= Mysqli_query($start,$print);

if(MYsqli_num_rows($result) >0){
    header("location: success.html");
    exit();
}else{
   header("location: failed.html");
}
Mysqli_close($start);

?>