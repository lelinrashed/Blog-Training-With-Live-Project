<?php
    include_once '../lib/Session.php';
    Session::checkSession();

	include_once '../config/config.php';
	include_once '../lib/Database.php';
	include_once '../helpers/Format.php';

	$db = new Database();
 ?>
 <?php
    if (!isset($_GET['delpostid']) || $_GET['delpostid'] == NULL) {
        echo "<script>window.location = 'postlist.php';</script>";
    }else{
        $postid = $_GET['delpostid'];

        $query = "SELECT * FROM tbl_post WHERE id = '$postid'";
        $getData = $db->select($query);
        if ($getData) {
            while ($delimg = $getData->fetch_assoc()) {
                $dellink = $delimg['image'];
                unlink($dellink);
            }
        }

        $delquery = "DELETE FROM tbl_post WHERE id = '$postid'";
        $delData = $db->delete($delquery);
        if ($delData) {
            echo "<script>alert('Data delete Successfully.')</script>";
            echo "<script>window.location = 'postlist.php';</script>";
        }else {
            echo "Data not deleted !";
            echo "<script>window.location = 'postlist.php';</script>";
        }
    }
?>
