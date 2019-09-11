<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BLOGFORM.aspx.cs" Inherits="Study_Groups_interim.BLOGFORM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
    <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="style.css">
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 30px;
            text-align: justify;
            border: 1px solid #e1e8ec;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
        }
        .auto-style2 {
            margin-left: 17px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="site-header collapsed-nav" data-bg-image="">
        <div class="container">
            <div class="header-bar">
                <a href="index.aspx" class="branding">

                    <div class="System-type">
                        <h1 class="site-title">Study Group</h1>
                        <small class="site-description">Stay Motivated and Study Hard</small>
                    </div>
                </a>
                <nav class="main-navigation">
                    <button class="menu-toggle"><i class="fa fa-bars"></i></button>
                    <ul class="menu">
                        <li class="home menu-item current-menu-item"><a href="index.aspx"><img src="images/home-icon.png" alt="Home"></a></li>
                        <li class="menu-item"><a href="aboutus.aspx">About</a></li>
                        <li class="menu-item"><a href="videos.aspx">Videos</a></li>
                    
                        <li class="menu-item"><a href="lgin.aspx">Sign In</a></li>
                        <li class="menu-item"><a href="contactus.aspx">Contact</a></li>
                    </ul>
                </nav>
                <div class="mobile-navigation"></div>
            </div>
        </div>

    </header>



        <div class="row">
      <h4>Upload your article</h4>
    <div class="input-group input-group-icon">
          <asp:TextBox ID="TextBoxBlogID" runat="server" placeholder="Blog ID" ></asp:TextBox>        
        <div class="input-icon"><i class="fa fa-users"></i></div>
      </div>

      <div class="input-group input-group-icon">
          <asp:TextBox ID="TextBoxLecID" runat="server" placeholder="Lecture ID" ></asp:TextBox>        
        <div class="input-icon"><i class="fa fa-cogs"></i>
            <br />
            <br />
            <br />
            <br />
            <br />
          </div>
      </div>
        <div class="input-group input-group-icon">
          <asp:TextBox ID="TextBoxTitle" runat="server" placeholder="Title" ></asp:TextBox>        
        <div class="input-icon"><i class="fa fa-globe"></i></div>
      </div>

     <div class="input-group input-group-icon" style="left: 0px; top: 0px">
       <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
    

        <div class="input-group input-group-icon">
        <asp:TextBox id="TextBoxContent" TextMode="multiline" Columns="50" Rows="5" runat="server" placeholder="Content" Width="284px" />
        
        <div class="input-icon" style="left: 3px; top: 20px"><i class="fa fa-language"></i></div>
      </div>



     
        <asp:Button ID="ButtonRegisterGroup" runat="server" Text="Register Group" />
    </div>
    </form>
</body>
</html>
