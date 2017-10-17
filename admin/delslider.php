<?php
    include_once '../lib/Session.php';
    Session::checkSession();

	include_once '../config/config.php';
	include_once '../lib/Database.php';
	include_once '../helpers/Format.php';

	$db = new Database();
 ?>
 <?php
    if (!isset($_GET['sliderid']) || $_GET['sliderid'] == NULL) {
        echo "<script>window.location = 'sliderlist.php';</script>";
    }else{
        $sliderid = $_GET['sliderid'];

        $query = "SELECT * FROM tbl_slider WHERE id = '$sliderid'";
        $getData = $db->select($query);
        if ($getData) {
            while ($delimg = $getData->fetch_assoc()) {
                $dellink = $delimg['image'];
                unlink($dellink);
            }
        }

        $delquery = "DELETE FROM tbl_slider WHERE id = '$sliderid'";
        $delData = $db->delete($delquery);
        if ($delData) {
            echo "<script>alert('Slider delete Successfully.')</script>";
            echo "<script>window.location = 'sliderlist.php';</script>";
        }else {
            echo "Slider not deleted !";
            echo "<script>window.location = 'sliderlist.php';</script>";
        }
    }
?>
