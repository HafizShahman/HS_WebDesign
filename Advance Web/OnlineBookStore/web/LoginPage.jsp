<%-- 
    Document   : LoginPage
    Created on : Nov 12, 2020, 11:58:29 PM
    Author     : hafiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="modal-wrapper">
                <div class="profile-img">
                    <div class="profile-add"></div>
                </div>
                <div class="load-gif">
                    <div>Sending...</div>
                </div>
                <div class="text-wrapper show">
                    <div class="nav">
                        <div class="login">Login</div>
                        <div class="sign-up selected">Sign Up</div>
                    </div>
                    <form class="full-name">
                        <div class="form-title">Full Name</div>
                        <input class="content"></input>
                    </form>
                    <form class="email">
                        <div class="form-title">Email</div>
                        <input class="content"></input>
                    </form>
                    <form class="password">
                        <div class="security hide">
                            <div class="security-type">
                                <div class="security-level"><span class="secureValue"></span>%</div>
                                <div class="secure">secure</div>
                            </div>
                            <div class="fill circle"></div>
                            <div class="cover circle"></div>
                            <div class="background circle"></div>
                        </div>
                        <div class="form-title">Password</div>
                        <input type="password" class="content"></input>
                    </form>
                    <form class="retype">
                        <div class="form-title">Retype Password</div>
                        <input type="password" class="content"></input>
                    </form>
                    <div class="button">Submit</div>
                    <div class="forget">Forget your password?</div>
                </div>
            </div>
            <div class="overlay"></div>
        </div>
    </body>
</html>
