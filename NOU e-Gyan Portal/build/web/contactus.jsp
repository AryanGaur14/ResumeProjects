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
              <div class="col-sm-12" style="background-color:lightgray; min-height: 600px;">
                  <br><h2 style="color:brown; text-align: center;">Enquiry Form</h2><br>
                  
                  <form class="form-group col-sm-7 mx-auto"method="post"action="controller.jsp">
                      <input type="hidden" name="page" value="contactus"/>
                      <table class="table">
                          <tr>
                              <td>Enter Name</td>
                              <td><input type="text" name="name" class="form-control" required></td>
                          </tr>
                          <tr>
                          <td>Select Gender</td>
                          <td>
                              Male<input type="radio" name="gender" value="male" class="form-check-input mx-1 required">
                              Female<input type="radio" name="gender" value ="female" class="form-check-input mx-1 required">
                          </td>
                          </tr>
                          <tr>
                              <td>Enter Address</td>
                              <td>
                                  <textarea name="address" class="form-control required"></textarea>
                              </td>
                          </tr>
                           <tr>
                              <td>Enter Contact No</td>
                          <td><input type="number" name="contactno" class="form-control required"></td>
                          </tr>
                          <tr>
                              <td>Enter Email Address</td>
                          <td><input type="email" name="emailaddress" class="form-control required"></td>
                          </tr>
                          <tr>
                              <td>Enter Enquiry Text</td>
                              <td>
                                  <textarea name="enquirytext" class="form-control required">
                                      
                                  </textarea>
                              </td>
                          </tr>
                          <tr>
                              <td colspan="2" style="text-align: center">
                                  <button type="submit" class="btn btn-success">Submit</button>
                              </td>
                          </tr>
                      </table>
                  </form>
              </div>
          </div>
          <!-- main section end -->
        
   <jsp:include page="footer.jsp"/>
</body>
</html>





