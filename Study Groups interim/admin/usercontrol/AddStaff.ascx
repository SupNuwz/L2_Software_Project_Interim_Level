<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddStaff.ascx.cs" Inherits="admin_usercontrol_AddStaff" %>
<style type="text/css">
    .auto-style1 {
        width: 138px;
    }
    .auto-style2 {
        width: 151px;
    }
</style>

<table style="width:100%;">
    <tr>
        <td class="auto-style1">Enter Staff Name</td>
        <td class="auto-style2">
            <asp:TextBox ID="sntxt" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Enter Staff email</td>
        <td class="auto-style2">
            <asp:TextBox ID="snemail" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Enter Staff Password</td>
        <td class="auto-style2">
            <asp:TextBox ID="snpass" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register New Staff" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
<asp:Label ID="resultlbl" runat="server"></asp:Label>

