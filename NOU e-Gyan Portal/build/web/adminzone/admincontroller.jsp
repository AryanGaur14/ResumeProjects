<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
  if (request.getParameter("page").equals("changepassword")) {
        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        String userid = (String) session.getAttribute("adminid");

        DbManager db = new DbManager();
        String query1 = "select * from login where userid='" + userid + "'";

        ResultSet rs = db.select(query1);
        if (rs.next()) {
            String oldpassword1 = rs.getString("password");
            if (oldpassword1.equals(oldpassword)) {
                String query = "update login set password = '" + newpassword + "' where password='" + oldpassword + "' and userid='" + userid + "' ";

                if (db.insertUpdateDelete(query) == true) {

                    out.print("<script>alert('Password update succussfully.'); window.location.href='logout.jsp';</script>");

                } else {
                    out.print("<script>alert('Password Updated Unsucessfully'); window.location.href='changepassword.jsp';</script>");
                }
            } else {
                out.print("<script>alert('Please Enter Correct Old Password!'); window.location.href='changepassword.jsp';</script>");
            }
        }
    }  
  else if(request.getParameter("page").equals("adminhome")){
    String newstext=request.getParameter("newstext");
    DbManager db=new DbManager();
    String query="insert into news(newstext, posteddate) values('"+newstext+"', curdate())";
    
    if(db.insertUpdateDelete(query)==true)
    {
         out.print("<script>alert('News is added'); window.location.href='adminhome.jsp';</script>");
  
    }
    else
    {
         out.print("<script>alert('News is not added'); window.location.href='adminhome.jsp';</script>");
    }
  }
  
%>