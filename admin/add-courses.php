<?php
session_start();
include('../includes/dbconn.php');
include('../includes/check-login.php');
check_login();
if (isset($_POST['submit'])) {
    $coursecode = $_POST['cc'];
    $coursesn = $_POST['cns'];
    $coursefn = $_POST['cnf'];
    $query = "INSERT into courses (course_code,course_sn,course_fn) values(?,?,?)";
    $stmt = $mysqli->prepare($query);
    $rc = $stmt->bind_param('sss', $coursecode, $coursesn, $coursefn);
    $stmt->execute();
    echo "<script>alert('Course has been added successfully');</script>";
}
?>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../new_images/favicon.png">
    <title>KobeStay Hub - Add Courses</title>
    <link href="../assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <link href="../assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="../dist/css/style.min.css" rel="stylesheet">
</head>

<body>
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <header class="topbar" data-navbarbg="skin6">
            <?php include 'includes/navigation.php' ?>
        </header>
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <?php include 'includes/sidebar.php' ?>
            </div>
        </aside>
        <div class="page-wrapper">
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Add Courses</h4>
                        <div class="d-flex align-items-center">
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <form method="POST">
                    <div class="row">
                        <div class="col-sm-12 col-md-6 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Course Code</h4>
                                    <div class="form-group">
                                        <input type="text" name="cc" placeholder="Enter Course Code" id="cc" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Course Full Name</h4>
                                    <div class="form-group">
                                        <input type="text" name="cnf" placeholder="Enter Course Name" id="cnf" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Course Shortform</h4>
                                    <div class="form-group">
                                        <input type="text" name="cns" id="cns" placeholder="Example: BIT, MIT" required="required" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="text-center">
                            <button type="submit" name="submit" class="btn btn-success">Insert</button>
                            <button type="reset" class="btn btn-danger">Reset</button>
                        </div>
                    </div>
                </form>
            </div>
            <?php include '../includes/footer.php' ?>
        </div>
    </div>
    <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="../assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../dist/js/app-style-switcher.js"></script>
    <script src="../dist/js/feather.min.js"></script>
    <script src="../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../dist/js/sidebarmenu.js"></script>
    <script src="../dist/js/custom.min.js"></script>
    <script src="../assets/extra-libs/c3/d3.min.js"></script>
    <script src="../assets/extra-libs/c3/c3.min.js"></script>
    <script src="../assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="../dist/js/pages/dashboards/dashboard1.min.js"></script>
</body>

</html>