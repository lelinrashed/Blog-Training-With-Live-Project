<?php include_once 'inc/header.php'; ?>
<?php include_once 'inc/sidebar.php' ?>
<?php
    if (!isset($_GET['msgid']) || $_GET['msgid'] == NULL) {
        echo "<script>window.location = 'inbox.php'</script>";
    }else {
        $id = $_GET['msgid'];
    }
 ?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>View message</h2>
<?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        echo "<script>window.location= 'inbox.php'</script>";
    }
 ?>
                <div class="block">
                    <form action="" method="post">
    <?php
        $query = "SELECT * FROM tbl_contact WHERE id = '$id'";
        $msg = $db->select($query);
        if ($msg) {
            while ($result = $msg->fetch_assoc()) {
     ?>
                        <table class="form">
                            <tr>
                                <td>
                                    <label>Name</label>
                                </td>
                                <td>
                                    <input readonly type="text" value="<?php echo $result['firstname'].' '.$result['lastname']; ?>" class="medium" />
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <label>Email</label>
                                </td>
                                <td>
                                    <input readonly type="text" value="<?php echo  $result['email']; ?>" class="medium" />
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <label>Date</label>
                                </td>
                                <td>
                                    <input readonly type="text" value="<?php echo  $fm->formatDate($result['date']); ?>" class="medium" />
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <label>Message</label>
                                </td>
                                <td>
                                    <textarea class="tinymce" name="body">
                                        <?php echo $result['body']; ?> readonly
                                    </textarea>
                                </td>
                            </tr>

    						<tr>
                                <td></td>
                                <td>
                                    <input type="submit" name="submit" Value="Ok" />
                                </td>
                            </tr>
                        </table>
    <?php } } ?>
                    </form>
                </div>
            </div>
        </div>

        <!-- Load TinyMCE -->
        <script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                setupTinyMCE();
                setDatePicker('date-picker');
                $('input[type="checkbox"]').fancybutton();
                $('input[type="radio"]').fancybutton();
            });
        </script>

<?php include_once 'inc/footer.php'; ?>
