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
   <script>
       function validate()
       {
         var userid=document.getElementById("userid"); 
         var password=document.getElementById("password");
         
         if(userid.value=="" || userid.value==null)
         {
             alert('Please Enter userid');
             userid.focus();
         }
         else if(password.value==""||password.value==null)
         {
             alert('Please Enter Password');
             password.focus();
         }
         else{
             document.getElementById("frmlogin").submit();
         }
         
       }
       
   </script> 
    <jsp:include page="header.jsp"/>

          <!-- main section start -->
          
          <div class="row col-sm-12">
              <div class="col-sm-12" style="background-color:lightgray; min-height: 330px;">
                  <br><h2 style="color:#990000;text-align: center">Login Form</h2><br>
                  <form method="post" class="form-group col-sm-7 mx-auto" id="frmlogin" onsubmit="event.preventDefault();validate();" action="controller.jsp">
                      <input type="hidden" name="page" value="login"/>
                      <table class="table">
                          <tr>
                              <td>Enter User Id/ ROll no</td>
                              <td><input type="text" name="userid" class="form-control" id="userid"/></td>
                          </tr>
                          <tr>
                              <td>Enter Password</td>
                              <td><input type="password" name="password" class="form-control" id="password"/></td>
                          </tr>
                          
                          <tr>
                              <td colspan="2" style="text-align: center"><button class="btn btn-primary" >Login</button></td>
                          </tr>
                          
                      </table>
                  </form>
              </div>
          </div>
          <!-- main section end -->
        
   <jsp:include page="footer.jsp"/>
   
</body>

</html>





