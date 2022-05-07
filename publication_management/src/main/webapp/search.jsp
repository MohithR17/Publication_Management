
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
        <link rel="stylesheet" href="avatar.css">
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
            .main-search-input {
                background: #fff;
                padding: 0 120px 0 0;
                border-radius: 1px;
                margin-top: 0px;
                box-shadow: 0px 0px 0px 6px rgba(255, 255, 255, 0.3)
            }

            .fl-wrap {
                float: left;
                width: 100%;
                position: relative
            }

            .main-search-input:before {
                content: '';
                position: absolute;
                bottom: -40px;
                width: 50px;
                height: 1px;
                background: rgba(255, 255, 255, 0.41);
                left: 50%;
                margin-left: -25px
            }

            .main-search-input-item {
                float: left;
                width: 100%;
                box-sizing: border-box;
                border-right: 1px solid #eee;
                height: 50px;
                position: relative
            }

            .main-search-input-item input:first-child {
                border-radius: 100%
            }

            .main-search-input-item input {
                float: left;
                border: none;
                width: 100%;
                height: 50px;
                padding-left: 20px
            }

            .main-search-button {
                background: #4DB7FE
            }

            .main-search-button {
                position: absolute;
                right: 0px;
                height: 50px;
                width: 120px;
                color: #fff;
                top: 0;
                border: none;
                border-top-right-radius: 0px;
                border-bottom-right-radius: 0px;
                cursor: pointer
            }

            .main-search-input-wrap {
                max-width: 500px;
                margin: 20px auto;
                position: relative
            }

            :focus {
                outline: 0
            }

            @media only screen and (max-width: 768px) {
                .main-search-input {
                    background: rgba(255, 255, 255, 0.2);
                    padding: 14px 20px 10px;
                    border-radius: 10px;
                    box-shadow: 0px 0px 0px 10px rgba(255, 255, 255, 0.0)
                }

                .main-search-input-item {
                    width: 100%;
                    border: 1px solid #eee;
                    height: 50px;
                    border: none;
                    margin-bottom: 10px
                }

                .main-search-input-item input {
                    border-radius: 6px !important;
                    background: #fff
                }

                .main-search-button {
                    position: relative;
                    float: left;
                    width: 100%;
                    border-radius: 6px
                }
            }
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
                            int limit = 0;
                            try {
                                name = request.getParameter("name");
                                aname = (String) request.getAttribute("name");
                                if (name == null) {
                                    name = aname;
                                }
                                FindIterable<Document> d = User.get_Document(name);

                                for (Document p : d) {
                                    profile_pic = p.getString("profile_pic");
                                    limit = p.getInteger("papers_download_limit");
                                }

                            } catch (Exception e) {
                                name = null;
                            }
                            request.setAttribute("name", name);
                        %>
                        <form action="user_index.jsp">
                            <li class="nav-item active" style="margin-left:20px"> <input type="submit" class = "btn btn-warning" style="font-weight: bold;padding-top: 25px;color:white" value = "Home"> </li>
                            <input type ="hidden" name="name" value="<%=name%>" />
                        </form>
                        <form action="search.jsp">
                            <li class="nav-item" style="margin-left:20px"><input type="submit" class = "btn btn-warning" style="font-weight: bold;padding-top: 25px;color:white" value = "Search"></li>
                            <input type ="hidden" name="title" value="<%=name%>" />
                        </form>
                        <li class="nav-item" style="margin-left:20px"><a class="nav-link" href="login.jsp" style="font-weight: bold;padding-top: 25px"> Login/SignUp </a></li>
                    </ul>
                    <ul class="navbar-nav ms-auto" style="padding-left:650px;font-weight: bold">
                        <li class="nav-item dropdown">
                            <a class="nav-link  dropdown-toggle" href="#" data-bs-toggle="dropdown" >My Profile </a>
                            <ul class="dropdown-menu dropdown-menu-end" >
                                <li><img src = "<%=profile_pic%>" style="padding-left: 30px;"/></li>
                                <li><p class="dropdown-item" 
                                       onclick="handle_click('<%=name%>')" style="padding-left: 40px;">View Profile</p></li>
                            </ul>
                        </li>
                    </ul>
                </div> <!-- navbar-collapse.// -->
            </div> <!-- container-fluid.// -->
        </nav>
        </div>
        <form action="Search">
        <div class="main-search-input-wrap">
            <div class="main-search-input fl-wrap">
                <div class="main-search-input-item"> <input type="text" name="title" value="" placeholder="Search Papers..."> </div> <button class="main-search-button">Search</button>
                <input type ="hidden" name="name" value="<%=name%>" />
            </div>
        </div>
        </form>
            <br>
            <br>
            <br>
            <br>
            <%
            
                String filename = (String)request.getAttribute("filename");
                
                if(filename == null)
                {
                    filename = "file";
                }
            
            %>
            <div class="row">
                <div class="col-md-12">
                    <div class="">
                        <table id="search_result" class="table table-borderless text-center">
                            <tbody>
                                <tr style="padding:5px">
                                    <td class="text-center" rowspan="3"><img class="" src = "IMAGES/search_result.jpg" height = "200" width = "200"></div
                                    </td>              
                                    <td colspan="2" class="display-4" style="font-weight:bold;font-style:italic;font-size:28px">PAPER TITLE</td>
                                    <td></td>
                                </tr>
                            <form action='Download_paper' method = "post"> 
                                <tr style="padding:5px">
                                    <td colspan="2"><%=filename%></td>
                                    <% if(limit > 0 && name != null) {%>
                                    <td><input type = "submit" class = "btn btn-danger"value = "Download PDF">
                                        <input type ="hidden" name ="filename" value ="<%=filename%>" />
                                        <input type ="hidden" name="name" value="<%=name%>" />
                                    </td>
                                    <%}%>
                                </tr>
                            </form>
                                <tr style="padding:5px">
                                    <td colspan="2" class="display-4" style="font-style:italic;"></td>
                                    <td></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="send_data.js"></script>
    </body>
</html>