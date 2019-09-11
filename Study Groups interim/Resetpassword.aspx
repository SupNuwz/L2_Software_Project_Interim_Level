<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resetpassword.aspx.cs" Inherits="Study_Groups_interim.Resetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>>Forgot Password</title>
     
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
     
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/formstyle.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
  <form>
    <div class="row">
      <h4>Reset Password</h4>
      <div class="input-group input-group-icon">
         <asp:TextBox ID="TextBoxemail" runat="server" placeholder="Email Adress"></asp:TextBox>

        
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>

      

      <div class="input-group input-group-icon">
        
          <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
     
       <div class="input-group input-group-icon">
        
          <asp:TextBox ID="TextBoxConfirmPassword" runat="server" placeholder="Retype New Password" TextMode="Password"></asp:TextBox>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
        <asp:Button ID="ButtonResetPassword" runat="server" Text="Reset Passeword" OnClick="Buttonlogin_Click1" />
        <br /> <br />
        <input id="Reset1" type="reset" value="reset" />
        <br /> <br />
        <a href="lecregistation.aspx">lecturer sign up</a>&nbsp;&nbsp;&nbsp;&nbsp;

        <a href="Studentregistation.aspx">Student sign up</a> &nbsp;&nbsp;&nbsp;&nbsp;

            </div>
    <div class="row">
    </div>
  </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/formindex.js"></script>
    </form>
</body>
</html>
