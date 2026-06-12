<%@ Page Language="C#" AutoEventWireup="true" Theme="lab7_1" CodeBehind="p1.aspx.cs" Inherits="lab_7.p1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <table>
                 <tr>
                    <td>
                        <asp:Label Text="Enter Number-1:" runat="server" ID="lblNo1"></asp:Label>
                        <asp:TextBox ID="txtNo1" runat="server" placeholder="enter number-1"></asp:TextBox>
                    </td>
                 </tr>

                 <tr>
                     <td>
                         <asp:Label ID="lblNo2" runat="server" Text="Enter Number-2:"></asp:Label>
                         <asp:TextBox ID="txtNo2" runat="server" placeholder="enter number-2"></asp:TextBox>
                     </td>
                </tr>

                 <tr>
                     <td>
                         <asp:Label ID="lblanswersbox" Text="Answer is:" runat="server"></asp:Label>
                        <asp:TextBox ID="txtanswerbox" runat="server" Readonly="true"></asp:TextBox>
                     </td>
                 </tr>

                 <tr>
                     <td>
                         <asp:Button ID="btnAdd" runat="server" Text="+" OnClick="btn_click" ></asp:Button>
                         <asp:Button ID="btnSub" runat="server" Text="-" OnClick="btn_click"></asp:Button>
                         <asp:Button ID="btnMul" runat="server" Text="x" OnClick="btn_click"></asp:Button>
                         <asp:Button ID="btnDiv" runat="server" Text="/" OnClick="btn_click"></asp:Button>
                     </td>
                 </tr>
             </table>
        </div>
    </form>
</body>
</html>
