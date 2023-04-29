<%-- 
    Document   : Safe Home Options
    Author     : cta 
    Author     :Tyon Davis
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
            <th>View Documents</th>
            </thead>
            <tbody>
                <tr>
                    <td>Alarm</td>
                    <td>
                        <button type="button" onclick="toggleAlarms()">On/Off</button>
                    </td>
                    <td>
                        <form action="sho_Alarms.jsp" method="post">
                            <button type = "submit"> Select </button>
                        </form>
                    </td>
                </tr>
                <script>
                    function toggleAlarms() {
                        var button = document.querySelector('button[onclick="toggleAlarms()"]');
                        if (button.textContent === "On/Off") {
                            button.textContent = "Off";
                        } 
                        else if(button.textContent === "Off") {
                            button.textContent = "On";
                        }
                        else if(button.textContent === "On"){
                            button.textContent = "Off";
                        }
                        else {
                            button.textContent = "Error";
                        }
                    }
                </script>
                
                <tr>
                    <td>Lights</td>
                    <td>
                        <button type = "button" onclick="toggleLights()">On/Off</button>
                    </td>
                    <td>
                        <form action="sho_lights.jsp" method="post">
                            <button type = "submit">Select </button>
                        </form>
                    </td>
                </tr>
                <script>
                    function toggleLights() {
                        var button = document.querySelector('button[onclick="toggleLights()"]');
                        if (button.textContent === "On/Off") {
                            button.textContent = "Off";
                        } 
                        else if(button.textContent === "Off") {
                            button.textContent = "On";
                        }
                        else if(button.textContent === "On"){
                            button.textContent = "Off";
                        }
                        else {
                            button.textContent = "Error";
                        }
                    }
                </script>
                
                <tr>
                    <td>Doors</td>
                    <td>
                        <button type = "button" onclick="toggleDoors()">Lock/Unlock</button>
                    </td>
                    <td>
                        <form action="sho_doors.jsp" method ="post">
                            <button type = "submit">Select </button>
                        </form>
                    </td>
                </tr>
                <script>
                    function toggleDoors() {
                        var button = document.querySelector('button[onclick="toggleDoors()"]');
                        if (button.textContent === "Lock/Unlock") {
                            button.textContent = "Lock";
                        } 
                        else if(button.textContent === "Lock") {
                            button.textContent = "Unlock";
                        }
                        else if(button.textContent === "Unlock") {
                            button.textContent = "Lock";
                        }
                        else {
                            button.textContent = "Error";
                        }
                    }
                </script>
                
                <tr>
                    <td>Windows</td>
                    <td>
                        <button type = "button" onclick="toggleWindows()">Lock/Unlock</button>
                    </td>
                    <td>
                        <form action ="sho_windows.jsp" method ="post">
                            <button type = "submit"> Select </button>
                        </form>
                    </td>
                </tr>
                <script>
                    function toggleWindows() {
                        var button = document.querySelector('button[onclick="toggleWindows()"]');
                        if (button.textContent === "Lock/Unlock") {
                            button.textContent = "Lock";
                        } 
                        else if(button.textContent === "Lock") {
                            button.textContent = "Unlock";
                        }
                        else if(button.textContent === "Unlock") {
                            button.textContent = "Lock";
                        }
                        else {
                            button.textContent = "Error";
                        }
                    }
                </script>
                <tr>
                    <td>Cameras</td>
                    <td>
                        <button type="button" onclick="toggleCameras()">On/Off</button>
                    </td>
                    <td>
                        <form action="sho_cameras.jsp" method="post">
                            <button type = "submit"> Select </button>
                        </form>
                    </td>
                </tr>
                <script>
                    function toggleCameras() {
                        var button = document.querySelector('button[onclick="toggleCameras()"]');
                        if (button.textContent === "On/Off") {
                            button.textContent = "Off";
                        } 
                        else if(button.textContent === "Off") {
                            button.textContent = "On";
                        }
                        else if(button.textContent === "On"){
                            button.textContent = "Off";
                        }
                        else {
                            button.textContent = "Error";
                        }
                    }
                </script>
                <tr>
                    <td>Garage</td>
                    <td>
                        <button type="button" onclick="toggleGarage()">Open/Close</button>
                    </td>
      
                    
                    <td>
                        <form action="sho_Garage.jsp" method="post">
                            <button type = "submit"> Select </button>
                        </form>
                    </td>
                </tr>
                <script>
                    function toggleGarage() {
                        var button = document.querySelector('button[onclick="toggleGarage()"]');
                        if (button.textContent === "Open/Close") {
                            button.textContent = "Close";
                        } 
                        else if(button.textContent === "Open") {
                            button.textContent = "Close";
                        }
                        else if(button.textContent === "Close"){
                            button.textContent = "Open";
                        }
                        else {
                            button.textContent = "Error";
                        }
                    }
                </script>
                <tr>
                    <td>AC</td>
                    <td>
                        <button type="button" onclick="toggleAC()">On/Off</button>
                    </td>
                    <td>
                        <form action="sho_AC.jsp" method="post">
                            <button type = "submit"> Select </button>
                        </form>
                    </td>
                </tr>
                <script>
                    function toggleAC() {
                        var button = document.querySelector('button[onclick="toggleAC()"]');
                        if (button.textContent === "On/Off") {
                            button.textContent = "Off";
                        } 
                        else if(button.textContent === "Off") {
                            button.textContent = "On";
                        }
                        else if(button.textContent === "On"){
                            button.textContent = "Off";
                        }
                        else {
                            button.textContent = "Error";
                        }
                    }
                </script>
                <tr>
                    <td>Trusted User</td>
                    
                    <td>
                        <form action="sho_addUser.jsp" method="post">
                            <button type = "select"> Add </button>
                        </form>
                    </td>
                    <td>
                        
                    </td>
                        
                    <td>
                        <form action="sho_TrustedUser.jsp" method="post">
                            <button type = "submit"> View </button>
                        </form>
                        
                    </td>
                </tr>
                <tr>
                    <td>Emergency Information</td>
                    
                    <td>
                        <form action="sho_addEmergencyInfo.jsp" method="post">
                            <button type = "select"> Update/Add </button>
                        </form>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        <form action="sho_EmergencyInfo.jsp" method="post">
                            <button type = "submit"> View </button>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>Emergency Verification</td>
                    <td>
                        <button type="button" onclick="toggleEmergencyVer()">On</button>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        <form action="report.jsp">
                            <button type = "submit"> View </button>
                        </form>
                    </td>
                </tr>
                <script>
                    function toggleEmergencyVer() {
                        var button = document.querySelector('button[onclick="toggleEmergencyVer()"]');
                        if (button.textContent === "On") {
                            button.textContent = "Off";
                        } 
                        else if(button.textContent === "Off") {
                            button.textContent = "On";
                        }
                        else {
                            button.textContent = "Error";
                        }
                    }
                </script>
                
            </tbody>
        </table>
        <form action="sh_login.jsp">
            <button type="submit">Logout</button>
        </form>
    </body>
</html>

