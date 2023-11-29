<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>e-gyan</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/bootstrap.bundle.js"></script>
</head>
<body>
    
    <jsp:include page="header.jsp"/>

          <!-- main section start -->
          
          <div class="row col-sm-12">
              <div class="col-sm-12" style="background-color:lightgray; min-height: 600px;"><br>
                  <h2 style="text-align: center; color: #ff6600">Student Registration Form</h2><br>
                  <form method="post" class="form-group col-sm-7 mx-auto" action="controller.jsp">
                      <input type="hidden" name="page" value="registration"/>
                      <table class="table">
                          <tr>
                              <td>Enter Roll No</td>
                              <td>
                                  <input type="number" class="form-control" name="rollno" required/>
                              </td>
                          </tr>
                          <tr>
                              <td>Enter Name</td>
                              <td>
                                  <input type="text" class="form-control" name="name" required/>
                              </td>
                          </tr>
                          <tr>
                              <td>Enter Father Name</td>
                              <td>
                                  <input type="text" class="form-control" name="fname" required/>
                              </td>
                          </tr>
                          <tr>
                              <td>Enter Mother Name</td>
                              <td>
                                  <input type="text" class="form-control" name="mname" required/>
                              </td>
                          </tr>
                          <tr>
                          <td>Select Gender</td>
                          <td>
                              Male<input type="radio" name="gender" value="Male" class="form-check-input mx-1" required>
                              Female<input type="radio" name="gender" value ="Female" class="form-check-input mx-1" required>
                          </td>
                          </tr>
                          <tr>
                              <td>Enter Address</td>
                              <td>
                                  <textarea name="address" class="form-control"></textarea>
                              </td>
                          </tr>
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
                              <td>Enter Contact No</td>
                              <td><input type="number" name="contactno" class="form-control" required/></td>
                          </tr>
                          <tr>
                              <td>Enter Email Address</td>
                          <td><input type="email" name="emailaddress" class="form-control" required/></td>
                          </tr>
                          <tr>
                              <td>Enter Password</td>
                              <td>
                                  <input type="password" required class="form-control" name="password"/>
                              </td>
                          </tr>
                          <tr>
                              <td>Confirm Password</td>
                              <td>
                                  <input type="password" required class="form-control" name="confirmpassword"/>
                              </td>
                          </tr>
                          
                          <tr>
                              <td colspan="2" style="text-align: center"> <button class="btn btn-success" value="submit"> Submit</button></td>
                          </tr>
                      </table>
                  </form>
              </div>
          </div>
          <!-- main section end -->
        
   <jsp:include page="footer.jsp"/>
  
</body>
</html>





