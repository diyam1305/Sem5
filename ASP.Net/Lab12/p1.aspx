<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p1.aspx.cs" Inherits="lab_12.p1" %>

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
                       <asp:Label ID="lblName" runat="server" Text="Enter Your Name:"></asp:Label>
                   </td>

                    <td>
                       <asp:TextBox ID="txtName" runat="server"></asp:TextBox> 
                    </td>
               </tr>

               <tr> 
                    <td> 
                       <asp:Label ID="lblAge" runat="server" Text="Enter Your Age:"></asp:Label>
                    </td>

                    <td> 
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox> 
                    </td>
               </tr>

               <tr> 
                   <td> 
                       <asp:Button ID="btnpersistant" runat="server" Text="persistent Cookie" OnClick="btnpersistant_Click" />
                   </td>

                   <td>
                       <asp:Button ID="btnnonpersistant" runat="server" Text="non-persistent Cookie" OnClick="btnnonpersistant_Click" />
                   </td>

                   <td>
                       <asp:Button ID="submit" runat="server" Text="submit" OnClick="submit_Click"/>
                   </td>
                </tr>

                <tr> 
                    <td> 
                        <asp:Label ID="lblData" runat="server"></asp:Label>
                    </td> 
                </tr>
           </table>
        </div>
    </form>
</body>
</html>
