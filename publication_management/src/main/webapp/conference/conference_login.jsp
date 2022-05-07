<%-- 
    Document   : conference_login
    Created on : 28-Apr-2022, 8:23:36 pm
    Author     : rajesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
    <header>
        <h1>Conference-Login</h1>
        <link rel="stylesheet" href="login_style.css">
    </header>
   
    <main>
        <form id="login_form" class="form_class" action="Conference_Login" method="post">
            <div class="form_div">
                <label>Conference Acronym:</label>
                <input class="field_class" name="login_txt" type="text" placeholder="" autofocus>
                <label>Password:</label>
                <input id="pass" class="field_class" name="password_txt" type="password" placeholder="">
                <button class="submit_class" type="submit" form="login_form" onclick="return validarLogin()">Login</button>
            </div>
            <div class="info_div">
                <p> Don't have an account? <a href="conference_signup.jsp">Sign up?</a></p>
            </div>
        </form>
    </main>
    <script src="login_js.js"></script>
    
    
</body>
