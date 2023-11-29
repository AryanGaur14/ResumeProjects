<%-- 
    Document   : logout
    Created on : 19 Oct, 2023, 10:00:51 AM
    Author     : kumar
--%>
<%
 session.invalidate();
 
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'",1000);
            }
        </script>
    </head>
    <body onload="logout()">
        
    </body>
</html>
