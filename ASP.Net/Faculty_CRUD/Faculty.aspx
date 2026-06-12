   <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="Faculty_CRUD.Faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculty CRUD</title>
</head>
<body>
    <form id="form1" runat="server"> 
        <fieldset style="width: 300px"><legend>Faculty Management</legend>   
        <table style="width: 520px"> 
         <tr> 
             <td> 
                 <asp:Label ID="lblFirstname" runat="server" Text="Enter your Firstname:"></asp:Label>
                 <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox> 
             </td> 
        </tr>
            
        <tr> 
            <td> 
                <asp:Label ID="lblLastname" runat="server" Text="Enter your Lastname:"></asp:Label> 
                <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox> 
            </td> 
        </tr> 

        <tr> 
            <td> 
                <asp:Label ID="lblContactNo" runat="server" Text="Enter your Contact Number:"></asp:Label> 
                <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox> 
            </td>  
        </tr> 

        <tr> 
            <td> 
                <asp:Label ID="lblEmailID" runat="server" Text="Enter your Email ID:"></asp:Label> 
                <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
            </td> 
        </tr>   

        <tr> 
            <td></td> 
            <td> 
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" /> 
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Visible="false" /> 
            </td> 
        </tr> 
        </table> 
        </fieldset> 

        <asp:HiddenField ID="hfRecord" runat="server" />  
        
        <h3>Faculty Information</h3>   
        <asp:ListView ID="lstFac" runat="server" OnItemCommand="ListFaculty_ItemCommand" 
             DataKeyNames="Fac_ID">   
            <ItemTemplate>   
                <table>   
                    <tr>   
                        <td style="width:100px"> <b>ID:</b> <%# Eval("Fac_ID") %> </td>   
                        <td style="width:200px"> <b>FirstName :</b> <%# Eval("Fac_FirstName") %> </td>   
                        <td style="width:200px"> <b>Lastname :</b> <%# Eval("Fac_LastName") %></td>   
                        <td style="width:200px"> <b>Contact Number :</b> <%# Eval("Fac_ContactNo") %> </td>   
                        <td style="width:300px"> <b>Email ID:</b> <%# Eval("Fac_EmailID") %> </td> 

                        <td> 
                            <asp:ImageButton ID="btnupdate" runat="server" Height="20px" Width="25px"
                                ToolTip="Update record" CommandName="FacEdit"  
                                CommandArgument='<%# DataBinder.Eval(Container.DataItem, "Fac_ID") %>' 
                                ImageUrl="Button/edit.png" /> 

                            <asp:ImageButton ID="btndel" runat="server" Height="20px" Width="25px"
                                ToolTip="Delete record" CommandName="FacDelete" 
                                CommandArgument='<%# DataBinder.Eval(Container.DataItem, "Fac_ID")%>'
                                OnClientClick="javascript:return confirm('Are you sure you want to delete record?')" 
                                ImageUrl="Button/delete.png"/>
                        </td>   
                    </tr>   
                </table>   
            </ItemTemplate>  
        </asp:ListView>
    </form>
</body>
</html>
