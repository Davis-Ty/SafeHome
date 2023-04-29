<%-- 
    Document   : safe home
    Created on : Apr 6, 2023, 3:06:27 PM
    Author     : Tyon Davis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Safe Home Login</title>
        <style>
            body {
                margin: 0 auto;
                max-width: 600px;
            }
            form {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
            #submit-login {
                order: 2;
                margin-top: 20px;
                margin-right: 10px;
            }
            #submit-signup {
                order: 3;
                margin-top: 10px;
            }
            h1 {
                background-color: lightblue;
                padding: 10px;
                text-align: center;
                margin-bottom: 0;
            }
            h1 span {
                display: block;
                text-align: center;
                font-size: 24px;
                font-weight: Bold;
            }
            button[type="submit"] {
                background-color: blue;
                color: white;
                border: none;
                border-radius: 5px;
                padding: 10px 20px;
                cursor: pointer;
                margin-right: 10px;
            }
            button[type="button"] {
                background-color: lightcoral;
                color: white;
                border: none;
                border-radius: 5px;
                padding: 10px 20px;
                cursor: pointer;
                margin-right: 10px;
                
            }
           #submit-Forgotpassword {
                margin-top: 10px;
            }
         
        </style>
    </head>
    <body>
        <h1> Safe Home <span>Login</span></h1>
        <form action="LoginCTL" method="post">
            <div id ="email">Email</div>
            <input type="text" name="email" /> </br>
            <div id ="pwd">Password</div>
            <input type="text" name="pwd" /> </br>
            <a href="sh_options.jsp"><button type="submit" id="submit-login">Login</button><a/>
            <a href="sh_forgotpassword.jsp"><button type="button" id="submit-Forgotpassword" style="padding: 10px 30px;">Forgot Password</button></a>
            
            
            
        </form>
    </body>
</html>
