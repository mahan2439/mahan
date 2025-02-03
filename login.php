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


                        <form action="actions/login_action.php" method='post' class="card-body p-5 text-center">


                            <div class="mb-md-5 mt-md-4 pb-5">

                                <h2 class="fw-bold mb-2 text-uppercase ">Login</h2>
                                <p class="text-white-50 mb-5">Please enter your login and password!</p>
                                
                                <div class="col-12">
                                    <div data-mdb-input-init class="form-outline form-white mb-4 form-group">
                                        <input name="username" placeholder="Enter username" type="text" id="username" class="form-control form-control-lg" />
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div data-mdb-input-init class="form-outline form-white mb-4 form-group">
                                        <input name="password" placeholder="Enter password" type="password" id="password" class="form-control form-control-lg" />
                                    </div>
                                </div>

                                <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

                                <button name="submit"  class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>

                            </div>

                            <div>
                                <p class="mb-0">Don't have an account? <a href="register.php" class="text-white-50 fw-bold">Sign Up</a>
                                </p>
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