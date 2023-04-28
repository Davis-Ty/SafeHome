<%-- 
    Document   : Safe Home Options
    Author     : cta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Safe Home Options</title>
    </head>
    <body>
        <h1>Safe Home: Options</h1>
        <table border = "3">
            <thead>
            <th>Action</th>
            <th>Master Control</th>
            <th>Room Select</th>
            </thead>
            <tbody>
                <tr>
                    <td>Alarm</td>
                    <td>
                        <button type = "submit"> On/Off </button>
                    </td>
                    <td>
                        <button type = "submit"> Select </button>
                    </td>
                </tr>
                <tr>
                    <td>Lights</td>
                    <td>
                        <button type = "submit"> On/Off </button>
                    </td>
                    <td>
                        <form action="sho_lights.jsp" method="post">
                            <button type = "submit"> Select </button>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>Doors</td>
                    <td>
                        <button type = "submit"> Lock/Unlock </button>
                    </td>
                    <td>
                        <form action="sho_doors.jsp" method ="post">
                            <button type = "submit"> Select </button>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>Windows</td>
                    <td>
                        <button type = "submit"> Lock/Unlock </button>
                    </td>
                    <td>
                        <form action ="sho_windows.jsp" method ="post">
                            <button type = "submit"> Select </button>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>Cameras</td>
                    <td>
                        <button type = "submit"> Start/Stop </button>
                    </td>
                    <td>
                        <form action="sho_cameras.jsp" method="post">
                            <button type = "submit"> Select </button>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
