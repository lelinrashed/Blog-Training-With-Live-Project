<?php
    include_once 'inc/header.php';
    include_once 'inc/sidebar.php';
 ?>
 <?php
    if (!Session::get('userRole') == '0') {
        echo "<script>window.location = 'index.php'</script>";
    }
?>
        <div class="grid_10">

            <div class="box round first grid">
                <h2>Add New User</h2>
                <div class="block copyblock">
    <?php
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $username = $fm->validation($_POST['username']);
            $password = $fm->validation(md5($_POST['password']));
            $email = $fm->validation($_POST['email']);
            $role = $fm->validation($_POST['role']);

            $username = mysqli_real_escape_string($db->link, $username);
            $password = mysqli_real_escape_string($db->link, $password);
            $email = mysqli_real_escape_string($db->link, $email);
            $role = mysqli_real_escape_string($db->link, $role);

            if (empty($username) || empty($password) || empty($email) || empty($role)) {
                echo "<span class='error'>Field must not be empty.</span>";
            }else {
                $mailquery = "SELECT * FROM tbl_user WHERE email = '$email' LIMIT 1";
                $mailcheck = $db->select($mailquery);
                if ($mailcheck != false) {
                    echo "<span class='error'>Emial already exist !</span>";
                }else {
                    $query = "INSERT INTO tbl_user(username, password, email, role) VALUES('$username', '$password', '$email' '$role')";
                    $catinsert = $db->insert($query);
                    if ($catinsert) {
                        echo "<span class='success'>User created successfully.</span>";
                    }else{
                        echo "<span class='error'>User not created !</span>";
                    }
                }
            }
        }
     ?>
                    <form action="" method="post">
                        <table class="form">
                            <tr>
                                <td>
                                    <label for="">Username</label>
                                </td>
                                <td>
                                    <input type="text" name="username" placeholder="Enter User Name..." class="medium" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="">Password</label>
                                </td>
                                <td>
                                    <input type="text" name="password" placeholder="Enter password..." class="medium" />
                                </td>
                            </tr>
                            </tr>
                            <tr>
                                <td>
                                    <label for="">Email</label>
                                </td>
                                <td>
                                    <input type="text" name="email" placeholder="Enter email..." class="medium" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="">User Role</label>
                                </td>
                                <td>
                                    <select id="select" name="role">
                                        <option value="">Select User Role</option>
                                        <option value="0">Admin</option>
                                        <option value="1">Author</option>
                                        <option value="2">Editor</option>
                                    </select>
                                </td>
                            </tr>
    						<tr>
                                <td></td>
                                <td>
                                    <input type="submit" name="submit" Value="Create" />
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
<?php
    include_once 'inc/footer.php';
 ?>
