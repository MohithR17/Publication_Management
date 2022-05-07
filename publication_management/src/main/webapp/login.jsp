<%-- 
    Document   : index
    Created on : 21-Apr-2022, 7:40:35 PM
    Author     : duos1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PUBLICATION MANAGEMENT</title>
        <meta charset="UTF-8">
<!--        <meta name="viewport" content="width=device-width, initial-scale=1.0">-->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="IMAGES/paper.gif" type="image/gif">
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <div class="form-structor">
                <form id = "sp" action="SignUp" method ="post" >
                    <div class="signup">
                        <h2 class="form-title" id="signup"><span>or</span>Sign up</h2>
                        <div class="form-holder">
                            <input type="text" name = "user_name" class="input" placeholder="Name" />
                            <input type="email" name = "user_mail" class="input" placeholder="Email" />
                            <input type="password" name = "user_password" class="input" placeholder="Password" />
                        </div>
                        <button  type = "submit" class="submit-btn">Sign up</button>
                        <p class = "form-title" id = "msg" style = "color:greenyellow"><p>
                    </div>
                </form>
                <form id = "lg" action = "Login" method = "post"> 
                    <div class="login slide-up">
                        <div class="center">
                            <h2 class="form-title" id="login"><span>or</span>Log in</h2>
                            <div class="form-holder">
                                <input type="text" name = "user_name_or_email" class="input" placeholder="Username/Email" />
                                <input type="password" name = "user_password" class="input" placeholder="Password" />
                            </div>
                            <button  type = "submit" class="submit-btn">Log in</button>
                            <p class = "form-title" id = "msg1"></p>
                        </div>
                    </div>
                </form>
        </div>
    <!-- container //  -->
        
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
                crossorigin="anonymous">        
        </script>
        <script src="script.js"></script>
    </body>
</html>
