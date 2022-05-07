<%-- 
    Document   : avatar
    Created on : 27-Apr-2022, 1:24:08 PM
    Author     : duos1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>Choose Avatar</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
         <link rel="icon" href="IMAGES/paper.gif" type="image/gif">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="avatar.css">

	</head>
	<body>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
                <% 
                
                    String user_name = request.getParameter("user_name");
                
                %>
                <form action = "Avatar" >                            
                <table class="table table-bordered text-center">
                <thead>
                <tr>
                  <th>1</th>
                  <th>2</th>
                  <th>3</th>
                  <th>4</th>
                  <th>5</th>
                  <th>6</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/1.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/1.png" checked />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/2.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/2.png"  />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/3.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/3.png"/>
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/4.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/4.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/5.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/5.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/6.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/6.png"  />
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/7.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/7.png"  />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/8.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/8.png"  />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/9.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/9.png"/>
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/10.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/10.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/11.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/11.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/12.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/12.png"  />
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/13.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/13.png"  />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/14.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/14.png"  />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/15.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/15.png"/>
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/16.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/16.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/17.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/17.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/18.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/18.png"  />
                    </td>
                </tr>                
                <tr>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/19.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/19.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/20.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/20.png"  />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/21.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/21.png"/>
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/22.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/22.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/23.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/23.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/24.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/24.png"  />
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/25.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/25.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/26.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/26.png"  />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/27.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/27.png"/>
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/28.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/28.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/29.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/29.png" />
                    </td>
                    <td class="text-center">
                        <div class="img rounded-circle mb-2" style="background-image: url(IMAGES/AVATARS/30.png);"></div>
                        <input type="radio" name ="avatar" value ="IMAGES/AVATARS/30.png"  />
                    </td>
                </tr>
              </tbody>
              <tfoot>
                  <tr>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th></th> 
                     <th><input class="btn btn-primary" type="submit"  value="Save Avatar" id="premium"></th>
                   </tr>
              </tfoot>
            </table>
            <input type="hidden" name ="user_name" value="<%=user_name%>"/>
        </form>
					</div>
				</div>
			</div>
		</div>
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

