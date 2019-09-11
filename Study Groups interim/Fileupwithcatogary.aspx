<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fileupwithcatogary.aspx.cs" Inherits="Study_Groups_interim.Fileupwithcatogary" %>

<!DOCTYPE html>
<html >

<head runat="server">
  <meta charset="UTF-8">
  <title>Sign Up Form</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/formstyle.css">

  
    <style type="text/css">
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
          <asp:TextBox ID="TextBoxFileName" runat="server" placeholder="File Name" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxFileName" runat="server" ErrorMessage="First Name is required" ControlToValidate="TextBoxFileName"></asp:RequiredFieldValidator>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
        <div class="input-group input-group-icon">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="477px">
                                             <asp:ListItem>Select(තෝරන්න )</asp:ListItem>
                                             <asp:ListItem>A/L science(උසස්පෙළ විද්‍යාව)</asp:ListItem>
                                             <asp:ListItem>A/L Maths(උසස්පෙළ  ගණිතය )</asp:ListItem>
                                             <asp:ListItem>A/L commerce(උසස්පෙළ වානිජ )</asp:ListItem>
                                             <asp:ListItem>A/L Arts(උසස්පෙළ කලා )</asp:ListItem>
                                             <asp:ListItem>A/L Technology(උසස්පෙළ තාක්ෂණවේදය )</asp:ListItem>
                                             <asp:ListItem> A/L IT(උසස්පෙළ තොරතුරු  තාක්ෂණය )</asp:ListItem>
                                             <asp:ListItem>O/L Articles(සාමාන්‍යපෙළ  සගරා )</asp:ListItem>
                                             <asp:ListItem>Journals on science (විද්‍යා සගරා )</asp:ListItem>
                                             <asp:ListItem>English</asp:ListItem>
                                              <asp:ListItem>Other(වෙනත් )</asp:ListItem>
            </asp:DropDownList>
             
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>

       <div class="input-group input-group-icon">
          <asp:TextBox ID="TextBoxAuthorName" runat="server" placeholder="Author Name" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxAuthorName" runat="server" ErrorMessage="Author Name is required" ControlToValidate="TextBoxAuthorName"></asp:RequiredFieldValidator>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
           
      <div class="input-group input-group-icon">
        <asp:TextBox ID="TextBoxemail" runat="server" placeholder="Email Adress" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxemail" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBoxemail" ></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxemail" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBoxemail" CssClass="auto-style2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>

        <div class="input-group input-group-icon">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Lecture Notes</asp:ListItem>
                                             <asp:ListItem>Question papers</asp:ListItem>
                                             <asp:ListItem>Short Notes</asp:ListItem>
                                             <asp:ListItem>Science Journals</asp:ListItem>
                                             <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDropDownList2" runat="server" ErrorMessage="Location is required" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
        <div class="input-icon"><i class="fa fa-globe"></i></div>
      </div>

        
        
        

        <div class="input-group input-group-icon">
        <asp:TextBox ID="TextBoxDescription" runat="server" placeholder="description" Height="105px" Width="406px" ></asp:TextBox>
            
        <div class="input-icon" style="float: left; top: 48px"><i class="fa fa-info-circle"></i></div>
            
      </div>



      <div class="input-group input-group-icon">
       <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
          
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>

      <div class="input-group input-group-icon">
          
          <asp:FileUpload ID="FileUpload1" runat="server" />
          
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>

        
    
        <asp:Button ID="ButtonRegister" runat="server" Text="Upload" OnClick="ButtonRegister_Click" />
        <br /> <br />
       
    </div>
    
    </div>
  </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/formindex.js"></script>
</form>
</body>
</html>

