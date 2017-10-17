<?php
    include_once '../lib/Session.php';
    Session::checkLogin();

	include_once '../config/config.php';
	include_once '../lib/Database.php';
	include_once '../helpers/Format.php';

	$db = new Database();
	$fm = new Format();
 ?>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">
        <?php
            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                $username = $fm->validation($_POST['username']);
                $password = $fm->validation(md5($_POST['password']));

                $username = mysqli_real_escape_string($db->link, $username);
                $password = mysqli_real_escape_string($db->link, $password);

                $query = "SELECT * FROM tbl_user WHERE username = '$username' AND password = '$password'";

                $result = $db->select($query);

                if ($result != false) {
                    //$value = mysqli_fetch_array($result);
                    $value = $result->fetch_assoc();
                    Session::set("login", true);
                    Session::set("username", $value['username']);
                    Session::set("userId", $value['id']);
                    Session::set("userRole", $value['role']);
                    header("location:index.php");
                }else {
                    echo "<span style='color:red; font-size: 18px;'>Username or Password not matched !!.</span>";
                }
            }
         ?>
		<form action="login.php" method="post">
			<h1>Admin Login</h1>
			<div>
				<input type="text" placeholder="Username" required="" name="username"/>
			</div>
			<div>
				<input type="password" placeholder="Password" required="" name="password"/>
			</div>
			<div>
				<input type="submit" value="Log in" />
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="forgetpass.php">Forget Password !</a>
		</div><!-- button -->
		<div class="button">
			<a href="#">Training with live project</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>
