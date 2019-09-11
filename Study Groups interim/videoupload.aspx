<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="videoupload.aspx.cs" Inherits="Study_Groups_interim.videoupload" %>




<!DOCTYPE html>
<html lang="en">
	<head runat="server">
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>About Us</title>
		<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<link rel="stylesheet" href="style.css">
		</head>


	<body>

         <form id="form1" runat="server">
		<div class="site-content">
            <header class="site-header collapsed-nav" data-bg-image="">
                <div class="container">
                    <div class="header-bar">
                        <a href="index.aspx" class="branding">

                            <div class="System-type"><font color="lightseagreen">
                                <h1 class="site-title">Study Group</h1>
                               <h3> <small class="site-description">When you know better, You do better</small></h3> </font>
                            </div>
                        </a>
                       <nav class="main-navigation">
                            <button class="menu-toggle"><i class="fa fa-bars"></i></button>
                            <ul class="menu">
                                <li class="home menu-item current-menu-item"><a href="index.aspx"><img src="images/home-icon.png" alt="Home"></a></li>
                                <li class="menu-item"><a href="aboutus.aspx">About</a></li>
                                <li class="menu-item"><a href="services.aspx">Services</a></li>
                               
                                <li class="menu-item"><a href="lgin.aspx">Sign In</a></li>
                                <li class="menu-item"><a href="contactus.aspx">Contact</a></li>
                            </ul></font>
                        </nav>
                        <div class="mobile-navigation"></div>
                    </div>
                </div>
            </header>
            <div class="hero">
                <div class="page-head" data-bg-image="images/about2.jpg">
                    <br />
                    <br />
                    <br />
                    <br /><br /> <br /> <br />

                    <div class="container">
                        <font color="black">
                            <class="page-title">
                          <h2><strong>  <font color="#34495e"> We visualize a world where everyone can reshape their life by providing the best learning experience  <small></small></strong></h2> </font>
</div>
 </div>
                
               <div>
                   
                   <section id="content">
     <table width="80%" border="0" cellspacing="5" cellpadding="5">

                                   <tbody>
                                       <tr>

                                     <td colspan="3">

                                       </td>

                                   </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="right" class="auto-style3">

                                       <span style="color:#2B3743;font-size:14px;font-weight:bold"></span>

                                       </td>

                                   </tr>

                                   <tr>

                                     
                                      <td class="auto-style2">&nbsp;</td>
                                     <td colspan="2" align="left" class="auto-style3">Paper Title(ලිපියේ නම) <span style="color:#F00"> *</span></td>
                                        
										  
										   
                                   </tr>
                                     <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3"> <asp:TextBox ID="Title" class="required input-field" runat="server" Width="314px"></asp:TextBox> </td>

                                   </tr>
                                    <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">Name of Corresponding Author(කතෘගේ  නම )  <span style="color:#F00"> *</span></td>

                                   </tr>
                                       <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">

                                       <label for="author_name"></label>

                                         <asp:TextBox ID="AuthorName" class="required input-field" runat="server" Width="318px"></asp:TextBox>  </td>

                                   </tr>
                                     <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">Email of Corresponding Author(විද්‍යුත් ලිපිනය) <span style="color:#F00"> *</span></td>

                                   </tr>
                                    <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:TextBox ID="Email" class="required input-field" runat="server" Width="318px"  ></asp:TextBox> </td>

                                   </tr>
                                    <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                  
                                    <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                  

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">Journal Name in which paper is to be included(ලිපිය පල වියයුතු අංශය)</td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:DropDownList ID="DropDownList1" runat="server">
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

	

                                       

                                     </td>
									 <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">Paper Type</td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2"></td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:DropDownList ID="DropDownListType" runat="server" >
                                             <asp:ListItem>Lecture Notes</asp:ListItem>
                                             <asp:ListItem>Question papers</asp:ListItem>
                                             <asp:ListItem>Short Notes<</asp:ListItem>
                                             <asp:ListItem>Science Journals</asp:ListItem>
                                             <asp:ListItem>Other</asp:ListItem>
                                         </asp:DropDownList>

                                                            </td>
									

                                     <td width="62%" align="left">

                                       <div id="oth" style="display:none">

                                         <input name="other_paper_type" type="text" id="other_paper_type" class="input-field" size="50">

                                       </div>

                                     </td>


                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">Description</td>

                                   </tr>
                                    <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:TextBox ID="Description" class="required input-field" runat="server" Width="318px"></asp:TextBox> </td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">&nbsp;</td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                      <td colspan="2" align="left" class="auto-style3">Upload your Article in ms-word or pdf <span style="color:#F00">(.pdf ,.doc or .docx) *</span> </td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:FileUpload ID="FileUpload1" runat="server" Width="224px" /></td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">&nbsp;</td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                  
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                 

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="height: 26px" />                            </td>

                                   </tr>

                                  
                                     <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                  

                                   

                                   

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                       </td>

                                   </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         &nbsp;</td>

                                   </tr>

                                   <tr>

                                     <td colspan="3">&nbsp;</td>

                                   </tr>

                               </tbody></table>
    </section>


               </div>
                        

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		</form>
	</body>

</html>