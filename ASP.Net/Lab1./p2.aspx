<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p2.aspx.cs" Inherits="lab_4.p2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style type="text/css"></style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label AssociatedControlID="txtName" Text="Enter your name:" runat="server"></asp:Label>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label AssociatedControlID="txtEmail" Text="Enter your Email-ID:" runat="server" ></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td>
                        <asp:Image ID="Image" ImageUrl="p2-image.png" runat="server" AlternateText="google_logo" Height="80px" Width="150px" ></asp:Image>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:HyperLink ID="hyperlink" NavigateUrl="https://www.google.com" runat="server" Target="_blank" Text="Visit Google" ></asp:HyperLink>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label AssociatedControlID="Calender" Text="Date of Birth:" runat="server" ></asp:Label><br /><br />
                        <asp:Calendar ID="Calender" runat="server"></asp:Calendar><br />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:LinkButton ID="LinkBtn" runat="server" OnClick="LnkClear_Click">Clear Form</asp:LinkButton><br /><br />
                    </td>
                </tr>

                 <tr>
                     <td>
                         <asp:Button runat="server" Text="Register" ID="btnRegister" OnClick="Register" ></asp:Button>
                     </td>
                 </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" ></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
