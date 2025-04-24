<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="RecycleRewardHub.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   
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
      <img src="/images/row1.jpeg" alt="">
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="">
            <span>
              Recycle Reward Hub
            </span>
          </a>


    </header>
    <!-- end header section -->
  </div>
      <section class="book_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2 align="center">
          Login
        </h2>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            <form id="Form1" runat="server">
              <div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ErrorMessage="User Name Is Required." ControlToValidate="Username" 
                      ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="Username" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
              
              </div>
              <div>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                      ErrorMessage="Password Is Required." ControlToValidate="Password" 
                      ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:TextBox ID="Password" runat="server" CssClass="form-control" 
                      placeholder="Password" TextMode="Password"></asp:TextBox>
                    
              </div>
              <div>
              
              <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:ListItem Value="Admin"></asp:ListItem>
                <asp:ListItem Value="User"></asp:ListItem>
                 </asp:DropDownList>
              </div>
              <div class="btn_box" align="center">
                 <asp:Button ID="Loginbtn" runat="server" Text="Login" 
                      CssClass="btn btn-outline-dark btn-box" onclick="Loginbtn_Click"></asp:Button>
              </div>
     
              <div align="center">
              <br />Not registered? <a href="register.aspx"> Register Yourself</a>
              <br /><asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>
              <a href="forgotpass.aspx"> Forget Password?</a>
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-6" align="center">
          
          <asp:Image ID="Image1" runat="server" ImageUrl="/images/Login.jpeg" CssClass=" img-box img-fluid" Height="100%" Width="80%"></asp:Image>
          
        </div>
      </div>
    </div>
  </section>

  
   
   
 </body>
</html>
