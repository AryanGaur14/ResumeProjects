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
        <br><h1 style="text-align: center">Submit Your Response</h1><br>
        
        <div class="row">
            <div class="col-sm-12" style="min-height:300px";>
                 <form class="form-group" method="post" action="controller.jsp">
                     <input type="hidden" name="page" value="response"/>
                     <table style="margin: auto; width: 60%;" class="table table-bordered">
                         <tr>
                             <td>Select Response Type</td>
                             <td>
                                 <select name="responsetype" class="form-control">
                                    <option selected>-Select Response Type-</option>
                                    <option value="feedback">Feedback</option>
                                    <option value="complain">Complain</option>
                                 </select>
                             </td>
                         </tr>
                         <tr>
                             <td>Enter Subject</td>
                             <td>
                                 <input type="text" name="subject" class="form-control"/>
                             </td>
                         </tr>
                         <tr>
                             <td>Enter Response Text</td>
                             <td>
                                 <textarea name="responsetext" class="form-control"></textarea>
                             </td>
                         </tr>
                         <tr>
                             <td></td>
                             <td>
                                 <button type="submit" class="btn btn-success">Submit</button>
                             </td>
                         </tr>
                     </table>
                </form>
                
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
