<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
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
    <!-- slider section start -->
    <div class="row col-sm-12" style="background-image: url('img/slideback1.avif'); height: 50vh;">
        
    </div>

    <div class="row col-sm-12 my-3" style="background-color: rgb(237, 192, 108);">
      <marquee scrollamount="12" onmousemove="this.stop()" onmouseout="this.start()">
      <div class="row col-sm-12 my-3">
        <%
            DbManager dm=new DbManager();
            String query="select * from news";
            ResultSet rs=dm.select(query);
            while(rs.next()){
        %>
        <div class="col-sm-4  ">
            <h6 class=" px-5"style="background-color: rgb(201, 76, 19); color: white; text-align: center;">News Text: <%=rs.getString("newstext")%>
        <br/>
        PostedDate: <%=rs.getString("posteddate")%>
        </h6> 
        </div>
        
        <% } %>
    </div>
    </marquee>
  </div>
    <!-- slider section end -->
    <!-- about section start -->
     
    <div class="row bg-light col-sm-12">
        <div class="col-sm-7 p-4 mx-auto">
            <h2 class="p-5"style="text-align: center;">ABOUT NOU e-GYAN PORTAL</h2>
            <p><b>Nalanda Open University</b> welcomes all our students, faculties & study centres to the very new & innovative online study portal <b> NOU e-Gyan</b>. The portal is a unique initiative by Hon'ble Vice-Chancellor <b>Prof. (Dr.) K C Sinha</b>, which aims at providing online study material to the students of NOU.<br><br>

                The portal is accessible from any hook and corner of the world if the system allows the permission to its users. It is also fully secured and accessible 24 x 7 to its authorised users. It will resolve the academic issues such as E-content Distribution, Delivery, Tracking, Assessment, Progress Monitoring & Controlling of all stakeholders of the system i.e. students, teachers, study centre administrators as well as Nalanda Open University Admins when they are at a distance.
                
                </p>
        </div>
        <div class="col-sm-4 h-100 mx-auto my-auto">
            <img src="img/stp.jpg" class="w-100 "  alt="">
        </div>
        
    </div>

    <!-- about section end -->

    <!-- card section start -->
    <div class="row col-sm-10 my-5 mx-auto">
        <h2 class="p-4 mx-4" style="color: rgb(107, 16, 16);">USERS OF THE PORTAL</h2>
        <div class="row mb-5">
            <div class="col-sm-3 mx-auto p-2" style= "box-shadow: 0px 0px 10px 10px rgba(222, 220, 220, 0.443); border-radius: 6px;  border: 10px transparent;">
                                                                                       
              <div class="card p-4 ">
                <div class="card-body">
                  <p class="card-text">The university admin can login to monitor the portal, provide access to authorised stake holders & upload study material.</p>
                  <a href="#" class="btn btn-danger mt-5 mx-auto">University Admin</a>
                </div>
              </div>
            </div>
            <div class="col-sm-3 mx-auto p-3" style="box-shadow: 0px 0px 10px 10px rgba(205, 204, 204, 0.443); border-radius: 6px; border: 10px transparent;">
              <div class="card p-4">
                <div class="card-body" >
                  <p class="card-text">The study centres authorised personnel can login to track students progress, enroll students, schedule assignments & generate reports.</p>
                  <a href="#" class="btn btn-danger mt-4 mx-auto">Study Center</a>
                </div>
              </div>
            </div>
            <div class="col-sm-3 mx-auto p-2" style="box-shadow: 0px 0px 10px 10px rgba(222, 221, 221, 0.443); border-radius: 6px; border: 10px transparent;">
                <div class="card p-4">
                  <div class="card-body" >
                    <p class="card-text">The university enrolled students can login to view the notification by university, access the e-contents, give assignments & track thier progress report.</p>
                    <a href="#" class="btn btn-danger mt-4 mx-auto">Nou Students</a>
                  </div>
                </div>
              </div>
          </div>
    </div>
    <!-- card section end -->

    <!-- student services start -->
    <div class="row col-sm-9 mx-auto my-5">
        <h2 style="color: rgb(114, 9, 9);" class="m-4">STUDENT SERVICES</h2><br>

        <div class="row row-cols-1 row-cols-md-4 g-3">
            <div class="col">
              <div class="card h-100">
                <img src="img/s1.jpg" class="card-img-top" alt="...">
                <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Login</button>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/s2.jpg" class="card-img-top" alt="...">
                <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Dashboard</button>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/s3.jpg" class="card-img-top" alt="...">
                <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Self Learning Material</button>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/s4.jpg" class="card-img-top" alt="...">
                <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">e-Books</button>
                  </div>
              </div>
            </div>
            <div class="col">
                <div class="card h-100">
                  <img src="img/s55.avif" class="card-img-top" alt="..." >
                  <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100 mt-3">Self-Assessment Tools</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100">
                  <img src="img/s6.jpg" class="card-img-top" alt="...">
                  <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Performance</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100">
                  <img src="img/s7.jpg" class="card-img-top" alt="...">
                  <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Feedback</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100">
                  <img src="img/s8.jpg" class="card-img-top" alt="...">
                  <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Courses-Catalogue</button>
                  </div>
                </div>
              </div>
          </div>
    </div>
    <!-- student services end -->

    <!-- administrative setup start -->
    <div class="col-sm-12" style="background-color: lightgray;">
    <div class="row col-sm-9 mx-auto">
        <h2 style="color: rgb(114, 9, 9);" class="mt-5">ADMINISTRATIVE SETUP</h2><br>

        <div class="row row-cols-1 row-cols-md-4 g-3 mb-5">
            <div class="col">
              <div class="card h-100">
                <img src="img/pf1.jpg" class="card-img mx-auto mt-5" alt="..." style="border-radius: 50%; height:10vw; width:10vw;">
                <div class="card-body mx-auto">
                    <h6 class="mt-3" style="color: rgb(114, 19, 19);">Prof. (Dr.) K. C. Sinha</h6>
                    <p>VICE CHANCELLOR</p>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/pf2.jpg" class="card-img-top mx-auto mt-5" alt="..." style="border-radius: 50%; height:10vw; width:10vw;">
                <div class="card-body mx-auto">
                    <h6 class="mt-3" style="color: rgb(114, 19, 19);">Prof. (Dr.) Sanjoy Kumar</h6>
                    <p>PRO VICE CHANCELLOR</p>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/pf3.jpeg" class="card-img-top mx-auto mt-5" alt="..." style="border-radius: 50%; height:10vw; width:10vw;">
                <div class="card-body mx-auto">
                    <h6 class="mt-3" style="color: rgb(114, 19, 19);">Dr. Md. Habibur Rahman</h6>
                    <p>REGISTRAR</p>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/pf4.jpg" class="card-img-top mx-auto mt-5" alt="..." style="border-radius: 50%; height:10vw; width:10vw;">
                <div class="card-body mx-auto">
                    <h6 class="mt-3" style="color: rgb(114, 19, 19);">Dr. Neelam Kumari</h6>
                    <p>REGISTRAR (Exam)</p>
                  </div>
              </div>
            </div>
        </div>
    </div>
