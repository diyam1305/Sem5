<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p4.aspx.cs" Inherits="lab_6.p4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Country Entry Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2><b>Country Entry Form</b></h2>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                HeaderText="Please correct the following errors:"
                ForeColor="Red" />

            <!-- Country Name -->
            <asp:Label AssociatedControlID="txtCountryName" Text="Country Name:" runat="server" /> <br />
            <asp:TextBox ID="txtCountryName" runat="server" /> <br />
            <asp:RequiredFieldValidator ID="rfvCountryName" runat="server"
                ControlToValidate="txtCountryName"
                ErrorMessage="Country Name is required."
                ForeColor="Red" /> <br /><br />

            <!-- Country Code -->
            <asp:Label AssociatedControlID="txtCountryCode" Text="Country Code:" runat="server" /> <br />
            <asp:TextBox ID="txtCountryCode" runat="server" /> <br />
            <asp:RequiredFieldValidator ID="rfvCountryCode" runat="server"
                ControlToValidate="txtCountryCode"
                ErrorMessage="Country Code is required."
                ForeColor="Red" /> <br /><br />

            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" /> <br /><br />

            <asp:CheckBoxList ID="chkCountries" runat="server" /> <br />

            <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" /> <br /><br />

            <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="DarkGreen" />

        </div>
    </form>
</body>
</html>
