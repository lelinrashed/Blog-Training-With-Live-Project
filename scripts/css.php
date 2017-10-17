<link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.css">
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="style.css">
<style media="screen">
	span.pagination {
		font-size: 20px;
		text-align: center;
		display: block;
		padding: 10px;
		margin-top: 20px;
	}
	span.pagination a {
	    background: #B7801C;
	    color: #fff;
	    text-decoration: none;
	    padding: 5px 5px;
	    border-radius: 5px;
	}
</style>
<?php
	$query = "SELECT * FROM tbl_theme WHERE id = '1'";
	$themes = $db->select($query);
	while ($result = $themes->fetch_assoc()) {
		if ($result['theme'] == 'default') { ?>
			<link rel="stylesheet" href="theme/default.css">
	<?php	}elseif ($result['theme'] == 'green') { ?>
			<link rel="stylesheet" href="theme/green.css">
	<?php	} ?>
	<?php	} ?>
