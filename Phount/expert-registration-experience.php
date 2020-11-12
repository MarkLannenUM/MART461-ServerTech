<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="styles.css">

    <!--    Google Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Rubik:300|Sanchez&display=swap" rel="stylesheet">
    <!--    Custom JavaScript-->

    <title>Expert Experience</title>
</head>

<body>

    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #00518f">
        <div class="container-fluid">
            <a class="navbar-brand Sanchez" href="index.html">Phount</a>
        </div>
    </nav>

    <?php

        require("pdo-connection.php");
        session_start();
        $user_id = $_SESSION["user_id"];
        
        if($_SERVER["REQUEST_METHOD"]  == "POST")  {  
        $category = $_POST["txtCategory"];
        $_SESSION['category_id'] = $category;
        
        echo ('Connection Successful' . '<br />' . "User ID: ". $user_id
        . " CategoryID: " . $category);                          
        }




        $sql = 'CALL spInsertExpertCategory(:UserID, :CategoryID)';        

        $stmt = $cn->prepare($sql);

        $stmt->bindParam(':UserID', $user_id, PDO::PARAM_STR);
        $stmt->bindParam(':CategoryID', $category, PDO::PARAM_STR); 

        $stmt->execute();

    ?>

    <section id="expert-skills-section" class="my-5">
        <div class="container col-md-8">
            <div class="row justify-content-center mx-3">
                <img src="graphics/Phount-2-red-fill-35px.svg" class="mr-3" height="35px" width="35px" alt=""/>
                <h4 class="mb-5">What is your experience level?</h4>
            </div>
            <form action="expert-profile.php" method="POST" id="expertExperienceForm" class="">
                <div class="row justify-content-center">
                   
                </div>
                <div class="row justify-content-center">
                    <div class="form-group col-10 col-md-8 col-lg-6">
                        <div class="form-group">
                            <label for="my-textarea">Describe Your Experience and list your specific skills</label>
                            <textarea id="expertExperienceTextArea" class="form-control" name="txtExpertExperience" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center ">
                    <button type="submit" runat="server" class="btn submit-add-experience-button" OnClick="btn_Expert_Profile">Submit and View Your Profile</button>
                </div>
            </form>
        </div>
    </section>



    <!-- Footer -->
    <footer class="page-footer font-small blue pt-4">

        <!-- Footer Links -->
        <div class="container-fluid text-center text-md-left">

            <!-- Grid row -->
            <div class="row">

                <!-- Grid column -->
                <div class="col-md-6 mt-md-0 mt-3">

                    <!-- Content -->
                    <h5 class="text-uppercase">Footer Content</h5>
                    <p>Here you can use rows and columns to organize your footer content.</p>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none pb-3">

                <!-- Grid column -->
                <div class="col-md-3 mb-md-0 mb-3">

                    <!-- Links -->
                    <h5 class="text-uppercase">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Link 1</a>
                        </li>
                        <li>
                            <a href="#!">Link 2</a>
                        </li>
                        <li>
                            <a href="#!">Link 3</a>
                        </li>
                        <li>
                            <a href="#!">Link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-3 mb-md-0 mb-3">

                    <!-- Links -->
                    <h5 class="text-uppercase">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Link 1</a>
                        </li>
                        <li>
                            <a href="#!">Link 2</a>
                        </li>
                        <li>
                            <a href="#!">Link 3</a>
                        </li>
                        <li>
                            <a href="#!">Link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

        </div>
        <!-- Footer Links -->

    </footer>
    <!-- Footer -->




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script type="text/javascript" src="scripts.js"></script>
</body>
</html>