<?php include_once 'inc/header.php'; ?>
<?php include_once 'inc/sidebar.php' ?>
<style media="screen">
    .actiondel{
        margin-left: 10px;
    }
    .actiondel a {
        border: 1px solid #ddd;
        color: #444741;
        cursor: pointer;
        font-size: 18px;
        padding: 0px 10px;
        background: #DDDDDD;
        display: inline-block;
        font-weight: normal;
    }
</style>
<?php
    if (!isset($_GET['pageid']) || $_GET['pageid'] == NULL) {
        echo "<script>window.location = 'index.php';</script>";
    }else{
        $pageid = $_GET['pageid'];
    }
 ?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Add New Page</h2>
<?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $name  = mysqli_real_escape_string($db->link, $_POST['name']);
        $body  = mysqli_real_escape_string($db->link, $_POST['body']);



        if ($name == "" || $body == "") {
            echo "<span class='error'>Field must not be empty !</span>";
        }else{
            $query = "UPDATE tbl_page
                    SET
                    name = '$name',
                    body = '$body'
                    WHERE id = '$pageid'
            ";

            $updated_rows = $db->update($query);
            if ($updated_rows) {
                echo "<span class='success'>Page Updated Successfully.
                </span>";
            }else {
                echo "<span class='error'>Page Not Updated !</span>";
            }
        }
    }
 ?>
                <div class="block">
        <?php
            $query = "SELECT * FROM tbl_page WHERE id = '$pageid'";
            $pagedetails = $db->select($query);
            if ($pagedetails) {
                while ($result = $pagedetails->fetch_assoc()) {

         ?>
                    <form action="" method="post">
                        <table class="form">
                            <tr>
                                <td>
                                    <label>Name</label>
                                </td>
                                <td>
                                    <input type="text" name="name" value="<?php echo $result['name']; ?>" class="medium" />
                                </td>
                            </tr>

                            <tr>
                                <td style="vertical-align: top; padding-top: 9px;">
                                    <label>Content</label>
                                </td>
                                <td>
                                    <textarea class="tinymce" name="body">
                                        <?php echo $result['body']; ?>
                                    </textarea>
                                </td>
                            </tr>

    						<tr>
                                <td></td>
                                <td>
                                    <input type="submit" name="submit" Value="Update" />
                                    <span class="actiondel"><a href="deletepage.php?delpage=<?php echo $result['id']; ?>" onclick="return confirm('Are you sure to Delete !')">Delete</a></span>
                                </td>
                            </tr>
                        </table>
                    </form>
        <?php
                }
            }
         ?>
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
