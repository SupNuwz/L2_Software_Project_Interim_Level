<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewFileUploader.aspx.cs" Inherits="Study_Groups_interim.NewFileUploader" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">

    <title>File Uploading</title>

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
        </style>
</head>
<body>

    <form id="form2" runat="server">

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
    <br /><br /><br /><br /><br /><br /> <br /><br />

    <div class="container" >
      
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="feature">

                        <center> <h2>

                               
                                
                                 
                                 Upload your file<b> </b> </h2></center>
                        <p>

                            <justify>

                                
                                 <asp:TextBox ID="TextBoxFileName"  runat="server" placeholder="File Name" Width="271px"></asp:TextBox >  <br /><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxFileName" runat="server" ErrorMessage="File Name is required " ControlToValidate="TextBoxFileName"></asp:RequiredFieldValidator>  <br />                              
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="271px" >
                                             <asp:ListItem>Select</asp:ListItem>
                                             <asp:ListItem>A/L science</asp:ListItem>
                                             <asp:ListItem>A/L Maths</asp:ListItem>
                                             <asp:ListItem>A/L commerce</asp:ListItem>
                                             <asp:ListItem>A/L Arts</asp:ListItem>
                                             <asp:ListItem>A/L Technology</asp:ListItem>
                                             <asp:ListItem> A/L IT</asp:ListItem>
                                             <asp:ListItem>O/L Articles</asp:ListItem>
                                             <asp:ListItem>Journals on science</asp:ListItem>
                                             <asp:ListItem>English</asp:ListItem>
                                              <asp:ListItem>Other</asp:ListItem>
                                    </asp:DropDownList><br /><br />
                               
                                 <asp:TextBox ID="TextBoxAuthorName" runat="server" placeholder="Author Name" Width="271px"></asp:TextBox> <br /><br />
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxAuthorName" runat="server" ErrorMessage="Author Name is required" ControlToValidate="TextBoxAuthorName"></asp:RequiredFieldValidator> <br/>
                                <asp:TextBox ID="TextBoxemail" runat="server" placeholder="Email Adress" Width="271px"></asp:TextBox> <br /><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxemail" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBoxemail" ></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxemail" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBoxemail" CssClass="auto-style2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> <br />
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="271px">
                                             <asp:ListItem>Select</asp:ListItem>
                                             <asp:ListItem>Lecture Notes</asp:ListItem>
                                             <asp:ListItem>Question papers</asp:ListItem>
                                             <asp:ListItem>Short Notes</asp:ListItem>
                                             <asp:ListItem>Science Journals</asp:ListItem>
                                             <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList> <br /><br />

                                <asp:TextBox ID="TextBoxDescription" runat="server" placeholder="description" Width="271px" ></asp:TextBox> <br /><br />
                               
                                <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="Password" TextMode="Password" Width="271px"></asp:TextBox> <br /><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBoxPassword"></asp:RequiredFieldValidator> </br>
                                 <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                                <asp:Button ID="ButtonUpload" runat="server" Text="Upload" OnClick="ButtonUpload_Click"></asp:Button>
                                  
                               
                            </justify>
                        </p>

                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="auto-style1">

                        

                        <br />

                        

                    </div>
                </div>


            </div> <!-- .row -->
           
</div>
</form>
</body>
</html>
