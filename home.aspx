<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="RecycleRewardHub.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Recycle Reward Hub</title>
    <link rel="shortcut icon" href="images/favicon.png" type="">

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>
<body>
<div class="hero_area">
    <div class="bg-box">
      <img src="images/row1.jpeg" alt="">
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="container text-dark">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="home.aspx">
            <span class="text-dark">
              Recycle Reward Hub
            </span>
          </a>


          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="text-dark"> </span>
          </button>

          <div class="collapse navbar-collapse navbar-dark" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto">
              <li class="nav-item active">
                <a class="nav-link text-dark" href="home.aspx">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-dark" href="about.aspx">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-dark" href="services.aspx">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-dark" href="botals.aspx">Give Bottals</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link text-dark" href="withdraw.aspx">Withdraw</a>
              </li>
            </ul>
            <div class="user_option">
              <a href="uaccount.aspx" class="user_link text-dark">
                <i class="fa fa-user" aria-hidden="true"></i>
              </a>
             
            </div>
          </div>
        </nav>
      </div>
    </header>
      
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1 class="text-dark">
                     Recycle Reward Hub
                    </h1>
                    <p class="text-dark">
                    
                   "Recycling one plastic bottle can make a big difference. Let's turn waste into wealth and preserve our planet for future generations."




                    </p>
                    <div class="btn-box">
                      <a href="about.aspx" class="btn1 text-dark">
                        Explore More!
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1 class="text-dark">
                      Recycle Reward Hub
                    </h1>
                    <p class="text-dark">
                  "Join the recycling revolution: for every plastic bottle you recycle, unlock rewards that make a positive impact on our world."


                    </p>
                    <div class="btn-box">
                      <a href="about.aspx" class="btn1 text-dark">
                        Explore More!
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                 <h1 class="text-dark">
                   Recycle Reward Hub
                    </h1>
                    <p class="text-dark">
                 "Transform your recycling efforts into rewards that shape a greener tomorrow, one plastic bottle at a time."


                 
                    </p>
                    <div class="btn-box">
                      <a href="about.aspx" class="btn1 text-dark">
                        Explore More!
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <ol class="carousel-indicators">
            <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel1" data-slide-to="1"></li>
            <li data-target="#customCarousel1" data-slide-to="2"></li>
          </ol>
        </div>
      </div>

    </section>
    <!-- end slider section -->
  </div>
  <br />

  <section class="food_section layout_padding-bottom">
    
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Services
          
        </h2>
        <p>At Recycle Reward Hub, we are on a mission to tackle plastic pollution by incentivizing plastic bottle recycling. Our services focus on collecting plastic bottles from individuals and rewarding them based on the quantity they recycle.</p>
      </div>

  <br />
      <div class="filters-content">
      <div class="row">
    <!-- Service 1 -->
    <div class="col-md-4">
      
      <div class="card text-white bg-dark mb-3" style="max-width: 20rem;">
        <h3 class="card-header"> Plastic Bottle Collection Points</h3>
        <div class="card-body">
        <p>
        The Recycle Reward Hub sets up convenient collection points in various locations, such as community centers, schools, or public parks, where individuals can drop off their used plastic bottles.

        </p>
        </div>
      </div>
    </div>
    <!-- Service 2 -->
    <div class="col-md-4">
     
      <div class="card text-white bg-dark mb-3" style="max-width: 20rem;">
        <h3 class="card-header"> Redeemable Rewards</h3>
        <div class="card-body">
        <p>
 Users can redeem their earned points for a variety of rewards, including discounts at partner businesses, eco-friendly products, vouchers for sustainable experiences, or even entry into exclusive events.

        </p>
        </div>
      </div>

    </div>
    <!-- Service 3 -->
    <div class="col-md-4">

      <div class="card text-white bg-dark mb-3" style="max-width: 20rem;">
        <h3 class="card-header">Digital Rewards Platform</h3>
        <div class="card-body">
        <p>
  Users can track their recycling progress and manage their earned points through a user-friendly digital platform provided by the NGO. They can also access information about available rewards and redemption options.

        </p>
        </div>
      </div>
    </div>
  </div>
