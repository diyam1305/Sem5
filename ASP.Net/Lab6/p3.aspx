<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p3.aspx.cs" Inherits="lab_6.p3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary ID="vldtnsmry" runat="server" HeaderText="Please correct the following errors:" ForeColor="Red" ></asp:ValidationSummary>

            <table>
                <tr>
                    <td>
                        <asp:Label AssociatedControlID="txtName" Text="Enter your name:" runat="server" ></asp:Label>
                        <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                            ErrorMessage="Name is required." ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label AssociatedControlID="txtEmail" Text="Enter your Email-ID:" runat="server" ></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Email is required." ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Enter a valid email address." ForeColor="Red"
                            ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Image ID="Image" ImageUrl="image/google.jpg" runat="server" AlternateText="google_logo" Height="80px" Width="150px" ></asp:Image>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:HyperLink ID="hyperlink" NavigateUrl="https://www.google.com" runat="server" Target="_blank" Text="Visit Google" ></asp:HyperLink>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label AssociatedControlID="Calendar" Text="Date of Birth:" runat="server" ></asp:Label><br /><br />
                        <asp:Calendar ID="Calendar" runat="server" ></asp:Calendar><br />
                        <asp:CustomValidator ID="cvDOB" runat="server" ErrorMessage="Please select a date of birth."
                            ForeColor="Red" ></asp:CustomValidator>
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
