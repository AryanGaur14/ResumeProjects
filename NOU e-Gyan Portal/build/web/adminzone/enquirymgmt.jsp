<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else{
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NOU - Admin Zone</title>
        <link rel="stylesheet" href="../css/bootstrap.css">
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <br><h1 style="text-align: center">Welcome admin</h1><br>
        
        <div class="row">
            <div class="col-sm-12" style="min-height:600px;">
                <h2 style="color: blue; text-align: center;">Enquiry Management</h2>
                <table class="table table-bordered">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Contact No</th>
                        <th>Email Address</th>
                        <th> Enquiry text</th>
                        <th>Enquiry date</th>
                        <th>Delete</th>
                    </tr>
                    
                    <%
                        DbManager db=new DbManager();
                        String query="select * from enquiry";
                        ResultSet rs=db.select(query);
                        while(rs.next()){
                    %>
                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td><%=rs.getString("contactno")%></td>
                        <td><%=rs.getString("emailaddress")%></td>
                        <td><%=rs.getString("enquirytext")%></td>
                        <td><%=rs.getString("enquirydate")%></td>
                        <td><a href="delenquiry.jsp?id=<%=rs.getInt("id")%>"><button type="button" class="btn btn-danger">Delete</button></a></td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
