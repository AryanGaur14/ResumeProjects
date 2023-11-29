<%@page import="connect.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db=new DbManager();
    String query="delete from news where id='"+id+"'";
    if(db.insertUpdateDelete(query)==true){
          out.print("<script>alert('News is Deleted');window.location.href='adminhome.jsp';</script>");

    }
    else{
        out.print("<script>alert('News is not deleted');window.location.href='adminhome.jsp';</script>");
        
    }
    
%>