<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lecregistationaspx.aspx.cs" Inherits="Study_Groups_interim.lecregistationaspx" %>


<!DOCTYPE html>
<html >

<head runat="server">
  <meta charset="UTF-8">
  <title>Sign Up Form</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/formstyle.css">

  
    <style type="text/css">
        .auto-style1 {
            width: 446px;
            height: 17px;
            position: absolute;
            left: 1px;
            top: 65px;
        }
        .auto-style2 {
            width: 81px;
            height: 17px;
            position: absolute;
            left: 1px;
            top: 65px;
        }
    </style>

  
</head>

<body>
 <form id="form2" runat="server"> 
<div class="container">
  <form>
    <div class="row">
      <h4>Lecturer Regisation</h4>
      <div class="input-group input-group-icon">
          <asp:TextBox ID="TextBoxFirstName" runat="server" placeholder="First Name" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxFirstName" runat="server" ErrorMessage="First Name is required" ControlToValidate="TextBoxFirstName"></asp:RequiredFieldValidator>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
        <div class="input-group input-group-icon">
          <asp:TextBox ID="TextBoxLastName" runat="server" placeholder="Last Name" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxLastName" runat="server" ErrorMessage="Last Name is required" ControlToValidate="TextBoxLastName"></asp:RequiredFieldValidator> 
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>

              
      <div class="input-group input-group-icon">
        <asp:TextBox ID="TextBoxemail" runat="server" placeholder="Email Adress" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxemail" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBoxemail" ></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxemail" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBoxemail" CssClass="auto-style2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>

        <div class="input-group input-group-icon">
        <asp:TextBox ID="TextBoxLocation" runat="server" placeholder="Your Location" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxLocation" runat="server" ErrorMessage="Location is required" ControlToValidate="TextBoxLocation"></asp:RequiredFieldValidator>
        <div class="input-icon"><i class="fa fa-globe"></i></div>
      </div>

        <div class="input-group input-group-icon">
        <asp:TextBox ID="TextBoxSubject" runat="server" placeholder="Subject" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxSubject" runat="server" ErrorMessage="Subject is required" ControlToValidate="TextBoxSubject"></asp:RequiredFieldValidator>
        <div class="input-icon"><i class="fa fa-mortar-board"></i></div>
      </div>
        
        <div class="input-group input-group-icon">
        <asp:TextBox ID="TextBoxUniversity" runat="server" placeholder="University" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxUniversity" runat="server" ErrorMessage="University is required" ControlToValidate="TextBoxUniversity"></asp:RequiredFieldValidator>
        <div class="input-icon"><i class="fa fa-university"></i></div>
      </div>

        <div class="input-group input-group-icon">
        <asp:TextBox ID="TextBoxNIC" runat="server" placeholder="Your NIC Number" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxNIC" runat="server" ErrorMessage="NIC is required" ControlToValidate="TextBoxNIC"></asp:RequiredFieldValidator>
        <div class="input-icon"><i class="fa fa-info-circle"></i></div>
            
      </div>



      <div class="input-group input-group-icon">
       <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBoxPassword"></asp:RequiredFieldValidator>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
    <div class="input-group input-group-icon">
       <asp:TextBox ID="TextBoxConfirmPassword" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxConfirmPassword" runat="server" ErrorMessage="Retype your password" ControlToValidate="TextBoxConfirmPassword"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidatorPasswords" runat="server" ErrorMessage="Password and confirm password should match" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" CssClass="auto-style1"></asp:CompareValidator>
        <div class="input-icon"><i class="fa fa-unlock-alt"></i></div>
      </div>
        <asp:Button ID="ButtonRegister" runat="server" Text="Register" OnClick="ButtonRegister_Click" />
        <br /> <br />
        <a href="Studentregistation.aspx">Student sign up</a>&nbsp;&nbsp; <a href="lgin.aspx">already have an account</a>
    </div>
    <div class="row">
      <h4>&nbsp;<input type="checkbox" id="terms"/>
        <label for="terms">I accept the terms and conditions of study groups for signing up to this service, and hereby confirm I have read the privacy policy.</label>
      </div>
    </div>
  </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/formindex.js"></script>
</form>
</body>
</html>

