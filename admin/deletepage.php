<?php
    include_once '../lib/Session.php';
    Session::checkSession();

	include_once '../config/config.php';
	include_once '../lib/Database.php';
	$db = new Database();
 ?>
 <?php
    if (!isset($_GET['delpage']) || $_GET['delpage'] == NULL) {
        echo "<script>window.location = 'index.php';</script>";
    }else{
        $pageid = $_GET['delpage'];

        $delquery = "DELETE FROM tbl_page WHERE id = '$pageid'";
        $delData = $db->delete($delquery);
        if ($delData) {
            echo "<script>alert('Page delete Successfully.')</script>";
            echo "<script>window.location = 'index.php';</script>";
        }else {
            echo "Page not deleted !";
            echo "<script>window.location = 'index.php';</script>";
        }
    }
?>
