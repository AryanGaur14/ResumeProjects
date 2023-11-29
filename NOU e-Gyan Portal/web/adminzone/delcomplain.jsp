<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager dm=new DbManager();
    String query="delete from response where id='"+id+"'";
    if(dm.insertUpdateDelete(query)==true){
        out.print("<script>alert('Complain is deleted');window.location.href='complainmgmt.jsp';</script>");
    }
    else{
        out.print("<script>alert('Complain is not deleted');window.location.href='complainmgmt.jsp';</script>");
    }
%>