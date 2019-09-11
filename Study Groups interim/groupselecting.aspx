<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="groupselecting.aspx.cs" Inherits="Study_Groups_interim.groupselecting" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">

    <title>gropu creation</title>

    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
    <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="style.css">
    <style>
        #map {
            height: 560px;
            width:100%;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            left: 0px;
            top: 0px;
            width: 892px;
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
                        <li class="menu-item"><a href="services.aspx">Services</a></li>

                        <li class="menu-item"><a href="lgin.aspx">Sign In</a></li>
                        <li class="menu-item"><a href="contactus.aspx">Contact</a></li>
                        <li class="menu-item"><a href="lgin.aspx">Logout</a></li>

                    </ul>
                </nav>
                <div class="mobile-navigation"></div>
            </div>
        </div>
    </header>
    <br /><br /><br /><br /><br /><br /> <br /><br />

    <div class="container">

        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div class="feature">

                    <center> <h2>To join a group<b> </b> </h2></center>
                    
                    <asp:Button ID="Button1" runat="server" Text="Join" OnClick="Button1_Click" />
                </div>
            </div>
            <div class="container">

        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div class="feature">

                    <center> <h2>To create a group <b> </b> </h2></center>
                    
                    <asp:Button ID="Button2" runat="server" Text="Create" OnClick="Button2_Click" />
                </div>
            </div>

        </div> <!-- row -->

        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div class="feature">

                    <center> <h2>Search&nbsp; a group<b> </b> </h2>
                    </center>
                    Type your required field
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button3_Click" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
            </div> <!-- row -->

                <div class="row">
            <div class="auto-style2">
                <div class="feature">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GroupId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="GroupId" HeaderText="GroupId" ReadOnly="True" SortExpression="GroupId" InsertVisible="False" />
                            <asp:BoundField DataField="GroupName" HeaderText="GroupName" SortExpression="GroupName" />
                            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                            <asp:BoundField DataField="Field" HeaderText="Field" SortExpression="Field" />
                            <asp:BoundField DataField="AdminEmail" HeaderText="AdminEmail" SortExpression="AdminEmail" />
                            <asp:BoundField DataField="GroupDescription" HeaderText="GroupDescription" SortExpression="GroupDescription" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Study GroupsConnectionString %>" DeleteCommand="DELETE FROM [StudyGroup] WHERE [GroupId] = @GroupId" InsertCommand="INSERT INTO [StudyGroup] ([GroupName], [Location], [Field], [AdminEmail], [GroupDescription]) VALUES (@GroupName, @Location, @Field, @AdminEmail, @GroupDescription)" SelectCommand="SELECT [GroupId], [GroupName], [Location], [Field], [AdminEmail], [GroupDescription] FROM [StudyGroup] WHERE ([Field] LIKE '%' + @Field + '%')" UpdateCommand="UPDATE [StudyGroup] SET [GroupName] = @GroupName, [Location] = @Location, [Field] = @Field, [AdminEmail] = @AdminEmail, [GroupDescription] = @GroupDescription WHERE [GroupId] = @GroupId">
                        <DeleteParameters>
                            <asp:Parameter Name="GroupId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="GroupName" Type="String" />
                            <asp:Parameter Name="Location" Type="String" />
                            <asp:Parameter Name="Field" Type="String" />
                            <asp:Parameter Name="AdminEmail" Type="String" />
                            <asp:Parameter Name="GroupDescription" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="Field" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="GroupName" Type="String" />
                            <asp:Parameter Name="Location" Type="String" />
                            <asp:Parameter Name="Field" Type="String" />
                            <asp:Parameter Name="AdminEmail" Type="String" />
                            <asp:Parameter Name="GroupDescription" Type="String" />
                            <asp:Parameter Name="GroupId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </div>
            </div>
            </div>
        <div id="map"></div>
        <script>
            function initMap() {
                var uluru = { lat: -25.363, lng: 131.044 };
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 2,
                    center: uluru
                });
                var marker = new google.maps.Marker({
                    position: uluru,
                    map: map
                });
            }
        </script>
        <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBH0q7eVLwoW775XVvtUNRsZBYkqtJZED8
	&callback=initMap">
        </script>



    </div>
   <br /><br />


 </form>      
</body>
</html>
