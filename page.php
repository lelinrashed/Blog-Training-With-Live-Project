<?php
	include_once 'inc/header.php';
 ?>
<?php
	if (!isset($_GET['pageid']) || $_GET['pageid'] == NULL) {
	    header("location:404.php");
	}else{
	    $pageid = $_GET['pageid'];
 	}
?>

<?php
	$query = "SELECT * FROM tbl_page WHERE id = '$pageid'";
	$pagedetails = $db->select($query);
	if ($pagedetails) {
		while ($result = $pagedetails->fetch_assoc()) {

 ?>
	<div class="contentsection contemplete clear">
		<div class="maincontent clear">
			<div class="about">
				<h2><?php echo $result['name']; ?></h2>
				<?php echo $result['body']; ?>
			</div>
		</div>
		<?php include_once 'inc/sidebar.php' ?>
	</div>
<?php
		}
	}else {
		header("location:404.php");
	}
 ?>

<?php include_once 'inc/footer.php'; ?>
