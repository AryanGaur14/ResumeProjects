<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%

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
            query="insert into question(question,askedby,posteddate) values('"+question+"','"+askedby+"',curdate())";
            if(dm.insertUpdateDelete(query)==true)
            {
                out.print("<script>alert('Question is posted');window.location.href='postquestion.jsp';</script>");
            }
            else{
                out.print("<script>alert('Question is not posted');window.location.href='postquestion.jsp';</script>");
            }
        }
    }
    else if(request.getParameter("page").equals("postanswer")){
        int qid=Integer.parseInt(request.getParameter("qid"));
        String answer=request.getParameter("answer");
        String rollno=session.getAttribute("studentid").toString();
        String query="select * from student where rollno='"+rollno+"'";
        DbManager db=new DbManager();
        ResultSet rs=db.select(query);
        if(rs.next()){
            String answeredby=rs.getString("name");
            query="insert into answer( answer , answeredby , posteddate , qid ) values('"+answer+"','"+answeredby+"',curdate(),'"+qid+"')";
            if(db.insertUpdateDelete(query)==true){
                out.print("<script>alert('Answer is Submitted');window.location.href='postquestion.jsp';</script>");
            }
            else{
                out.print("<script>alert('Answer is not Submitted');window.location.href='postquestion.jsp';</script>");
            }

        }
    }
%>