<%-- 
    Document   : Safe Home Login
    Author     : cta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Safe Home Login</title>
    </head>
    <body>
        <h1>Please login with your email & password</h1>
        <form action="LoginCTL" method="post">
            <div id ="email">Email</div>
            <input type="text" name="email" /> </br>
            <div id ="pwd">Password</div>
            <input type="text" name="pwd" /> </br>
            <button type="submit"> Login </button>
        </form>
    </body>
</html>
