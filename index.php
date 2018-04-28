<!-- Original code taken from https://www.w3schools.com/php/php_form_validation.asp
Modified with additions for SQLite
-->

<html>
<head>
</head>
<body>  

<?php
 echo "<p> Thanks for trusting us with ur credentials! </p>";
// define variables and set to empty values
$name = $email = $address = "";
$mobile = $account = $password;
$db = new SQLite3('sql.db');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) 
  {
    $nameErr = "Name is required";
  } 
  else 
  {
  	$name = test_input($_POST["name"]);
 	if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
      		$nameErr = "Only letters and white space allowed";
      	}
   }
  if (empty($_POST["address"])) 
  {
    $AddErr = "Address is required";
  } 
  else
  {
  	$address = test_input($_POST["address"]);
  }
  if (empty($_POST["email"])) 
  {
    $EmailErr = "Email is required";
  } 
  else
  {
  	$email = test_input($_POST["email"]);
  	if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      		$EmailErr = "Invalid email format";
      	}
  }
  if (empty($_POST["mobile number"])) 
  {
    $MobErr = "Mobile number is required";
  } 
  else
  {
  	$mobile = $_POST["mobile number"]; 
  }
  if (empty($_POST["account number"])) 
  {
    $AccErr = "Account number is required";
  } 
  else
  {
  	$account = $_POST["account number"]; 
  }
  if (empty($_POST["account password"])) 
  {
    $PassErr = "Password is required";
  } 
  else
  {
  	$password = $_POST["account password"];
  }
  $qstr = "insert into records values ('$name', '$address','$email','$mobile', '$account','$password')";
  $insres = $db->query($qstr);
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>

<h2>Info</h2>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  Name: <input type="text" name="name" value="<?php echo $name;?>">
   <span class="error">* <?php echo $nameErr;?></span>
  <br><br>
  Addr: <input type="text" name="address" value="<?php echo $address;?>">
   <span class="error">* <?php echo $AddErr;?></span>
  <br><br>
  E-mail: <input type="text" name="email" value="<?php echo $email;?>">
   <span class="error">* <?php echo $EmailErr;?></span>
  <br><br>
  Mobile: <input type="number" name="mobile" value="<?php echo $mobile;?>">
  <span class="error">* <?php echo $MobErr;?></span>
  <br><br>
  Account: <input type="number" name="account" value="<?php echo $account;?>">
  <span class="error">* <?php echo $AccErr;?></span>
  <br><br>
  Password: <input type="password" name="password" value="<?php echo $password;?>">
  <span class="error">* <?php echo $PassErr;?></span>
  <br><br>
  <input type="submit" name="submit" value="Submit">
  <input type="reset" name="reset" value="Reset">  
</form>

<?php
echo "<h2>Records:</h2>";

$results = $db->query("SELECT * FROM Records");
while ($row = $results->fetchArray()) {
	    echo "<br> $row[0] $row[1] $row[2] $row[3] $row[4] $row[5]";
}
/*echo $name;
echo "<br>";
echo $address;
echo "<br>";
echo $email;
echo "<br>";
echo $mobile;
echo "<br>";
echo $account;
echo "<br>";
echo $password;*/
?>

</body>
</html>
