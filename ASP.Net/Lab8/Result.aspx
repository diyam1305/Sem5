<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="lab_8.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headeradmin" runat="server">
    <style>
    .result
    {
        position:relative;
        left:250px;
        color: deeppink;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="result">
        <h2>Result</h2>
    </div>
</asp:Content>--%>

<%@ Page Title="Result" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="lab_8.Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headeradmin" runat="server">
    <style>
        .result {
            position:relative;
            left:250px;
            color: deeppink;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="result">
        <h2>Result</h2>
        <p>Math: 95</p>
        <p>Science: 89</p>
        <p>English: 92</p>
    </div>
</asp:Content>
