<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BLOG.aspx.cs" Inherits="Study_Groups_interim.BLOG" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row">
      <h4>Upload your article</h4>
    <div class="input-group input-group-icon">
          <asp:TextBox ID="TextBoxBlogID" runat="server" placeholder="Blog ID" ></asp:TextBox>        
        <div class="input-icon"><i class="fa fa-users"></i></div>
      </div>

      <div class="input-group input-group-icon">
          <br />
          <asp:TextBox ID="TextBoxLecID" runat="server" placeholder="Lecturer ID" ></asp:TextBox>        
        <div class="input-icon"><i class="fa fa-cogs"></i></div>
      </div>
        <div class="input-group input-group-icon">
            <br />
          <asp:TextBox ID="TextBoxTitle" runat="server" placeholder="Title" ></asp:TextBox>        
        <div class="input-icon"><i class="fa fa-globe"></i></div>
      </div>

              
      <div class="input-group input-group-icon">
          <br />
        <asp:TextBox ID="TextBoxDate" runat="server" placeholder="Date" ></asp:TextBox>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>

 
        <div class="input-group input-group-icon">
            <br />
        <asp:TextBox id="TextBoxContent" TextMode="multiline" Columns="50" Rows="5" runat="server" placeholder="Content" Width="273px" />
        
        <div class="input-icon" style="left: 3px; top: 20px"><i class="fa fa-language"></i></div>
      </div>


        </div>
        </div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
        <br />
        <br />
        <asp:Button ID="Upload" runat="server" Text="Upload" style="margin-left: 27px" Width="68px" OnClick="Upload_Click" />

         <br />
         <div class="col-md-6 col-sm-6">
       <div class="auto-style1">            
      <br />
                    </div>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2"  Width="446px" Height="103px">
                            <Columns>
                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="Title" runat="server" NavigateUrl = '<%# "Uploaded Files/" + Eval("Title").ToString() %>' >Download</asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Title" HeaderText="Title" />
                                <asp:BoundField DataField="Author" HeaderText="Author" />
                                <asp:BoundField DataField="Type" HeaderText="Type" />


                            </Columns>
                        </asp:GridView>
    </form>
</body>
</html>
