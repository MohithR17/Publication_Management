<%-- 
    Document   : conference_signup
    Created on : 28-Apr-2022, 8:31:32 pm
    Author     : rajesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
    <header>
        <h1>Conference-Register</h1>
        <link rel="stylesheet" href="login_style.css">
    </header>
   
    <main>
        <form id="register_form" class="form_class" action="Conference_Reg" method="post">
            <div class="form_div">
                <label>Conference Acronym:</label>
                <input class="field_class" name="acronym" type="text" placeholder="" autofocus>
                <label>Conference Name:</label>
                 <input class="field_class" name="name" type="text" placeholder="" autofocus>
              
                <label>Password:</label>
                <input id="pass" class="field_class" name="password" type="password" placeholder="">
                <button class="submit_class" type="submit" form="register_form" onclick="return validarLogin()">Register</button>
            </div>
            <div class="info_div">
                <p> Have an account? <a href="conference_login.jsp">log In?</a></p>
            </div>
        </form>
    </main>
    <script src="login_js.js"></script>
    
    
</body>