</div>
    <!-- aminstrative setup end -->

    <!--our courses start -->
    <div class="row col-sm-12 my-5">
      <div class="col-sm-7 mx-auto">
        <h2 style="color: rgb(114, 9, 9);" class="mt-5">OUR COURSES</h2><br>
      </div>
      <div class="col-sm-2">
        <button type="button" class="btn btn-warning mt-5" style="color: white;">View all Courses</button>
      </div>
    </div>

    <div class="row col-sm-10 mx-auto" >
    <div class="row col-sm-3 mx-auto mb-5 p-3"; style= "box-shadow: 0px 0px 10px 10px rgba(222, 220, 220, 0.443); border-radius: 6px;  border: 10px transparent;" >
      <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="card" style="width: 18rem;">
              <img src="img/cid.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Ceritificate in Interior Design</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/bba.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">Bchelor of Business Administrators</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/bca.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Bchaelor of Computer Application</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/pgdfm.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">PG Diploma in financial managment</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row col-sm-3 mx-auto mb-5 p-3" style= "box-shadow: 0px 0px 10px 10px rgba(222, 220, 220, 0.443); border-radius: 6px;  border: 10px transparent;">
      <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="card" style="width: 18rem;">
              <img src="img/bba.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Ceritificate in Interior Design</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/bca.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">Bchaelor of Business Administrators</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/pgdfm1.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Bchaelor of Computer Application</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/cid.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">PG Diploma in financial managment</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row col-sm-3 mx-auto mb-5 p-3" style= "box-shadow: 0px 0px 10px 10px rgba(222, 220, 220, 0.443); border-radius: 6px;  border: 10px transparent;">
      <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="card" style="width: 18rem;">
              <img src="img/bca.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Ceritificate in Interior Design</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/pgdfm1.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">Bchaelor of Business Administrators</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/bba.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Bchaelor of Computer Application</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/bca.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">PG Diploma in financial managment</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>
    <!-- our courses end -->

    

    <jsp:include page="footer.jsp"/>
</body>
</html>





