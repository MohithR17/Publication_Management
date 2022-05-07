<%-- 
    Document   : conference
    Created on : 27-Apr-2022, 10:05:16 AM
    Author     : duos1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="FU.css">

    </head>
    <body>
        <h1>Hello World!</h1>
        <%
    out.println(session.getAttribute("acronym"));
            %>   
        <form id="login_form" class="form_class" action="Conference_Home" method="post">
        <div id="FileUpload">
        <div class="wrapper">
          <div class="upload">
             <span class="upload__button"><input type="file" class="upload up" id="up" onchange="readURL(this);" /></span>
          </div>
          <div class="uploaded uploaded--one">
            <i class="far fa-file-pdf"></i>
            <div class="file">
              <div class="file__name">
                <label>I Author:</label>
                <input class="field_class" name="fa" type="text" placeholder="" autofocus>
                <i class="fas fa-times"></i>
              </div>
              <div class="progress">
                <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" style="width:100%"></div>
              </div>
            </div>
          </div>
          <div class="uploaded uploaded--two">
            <i class="far fa-file-pdf"></i>
            <div class="file">
              <div class="file__name">
                <label>II Author:</label>
                <input class="field_class" name="sa" type="text" placeholder="" autofocus>
                <i class="fas fa-times"></i>
              </div>
              <div class="progress">
                <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" style="width:80%"></div>
              </div>
            </div>
          </div>
          <div class="uploaded uploaded--three">
            <i class="far fa-file-pdf"></i>
            <div class="file">
              <div class="file__name">
                <label>III Author:</label>
                <input class="field_class" name="ta" type="text" placeholder="" autofocus>
                <i class="fas fa-times"></i>
              </div>
              <div class="progress">
                <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" style="width:60%"></div>
              </div>
            </div>
          </div>
            <button class="submit_class" type="submit" form="submit_form" onclick="return validarLogin()">Submit</button>
        </div>
      </div>
      </form>>
        <script src="FU.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        
    </body>
</html>-->

<body>
    <header>
        <h1><%
    out.println(session.getAttribute("acronym"));
            %>  </h1>
        <link rel="stylesheet" href="login_style.css">
    </header>
   
    <main>
<!--        <form id="login_form" class="form_class" action="Conference_Home" method="post", enctype="multipart/form-data">
            <div class="form_div">
                <label>Paper:</label>
                <input type="file" name="paper" />
                </br></br>
                <label>First Author : </label>
                <input id="pass" class="field_class" name="fn" type="text" placeholder="">
                <label>Second Author : </label>
                <input id="pass" class="field_class" name="sn" type="text" placeholder="">
                <label>Third Author : </label>
                <input id="pass" class="field_class" name="tn" type="text" placeholder="">
                <button class="submit_class" type="submit" form="login_form" onclick="return validarLogin()">Submit</button>
                Done? <a href="index.jsp">Home</a>
            </div>
            
               
            
        </form>-->
        <form id="login_form" class="form_class" method="post" action="Conference_Home" enctype="multipart/form-data">
            <div class="form_div">
                <label>Paper Ttile:</label>
                <input class="field_class" name="title" type="text" placeholder="" autofocus>
                <input type="file" name="file" />
                <input type="submit" value="Upload" />
            </div>
            Done? <a href="index.jsp">Home</a>
        </form>
    </main>
    <script src="login_js.js"></script>
    
    
</body>            