﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blogdetailsread.aspx.cs" Inherits="Study_Groups_interim.Blogdetailsread" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <div>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="false" Width="100%" GridLines="None">
<Fields>
<asp:TemplateField ShowHeader="false">
<ItemTemplate>
<tr>
<div>
<h2>
<asp:Label ID="lblBlogPostTitle" runat="server" Text='<%#Eval("Title") %>'></asp:Label></h2>
<div>
<span>
<asp:Label ID="lblAuthor" runat="server" Text='<%#Eval("Author") %>'></asp:Label></span>
<span>
<asp:Label ID="lblBlogDate" runat="server" Text='<%#Eval("BlogDate") %>'></asp:Label></span>
</div>
<div style="text-align: justify;">
<p>
<asp:Label ID="lblMessage" runat="server" Text='<%#Eval("Content") %>'></asp:Label></p>
</div>
</div>
</tr>
</ItemTemplate>
</asp:TemplateField>
</Fields>
</asp:DetailsView>
</div>
<div>
<hr />

<br />
<asp:GridView ID="GridViewcomment" runat="server" AutoGenerateColumns="false" ShowHeader="false" GridLines="None" Width="100%" CellSpacing="10">
<Columns>
<asp:TemplateField>
<ItemTemplate>
<tr>
<td>
<div>
<asp:Label ID="lblauthor" runat="server" Text='<%#Eval("Name") %>' Font-Bold="true" Font-Italic="true" Font-Size="Large"></asp:Label>
<asp:Label ID="LabelCommentDate" runat="server" Text='<%# Eval("Date") %>' Font-Size="Smaller"></asp:Label>
</div>
<div>
<p>
<asp:Label ID="Lblcomment" runat="server" Text='<%#Eval("Comment") %>'></asp:Label></p>
</div>
</td>
</tr>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
<asp:Label ID="LabelNoComment" runat="server" Text="No comments yet." Visible="false"></asp:Label>
</div>
<div id="comment_form">
<h3>Post a comment</h3>
<label>Name</label>&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txbxcommentauthor" runat="server" MaxLength="30" Height="30px" style="margin-left: 25px" Width="200px"></asp:TextBox>
    <br />
    <br />
<br />
<label>Comment&nbsp;&nbsp; </label>
&nbsp;<asp:TextBox ID="txbxcomment" runat="server" TextMode="MultiLine" Width="155px"></asp:TextBox>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="margin-left: 37px" Width="73px" />
</div>
    </form>
</body>
</html>
