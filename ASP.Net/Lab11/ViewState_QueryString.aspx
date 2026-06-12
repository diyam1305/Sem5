<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewState_QueryString.aspx.cs" Inherits="lab_11.ViewState_QueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Enter your Email-ID:"></asp:Label> 
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>  <br />
            
            <asp:Label ID="lblPass" runat="server" Text="Enter your Password:"></asp:Label> 
            <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>   <br />
           
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
            <asp:Label ID="lblInfo" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label> 
        </div>
    </form>
</body>
</html>
