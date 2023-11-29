<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager dm=new DbManager();
    String query="delete from response where id='"+id+"'";
    if(dm.insertUpdateDelete(query)==true){
        out.print("<script>alert('Feedback is deleted');window.location.href='feedbackmgmt.jsp';</script>");
    }
    else{
        out.print("<script>alert('Feedback is not deleted');window.location.href='feedbackmgmt.jsp';</script>");
    }
%>