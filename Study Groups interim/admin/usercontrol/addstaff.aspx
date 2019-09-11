<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addstaff.aspx.cs" Inherits="admin_usercontrol_addstaff" %>

<%@ Register src="AddStaff.ascx" tagname="AddStaff" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:AddStaff ID="AddStaff1" runat="server" />
        </div>
    </form>
</body>
</html>
