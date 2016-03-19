<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_product.aspx.cs" Inherits="Online_Shopping_1.view_product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="P_ID" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="P_ID" HeaderText="P_ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="P_ID" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
                    SortExpression="CategoryName" />
                <asp:BoundField DataField="SubCategoryName" HeaderText="SubCategoryName" 
                    SortExpression="SubCategoryName" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" 
                    SortExpression="ProductPrice" />
                <asp:BoundField DataField="Desription" HeaderText="Desription" 
                    SortExpression="Desription" />
                <asp:ImageField DataImageUrlField="Image" 
                    DataImageUrlFormatString="~/upload/{0}" HeaderText="Image" ControlStyle-Width="150">
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:D:\.NET PROGRAMS 2015\ONLINE SHOPPING 1\ONLINE SHOPPING 1\APP_DATA\REGISTRATION.MDFConnectionString %>" 
            DeleteCommand="DELETE FROM [tbl_Product] WHERE [P_ID] = @P_ID" 
            InsertCommand="INSERT INTO [tbl_Product] ([CategoryName], [SubCategoryName], [ProductName], [ProductPrice], [Desription]) VALUES (@CategoryName, @SubCategoryName, @ProductName, @ProductPrice, @Desription)" 
            SelectCommand="SELECT * FROM [tbl_Product]" 
            UpdateCommand="UPDATE [tbl_Product] SET [CategoryName] = @CategoryName, [SubCategoryName] = @SubCategoryName, [ProductName] = @ProductName, [ProductPrice] = @ProductPrice, [Desription] = @Desription WHERE [P_ID] = @P_ID">
            <DeleteParameters>
                <asp:Parameter Name="P_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="SubCategoryName" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Int32" />
                <asp:Parameter Name="Desription" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="SubCategoryName" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Int32" />
                <asp:Parameter Name="Desription" Type="String" />
                <asp:Parameter Name="P_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