</div>
          <div class="btn-box">
            <a href="services.aspx">
              View More
            </a>
          </div>
        </div>
 
      </section>

  
  
  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">

      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="images/a1.png" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                Welcome to Recycle Reward Hub
              </h2>
            </div>
            <p>
            At Recycle Reward Hub, we believe in the power of collective action to address one of the most pressing environmental challenges of our time: plastic pollution. Founded on the principles of sustainability and community engagement, our organization is dedicated to combating plastic waste through innovative solutions and grassroots initiatives.

            <br>
            <h3>Our Mission</h3>

Our mission is twofold: to reduce plastic pollution and to incentivize sustainable behavior through our plastic bottle recycling program. By providing individuals with tangible rewards for their recycling efforts, we aim to promote a culture of environmental responsibility and create lasting change.

            </p>
            <a href="about.aspx">
              Read More
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->


<!-- client section -->

  <section class="client_section layout_padding-bottom">
    <div class="container">
      <div class="heading_container heading_center psudo_white_primary mb_45">
        <h2>
         What Says Our Users
        </h2>
      </div>
      <div class="carousel-wrap row ">
        <div class="owl-carousel client_owl-carousel">
                    <div class="item">
            <div class="box">
              <div class="detail-box">
                <p>
                  
                "Using Recycle Reward Hub has been a game-changer for me. Not only am I helping the environment by recycling, but I also get rewarded for it! It's a win-win situation that makes me feel good about my contribution. Highly recommend!"                  
                  
                </p>
                <h6>
                  Raj Sharma
                </h6>
                <p>
                  
                </p>
              </div>
              <div class="img-box">
                <img src="images/client1.jpg" alt="" class="box-img">
              </div>
            </div>
          </div>
          
          <div class="item">
            <div class="box">
              <div class="detail-box">
                <p>
                  "Thanks to Recycle Reward Hub, recycling plastic bottles has never been more rewarding! Their program not only helps the environment but also gives back to the community. I'm proud to be a part of it!"
                  
                </p>
                <br />
                <h6>
                  Anita Patel
                </h6>
                <p>
                  
                </p>
              </div>
              <div class="img-box">
                <img src="images/client2.jpg" alt="" class="box-img">
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box">
              <div class="detail-box">
                <p>
                "I'm so glad I found Recycle Reward Hub! Not only am I doing my part for the environment, but I also get rewarded for it. It's a win-win situation that makes me feel good about my actions. Thank you, for making recycling so rewarding!"
                </p>
                <h6>
                  Rahul Shah
                </h6>
                <p>
                
                </p>
              </div>
              <div class="img-box">
                <img src="images/client1.jpg" alt="" class="box-img">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end client section -->



  

   
  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <div class="row">
        <div class="col-md-4 footer-col">
          <div class="footer_contact">
            <h4>
              Contact Us
            </h4>
            <div class="contact_link_box">
              <a href="">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                  Ahamdabad Gujarat
                </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call +91 9998252561
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  recyclerewardhub@gmail.com
                </span>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 footer-col">
          <div class="footer_detail">
            <a href="" class="footer-logo">
              Recycle Reward Hub
            </a>
            <!--p>
              Necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with
            </p-->
            <div class="footer_social">
              <a href="https://facebook.com">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="htps://twitter.com">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="https://linkedin.com">
                <i class="fa fa-linkedin" aria-hidden="true"></i>
              </a>
              <a href="https://instagram.com">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
              <a href="https://pinterest.com">
                <i class="fa fa-pinterest" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 footer-col">
          <h4>
            Opening Hours
          </h4>
          <p>
            Everyday
          </p>
          <p>
            10.00 AM -06.00 PM
          </p>
        </div>
      </div>
      <div class="footer-info">
        <p>
          &copy; <span id="displayYear"></span> All Rights Reserved.
        </div>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- isotope js -->
  <script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
  <!-- nice select -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>    
 



    
 


   
</body>
</html>
