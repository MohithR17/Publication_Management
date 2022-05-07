<%-- 
    Document   : index
    Created on : 26-Apr-2022, 9:36:53 PM
    Author     : duos1
--%>

<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.FindIterable"%>
<%@page import="com.ooad.publication_mangement.User"%>
<%@page import="com.ooad.publication_mangement.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PUBLICATION MANAGEMENT</title>
        <link rel="icon" href="IMAGES/paper.gif" type="image/gif">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"crossorigin="anonymous"></script>

        <style type="text/css">
        /* ============ desktop view ============ */
        @media all and (min-width: 992px) {
                .navbar .nav-item .dropdown-menu{
display: none;
}
                .navbar .nav-item:hover .nav-link{
}
                .navbar .nav-item:hover .dropdown-menu{
display: block;
}
                .navbar .nav-item .dropdown-menu{
margin-top:0;
}
        }
        /* ============ desktop view .end// ============ */

        </style>
        <style type="text/css">
            body{
             background-image: url("IMAGES/main.jpg");   
            }
             
            
        </style>
    </head>
    <body>
      <div class="">
        <nav class="navbar navbar-custom navbar-expand navbar-dark  bg-warning text-dark" >
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="main_nav">
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <p class="text-uppercase" style="padding:10px;color:whitesmoke;font-weight: bold">
                                <img src="IMAGES/paper.gif" width = "35" height="35"> PUBLICATION MANAGEMENT
                            </p>
                        </li>
                        <%
                            String name;
                            String aname;
                            String profile_pic = "";
                            try {
                                name = request.getParameter("name");
                                aname = (String) request.getAttribute("name");
                                if (name == null) {
                                    name = aname;
                                }
                                FindIterable<Document> d = User.get_Document(name);

                                for (Document p : d) {
                                    profile_pic = p.getString("profile_pic");
                                }

                            } catch (Exception e) {
                                name = null;
                            }
                            request.setAttribute("name", name);
                        %>
                        <form action="index.jsp">
                            <li class="nav-item active" style="margin-left:20px"> <input type="submit" class = "btn btn-warning" style="font-weight: bold;padding-top: 25px;color:white" value = "Home"> </li>
                            <input type ="hidden" name="name" value="<%=name%>" />
                        </form>
                        <form action="search.jsp">
                            <li class="nav-item" style="margin-left:20px"><input type="submit" class = "btn btn-warning" style="font-weight: bold;padding-top: 25px;color:white" value = "Search"></li>
                            <input type ="hidden" name="name" value="<%=name%>" />
                        </form>
                        <li class="nav-item" style="margin-left:20px"><a class="nav-link" href="login.jsp" style="font-weight: bold;padding-top: 25px"> Login/SignUp </a></li>
                    </ul>
                    <ul class="navbar-nav ms-auto" style="padding-left:650px;font-weight: bold">
                        <li class="nav-item dropdown">
                            <a class="nav-link  dropdown-toggle" href="#" data-bs-toggle="dropdown" >My Profile </a>
                            <ul class="dropdown-menu dropdown-menu-end" >
                                <li><img class = "img rounded-circle mb-2" src = "<%=profile_pic%>" style="padding-left: 30px;"/></li>
                                <li><p class="dropdown-item" 
                                       onclick="handle_click('<%=name%>')" style="padding-left: 40px;">View Profile</p></li>
                            </ul>
                        </li>
                    </ul>
                </div> <!-- navbar-collapse.// -->
            </div> <!-- container-fluid.// -->
        </nav>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="send_data.js"></script>
    </body>
</html>


