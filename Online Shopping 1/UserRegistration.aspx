<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs"
    Inherits="Online_Shopping_1.Registration" MasterPageFile="~/OnlineShopping.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 234px;
        }
        .style3
        {
            width: 217px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                <span style="color: rgb(105, 105, 105); font-family: 'Helvetica Neue', 'Lucida Grande', 'Segoe UI', Arial, Helvetica, Verdana, sans-serif;
                    font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: normal;
                    letter-spacing: normal; line-height: 20.48px; orphans: auto; text-align: start;
                    text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px;
                    -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                    User Name:</span>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN"
                    ErrorMessage="User Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <span style="color: rgb(105, 105, 105); font-family: 'Helvetica Neue', 'Lucida Grande', 'Segoe UI', Arial, Helvetica, Verdana, sans-serif;
                    font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: normal;
                    letter-spacing: normal; line-height: 20.48px; orphans: auto; text-align: start;
                    text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px;
                    -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                    E-mail:</span>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail"
                    ErrorMessage="E-mail is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail"
                    ErrorMessage="You must enter the valid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <p>
                    <span style="color: rgb(105, 105, 105); font-family: 'Helvetica Neue', 'Lucida Grande', 'Segoe UI', Arial, Helvetica, Verdana, sans-serif;
                        font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: normal;
                        letter-spacing: normal; line-height: 20.48px; orphans: auto; text-align: start;
                        text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px;
                        -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                        Password:</span></p>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass"
                    ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <span style="color: rgb(105, 105, 105); font-family: 'Helvetica Neue', 'Lucida Grande', 'Segoe UI', Arial, Helvetica, Verdana, sans-serif;
                    font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: normal;
                    letter-spacing: normal; line-height: 20.48px; orphans: auto; text-align: start;
                    text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px;
                    -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                    Confirm Password:</span>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass"
                    ErrorMessage="Confirm Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxRPass"
                    ControlToValidate="TextBoxPass" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Country
            </td>
            <td class="style3">
                <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px">
                    <asp:ListItem>Select country name</asp:ListItem>
                    <asp:ListItem>INDIA</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>JAPAN</asp:ListItem>
                    <asp:ListItem>CHINA</asp:ListItem>
                    <asp:ListItem>UAE</asp:ListItem>
                    <asp:ListItem>FRANCE</asp:ListItem>
                    <asp:ListItem>CHINA</asp:ListItem>
                    <asp:ListItem>LONDEN</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry"
                    ErrorMessage="Select a country" ForeColor="Red" InitialValue="Select country name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;
            </td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="104px" />
            </td>
            <td>
                <asp:Label ID="lblcheck" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
