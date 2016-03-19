<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Online_Shopping_1.Product" %>

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
            width: 230px;
            text-align: right;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                Category Name</td>
            <td>
                <asp:DropDownList ID="DropDownListCategory" runat="server" Width="180px" 
                    AutoPostBack="True" 
                    onselectedindexchanged="DropDownListCategory_SelectedIndexChanged">
                    <asp:ListItem>select a category</asp:ListItem>
                    <asp:ListItem>Laptops</asp:ListItem>
                    <asp:ListItem>jewelery</asp:ListItem>
                    <asp:ListItem>Food</asp:ListItem>
                    <asp:ListItem>Shoes</asp:ListItem>
                    <asp:ListItem>Mobiles</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownListCategory" 
                    ErrorMessage="Please Select Your Category name" ForeColor="Red" 
                    InitialValue="select a category"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Sub Category Name</td>
            <td>
                <asp:DropDownList ID="DropDownListSubCategory" runat="server" Width="180px" 
                    onselectedindexchanged="DropDownListSubCategory_SelectedIndexChanged">
                    <asp:ListItem Value="select subcategory ">select subcategory</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownListSubCategory" 
                    ErrorMessage="Please Select Your SubCategory Name" ForeColor="Red" 
                    InitialValue="select subcategory"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Product Name</td>
            <td>
                <asp:TextBox ID="TextBoxProductName" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxProductName" ErrorMessage="Enter Your Product Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Product Price</td>
            <td>
                <asp:TextBox ID="TextBoxProductPrice" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxProductPrice" ErrorMessage="Enter Your Price" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Description</td>
            <td>
                <asp:TextBox ID="TextBoxDesription" runat="server" Height="98px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Image</td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Buttonsubmitcategory" runat="server" Text="Submit" 
                    Width="109px" onclick="Buttonsubmitcategory_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
