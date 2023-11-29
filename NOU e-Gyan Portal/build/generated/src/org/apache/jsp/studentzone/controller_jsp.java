package org.apache.jsp.studentzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import connect.DbManager;

public final class controller_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');


    if (request.getParameter("page").equals("changepassword")) {
        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        String userid = (String) session.getAttribute("studentid");

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
    else if(request.getParameter("page").equals("response")){
        String rollno = session.getAttribute("studentid").toString();
        DbManager dm = new DbManager();
        String query = "select * from student where rollno = '"+rollno+"'";
        ResultSet rs = dm.select(query);
        if(rs.next()){
            rollno = rs.getString("rollno");
            String name = rs.getString("name");
            String program = rs.getString("program");
            String branch = rs.getString("branch");
            String year = rs.getString("year");
            String contactno = rs.getString("contactno");
            String responsetype= request.getParameter("responsetype");
            String subject= request.getParameter("subject");
            String responsetext= request.getParameter("responsetext");
            query = "insert into response(rollno,name,program,branch,year,contactno,responsetype,subject,responsetext, responsedate) values('"+rollno+"','"+name+"','"+program+"','"+branch+"','"+year+"','"+contactno+"','"+responsetype+"','"+subject+"','"+responsetext+"',curdate())";
            if(dm.insertUpdateDelete(query) == true){
                out.print("<script>alert('Response is Submitted');window.location.href='response.jsp';</script>");
            }
            else{
                out.print("<script>alert('Response is Not submitted');window.location.href='response.jsp';</script>");
            }
        }
    }
    else if(request.getParameter("page").equals("postquestion")){
        DbManager dm=new DbManager();
        String userid=session.getAttribute("studentid").toString();
        String query="select * from student where rollno='"+userid+"'";
        ResultSet rs=dm.select(query);
        if(rs.next()){
            String askedby=rs.getString("name");
            String question=request.getParameter("question");
            query="insert into question(question,askedby,posteddate) values('"+question+"','"+askedby+"',getdate())";
            if(dm.insertUpdateDelete(query)==true)
            {
                out.print("<script>alert('Question is posted');window.location.href='postquestion.jsp';</script>");
            }
            else{
                out.print("<script>alert('Question is not posted');window.location.href='postquestion.jsp';</script>");
            }
        }
    }

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
