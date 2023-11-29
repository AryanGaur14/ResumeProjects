<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if(session.getAttribute("studentid")==null)
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
        <title>NOU - Student Zone</title>
        <link rel="stylesheet" href="../css/bootstrap.css">
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <br><h1 style="text-align: center">Welcome Student</h1><br>
        
        <div class="row">
            <div class="col-sm-12" style="min-height:600px;">
                <h2 style="color:blue; text-align: center">View Answer</h2>
                <table class="table table-bordered" style="width: 90%; margin: auto">
                        <tr>
                            <th>AId</th>
                            <th>Answer</th>
                            <th>Answered By</th>
                            <th>Posted Date</th>
                        </tr>
                        <%
                            int qid=Integer.parseInt(request.getParameter("qid"));
                            DbManager dm=new DbManager();
                            String query="select * from answer where qid='"+qid+"'";
                            ResultSet rs=dm.select(query);
                            while(rs.next()){
                        %>
                        <tr>
                            <td><%=rs.getInt("aid")%></td>
                            <td><%=rs.getString("answer")%></td>
                            <td><%=rs.getString("answeredby")%></td>
                            <td><%=rs.getString("posteddate")%></td>

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
