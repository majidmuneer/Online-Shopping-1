<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Online_Shopping_1.Login" MasterPageFile="~/OnlineShopping.Master" %>

 <asp:content id="Content1" contentplaceholderid="HeadContent" runat="server">

     <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: xx-large;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 228px;
        }
        .style4
        {
            width: 249px;
        }
        .style5
        {
            width: 249px;
            height: 23px;
        }
        .style6
        {
            width: 228px;
            height: 23px;
        }
        .style7
        {
            height: 23px;
        }
    </style>
</asp:content>
<asp:content id="Content2" contentplaceholderid="MainContent" runat="server">

    <div class="style1">
    
        <strong>Login Page</strong></div>
    <table class="style2">
        <tr>
            <td class="style4">
                UserName</td>
            <td class="style3">
                <asp:TextBox ID="TextBoxUserName" runat="server" 
                    Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUserName" ErrorMessage="Please enter Username" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Password</td>
            <td class="style6">
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                    Width="96px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:content>
