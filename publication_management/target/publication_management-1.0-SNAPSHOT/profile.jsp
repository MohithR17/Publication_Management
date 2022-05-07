<%-- 
    Document   : profile
    Created on : 26-Apr-2022, 4:24:24 PM
    Author     : duos1
--%>

<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.FindIterable"%>
<%@page import="com.ooad.publication_mangement.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <link rel="stylesheet" href="profile.css">
        <link rel="icon" href="IMAGES/paper.gif" type="image/gif">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
    </head>
    <body>
      <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
                <%
            String aname = (String)request.getAttribute("name");
            String name = request.getParameter("name");
            if(name == null) name = aname;
            FindIterable<Document> d = User.get_Document(name);
            String user_name= "";
            String mail = "";
            boolean isPremium = false;
            int download_limit = 3;
            int no_of_papers = 0;
            int no_of_searches = 0;
            String profile_pic = "";
            for (Document p : d) {
                user_name = p.getString("name");
                mail = p.getString("email");
                isPremium = p.getBoolean("isPremium");
                download_limit = p.getInteger("papers_download_limit");
                no_of_papers = p.getInteger("no_of_papers");
                no_of_searches = p.getInteger("no_of_searches");
                profile_pic = p.getString("profile_pic");
            }
            request.setAttribute("user_name",user_name);
        %>
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                <img class="rounded-circle mt-5" width="150px" src="<%=profile_pic%>">
                <div class ="row mt-5">
                    <form action ="avatar.jsp">
                    <input class="btn btn-primary"  type="submit" value="Edit Avatar">
                    <input type="hidden" name ="user_name" value="<%=user_name%>"/>
                    </form>
                    <form action="user_index.jsp">
                        <input type="submit" class="btn btn-primary" style = "margin-top: 30px" value="Return To Home">
                         <input type="hidden" name ="name" value="<%=user_name%>"/>
                    </form>
                </div>
           </div>
        </div>

        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels" id = "name" >USERNAME</label><p class="lead"><%= user_name%></p></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels" id = "email">Email ID</label><p class="lead"><%= mail%></p></div>
                </div>

            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-left">Additional Info</h4>
                </div>
                <div class="col-md-12"><label class="labels" id = "nop">No of papers : </label><p class="lead"><%=no_of_papers%></p></div> <br>
                <% 
                    if(isPremium == true) { %>
                <div class="col-md-12"><label class="labels" id = "nos">No. of searches / downloads / citations </label><p class="lead"><%=no_of_searches%></p></div>
                <% } %>
            </div>
            <%
                if(isPremium == false) { %>
            <div class ="row mt-5">
                <form action="Handle_Premium"> 
                <input class="btn btn-primary p-3 mb-2 bg-warning text-dark" type="submit" onclick="" value="Buy Premium" id="premium">
                <input type="hidden" name ="user_name" value ="<%=user_name%>" />
                </form>
            </div>
            
        </div>
             <% } %>
        
    </div>
    
</div>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
            crossorigin="anonymous">        
    </script>
    <script src="additional.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>
</html>
