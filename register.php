<?php
session_start();
include "template/header.php";
?>



<body style="background-color:cornsilk;">


    <section class="vh-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="mt-5 row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-dark text-white" style="border-radius: 1rem;">


                        <form action="actions/register_action.php" method='post'>

                            <div class="card-body p-5 text-center">

                                <div class="mb-md-5 mt-md-4 pb-5">

                                    <h2 class="fw-bold mb-2 text-danger">Register</h2>
                                    <p class="text-white-50 mb-5">Please enter your Register and password!</p>

                                    <div data-mdb-input-init class="form-outline form-white mb-4">
                                        <input name="name" placeholder="Enter Name" type="text" id="typeEmailX" class="form-control form-control-lg" />
                                       
                                    </div>

                                    <div data-mdb-input-init class="form-outline form-white mb-4">
                                        <input name="username" placeholder="Enter username" type="text" id="typeEmailX" class="form-control form-control-lg" />
                                        <?php
                                        if (isset($_SESSION["errors"]["username"])) {
                                            echo $_SESSION["errors"]["username"];
                                        }
                                        ?>
                                    </div>

                                    <div data-mdb-input-init class="form-outline form-white mb-4">
                                        <input name="password" placeholder="Enter password" type="password" id="typePasswordX" class="form-control form-control-lg" />
                                        <?php
                                        if (isset($_SESSION["errors"]["password"])) {
                                            echo $_SESSION["errors"]["password"];
                                        }
                                        ?>
                                    </div>

                                    <div data-mdb-input-init class="form-outline form-white mb-4">
                                        <input name="re-password" placeholder="Re-Enter password" type="password" id="typePasswordX" class="form-control form-control-lg" />
                                        <?php
                                        if (isset($_SESSION["errors"]["re-password"])) {
                                            echo $_SESSION["errors"]["re-password"];
                                        }
                                        ?>
                                    </div>



                                    <button name="register" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-light btn-lg px-5" type="submit">Register</button>

                                </div>

                                <div>
                                    <p class="mb-0">Go to login <a href="login.php" class="text-white-50 fw-bold">Login</a>
                                    </p>
                                </div>

                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>

</body>


<?php
include "template/footer.php";
?>