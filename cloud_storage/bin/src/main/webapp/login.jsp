<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jcloud.ServerPage" %>

<%
    if(ServerPage.auth(request)) response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/signin.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="js/signin.js"></script>

        <title>SignIn</title>
    </head>
    <body>
        <div id="signin">
            <div id="title"><hr>Sign In<hr></div>
            <form method="post" name="signin" action="/">
                <div id="email_in"><i class="bi bi-envelope"></i><input type="text" placeholder="Email">
                    <div id="email_v"></div>
                </div>
                <div id="password_in"><i class="bi bi-key"></i><input type="password" placeholder="Password">
                    <div id="password_v"></div>
                </div>
                <a href="forgotpass.jsp" style="margin-left: 85px;">forgot your password?</a>
            </form>
            <div id="button_cont">
                <div id="signin_button" onclick="sign_in();">SignIn</div>
                <div id="signup_button" onclick="swap(document.getElementById('signin'));">SignUp</div>
            </div>
        </div>
        <div id="signup">
            <div id="title"><hr>Sign Up<hr></div>
            <div id="profile_pic">
                <img id="profile_pic_img" src="img/user.png" alt="">
                <div id="layer" onclick="upload_img();"><img src="img/camera.png" alt=""></div>
            </div>
            <div id="profile_pic_v"></div>
            <form method="post" name="signup" action="/">
                <div id="fullname"><i class="bi bi-person"></i><input type="text" placeholder="Fullname">
                    <div id="fullname_v"></div>
                </div>
                <div id="email"><i class="bi bi-envelope"></i><input type="email" placeholder="Email">
                    <div id="email_v2"> </div>
                </div>
                <div id="password"><i class="bi bi-key"></i><input type="password" placeholder="password">
                    <div id="password_v2"></div>
                </div>
            </form>
            <div id="button_cont">
                <div id="signin_button" onclick="swap(document.getElementById('signup'));">SignIn</div>
                <div id="signup_button" onclick="sign_up();">SignUp</div>
            </div>
        </div>
        <script>

        </script>
    </body>
</html>