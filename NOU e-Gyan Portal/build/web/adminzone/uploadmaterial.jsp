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
                <h2 style="color:blue;text-align: center;">Upload Material</h2>
                <form class="form-control"method="post" action="../UploadMaterial" enctype="multipart/form-data">
                    <table style="margin:  auto; width: 70%" class="table table-bordered">
                        <tr>
                              <td>
                                  Select Program
                              </td>
                              <td>
                                  <select name="program" class="form-control">
                                      <option selected>-Select Program-</option>
                                      <option value="B.Tech.">B.Tech.</option>
                                      <option value="M.Tech.">M.Tech.</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>Select Branch</td>
                              <td>
                                  <select name="branch" class="form-control">
                                      <option selected>-Select Branch-</option>
                                      <option value="CS">Computer Science</option>
                                      <option value="IT">Information Technology</option>
                                  </select>
                              </td>
                          </tr>
                          
                          <tr>
                              <td>
                                  Select Year
                              </td>
                              <td>
                                    <select name="year" class="form-control">
                                      <option selected>-Select year-</option>
                                      <option value="First Year">First Year</option>
                                      <option value="Second Year">Second Year</option>
                                      <option value="Third Year">Third Year</option>
                                      <option value="Final Year">Final Year</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>Enter Subject</td>
                              <td>
                                  <input type="text" name ="subject" class="form form-control" required/>
                              </td>
                          </tr>
                          <tr>
                              <td>Select Material type</td>
                              <td>
                                  <select name="materialtype" class="form-control">
                                      <option selected>-Select Material Type-</option>
                                      <option value="assign">Assignment</option>
                                      <option value="smat">Study Material</option>

                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>Enter Title</td>
                              <td>
                                  <input type="text" name="title" class="form-control" required/>
                              </td>
                          </tr>
                          <tr>
                              <td>Upload File</td>
                              <td>
                                  <input type="file" name="filename" class="form form-control">
                                  
                              </td>
                          </tr>
                          <tr>
                              <td></td>
                              <td><button type="submit" class="btn btn-success">Upload</button></td>
                          </tr>
                    </table>
                </form>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
