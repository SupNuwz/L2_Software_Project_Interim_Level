<%@ Control Language="C#" AutoEventWireup="true" CodeFile="login.ascx.cs" Inherits="admin_usercontrol_login" %>
<style type="text/css">

    .auto-style1 {
        width: 101px;
    }
</style>

<table style="width:100%;">
    <tr>
        <td class="auto-style1">User Name</td>
        <td>
            <asp:TextBox ID="usertxt" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Password</td>
        <td>
            <asp:TextBox ID="passtxt" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

<asp:Label ID="resultlbl" runat="server"></asp:Label>



