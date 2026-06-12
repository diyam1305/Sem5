<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="lab_11.ViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblName" runat="server" Text="Enter your Name:"></asp:Label> 
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox> <br /> 
            
            <asp:Label ID="lblEnrollmentNo" runat="server" Text="Enter your EnrollmentNo:"></asp:Label> 
            <asp:TextBox ID="txtEnrollmentNo" runat="server"></asp:TextBox> <br />
      
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click"/> 
            <asp:Button ID="btnRetrieve" runat="server" Text="Retrive" OnClick="btnretrive_Click"/>
        </div>
    </form>
</body>
</html>
