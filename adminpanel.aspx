﻿t<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpanel.aspx.cs" Inherits="RecycleRewardHub.adminpanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="shortcut icon" href="images/favicon.png" type="">

  <title>Recycle Reward Hub </title>

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

<body class="sub_page">

  <div class="hero_area">
    <div class="bg-box">
      <img src="images/row1.jpeg" alt="">
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="adminpanel.aspx">
            <span>
              Recycle Reward Hub
            </span>
          </a>
          
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item ">
                <a class="nav-link" href="adminpanel.aspx">admin Panel </a>
              </li>
             
              <li class="nav-item ">
                <a class="nav-link" href="bottallist.aspx">Bottal Colllection </a>
              </li>
             
             
              <li class="nav-item ">
                <a class="nav-link" href="rewardlist.aspx">Rewards List </a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" href="registeradmin.aspx">Register New Admin </a>
              </li>
              <!--li class="nav-item">
                <a class="nav-link" href="registerstdss.aspx">View Registered Sports Events</a>
              </li-->
            </ul>
            <div class="user_option">
              <a href="adaccount.aspx" class="user_link">
                <i class="fa fa-user" aria-hidden="true"></i>
              </a>
              
            </div>
          </div>
        </nav>
      </div>

    </header>
    <!-- end header section -->
  </div>





  
    <section id="sign-up">
<form id="Form1" runat="server">
        <div class="container card-body shadow-lg">
                <br /><br />
      <div class="container">
      <div class="heading_container">
        <h1 style="font-family: 'Copperplate Gothic Light'; font-size: larger; font-weight: bold; txt-align: center; text-indent: inherit">Users List</h1>
      </div>
           
    
          <div class="form_container">
          <div style="text-align: center; text-indent: inherit;" align="center">

              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  DataKeyNames="userid" DataSourceID="SqlDataSource1" Width="736px" 
                  Font-Bold="True" Height="318px">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" />
                      <asp:BoundField DataField="username" HeaderText="User Name" 
                          SortExpression="username">
                      </asp:BoundField>
                      <asp:BoundField DataField="mno" HeaderText="Mobile No" SortExpression="mno">
                      </asp:BoundField>
                      <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                      </asp:BoundField>
                      <asp:BoundField DataField="password" HeaderText="Password" 
                          SortExpression="password">
                      </asp:BoundField>
                  </Columns>
                  <HeaderStyle CssClass="bg-dark text-light" />
              </asp:GridView>
            </div>    
          </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:constring %>" 
                    DeleteCommand="DELETE FROM [useress] WHERE [userid] = @userid" 
                    InsertCommand="INSERT INTO [useress] ([username], [mno], [email], [password]) VALUES (@username, @mno, @email, @password)" 
                    SelectCommand="SELECT * FROM [useress]" 
                    UpdateCommand="UPDATE [useress] SET [username] = @username, [mno] = @mno, [email] = @email, [password] = @password WHERE [userid] = @userid">
                    <DeleteParameters>
                        <asp:Parameter Name="userid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="mno" Type="Decimal" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="mno" Type="Decimal" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="userid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
               
          </div>
          </div>
          </form>
          </section>
















   
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
