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
                <h2 style="color:blue; text-align: center;">News Management</h2>
                <form class="form-group" method="post" action="admincontroller.jsp">
                    <input type="hidden" name= "page" value="adminhome"/>
                    <table class="table table-bordered" style="margin: auto; width: 70%;">
                        <tr>
                            <td>Enter News Text</td>
                            <td>
                                <textarea name="newstext" class="form-control" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-success">Add News</button>
                            </td>
                        </tr>
                    </table>
                </form>
                <br/>
                <table class="table table-bordered">
                        <tr>
                            <th>Id</th>
                            <th>News Text</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            DbManager dm=new DbManager();
                            String query="select * from news";
                            ResultSet rs=dm.select(query);
                            while(rs.next()){
                        %>
                        <tr>
                            <td><%=rs.getInt("id")%></td>
                            <td><%=rs.getString("newstext")%></td>
                            <td><%=rs.getString("posteddate")%></td>
                            <td><a href="delnews.jsp?id=<%=rs.getInt("id")%>"><button type="button" class="btn btn-danger" >Delete</button></a></td>
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
