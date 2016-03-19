<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSubCategory.aspx.cs" Inherits="Online_Shopping_1.SubCategory" %>

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
            width: 306px;
        }
        .style3
        {
            width: 306px;
            height: 28px;
            text-align: right;
            font-size: large;
        }
        .style4
        {
            height: 28px;
        }
        .style5
        {
            width: 306px;
            text-align: right;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style5">
                    Sub CategoryName</td>
                <td>
                    <asp:TextBox ID="TextBoxSubCategory" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxSubCategory" 
                        ErrorMessage="Please Enter Your Sub Category Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    CategoryName</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownListCategory" runat="server" Width="180px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DropDownListCategory" 
                        ErrorMessage="Please Select Your Category" ForeColor="Red" 
                        InitialValue="select a category"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Description</td>
                <td>
                    <asp:TextBox ID="TextBoxDescription" runat="server" Height="88px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="ButtonSave" runat="server" Text="Save" Width="113px" 
                        onclick="ButtonSave_Click" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
