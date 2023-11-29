package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
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

    if(request.getParameter("page").equals("contactus")){
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String contactno = request.getParameter("contactno");
        String emailaddress = request.getParameter("emailaddress");
        String enquirytext = request.getParameter("enquirytext");
        DbManager db = new DbManager();
        String query = "insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydate)values('" + name + "','" + gender + "','" + address + "','" + contactno + "','" + emailaddress + "','" + enquirytext + "',curdate())";
        boolean res = db.insertUpdateDelete(query);
        if (res == true) {
            out.print("<script>alert('Enquiry is submitted');window.location.href='contactus.jsp';</script>");
        } else {
            out.print("<script>alert('Enquiry is not submitted');window.location.href='contactus.jsp';</script>");
        }
    }
    else if(request.getParameter("page").equals("registration")){
    DbManager db=new DbManager();
    String rollno=request.getParameter("rollno");
    String name=request.getParameter("name");
    String fname=request.getParameter("fname");
    String mname=request.getParameter("mname");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String program=request.getParameter("program");
    String branch=request.getParameter("branch");
    String year=request.getParameter("year");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String emailPass=request.getParameter("password");
    String usertype="student";
    String query1="insert into student values('"+rollno+"','"+name+"','"+fname+"','"+mname+"','"+gender+"','"+address+"','"+program+"','"+branch+"','"+year+"','"+contactno+"','"+emailaddress+"',curdate())";
    String query2="insert into login values('"+rollno+"','"+emailPass+"','"+usertype+"')";
            if(db.insertUpdateDelete(query1)==true){
                if(db.insertUpdateDelete(query2)==true){
                    out.print("<script>alert('Registration is done');window.location.href='registration.jsp';</script>");
                }
            }
            else{
                out.print("<script>alert('Registration is  not done');window.location.href='registration.jsp';</script>");
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
