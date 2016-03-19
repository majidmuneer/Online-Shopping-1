<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Online_Shopping_1.Category" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 277px;
        }
        .style3
        {
            width: 277px;
            height: 23px;
            text-align: right;
            font-size: large;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            width: 277px;
            height: 26px;
            text-align: right;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            width: 277px;
            text-align: right;
            font-size: large;
        }
        .style8
        {
            font-size: large;
        }
        .style9
        {
            width: 277px;
            text-align: right;
            font-size: large;
            height: 95px;
        }
        .style10
        {
            height: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Category Name</td>
            <td>
                <asp:TextBox ID="TextBoxCname" runat="server" Width="180px" CssClass="style8"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxCname" ErrorMessage="Please Enter Category Name" 
                    ForeColor="Red" CssClass="style8"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Description</td>
            <td class="style10">
                <asp:TextBox ID="TextBoxDescription" runat="server" Height="91px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Image</td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="ButtonInsert" runat="server" onclick="Button1_Click" 
                    Text="Insert" Width="73px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
