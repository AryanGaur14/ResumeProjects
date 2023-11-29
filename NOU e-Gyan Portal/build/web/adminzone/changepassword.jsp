<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
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
        <script>
            function validate()
            {
                var newpassoword = document.getElementById("newpassword");
                var confirmnewpassword = document.getElementById("confirmnewpassword");


                if (newpassoword.value != confirmnewpassword.value)
                {
                    alert('Confirm password does not matched ');
                    newpassword.focus();
                }

                else {
                    document.getElementById("frmchangepassword").submit();
                }
            }
        </script>
        <jsp:include page="header.jsp"/>        
        <div class="row col-sm-12">
            <div class=" col-sm-12" style="min-height:300px">
                <br><h2 style="text-align: center">Change Password</h2>
                <form class="form-group" method="post" id="frmchangepassword" onsubmit="event.preventDefault(); validate();" action="admincontroller.jsp">
                    <input type="hidden" name="page" value="changepassword"/>

                    <table class="table table-bordered" style="margin: auto;width:60%;">
                        <tr>
                            <td>Enter Old Password</td>
                            <td>
                                <input type="password" name="oldpassword" class="form-control" id="oldpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter New Password</td>
                            <td>
                                <input type="password" name="newpassword" class="form-control" id="newpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm New Password</td>
                            <td>
                                <input type="password" name="confirmnewpassword" class="form-control" id="confirmnewpassword" required/>
                            </td>
                        </tr><br>
                        <tr>
                            <td colspan="2" style="text-align: center;"><button class="btn btn-primary">Update</button></td>
                        </tr>
                    </table>
                </form>   
            </div>

        </div><br><br><br>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% }%>



