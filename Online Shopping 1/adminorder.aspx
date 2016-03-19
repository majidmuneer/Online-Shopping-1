<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminorder.aspx.cs" Inherits="Online_Shopping_1.adminorder" %>

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
            CellPadding="3" CellSpacing="2" DataKeyNames="order_ID" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="order_ID" HeaderText="order_ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="order_ID" />
                <asp:BoundField DataField="P_ID" HeaderText="P_ID" SortExpression="P_ID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="productPrice" HeaderText="productPrice" 
                    SortExpression="productPrice" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                    SortExpression="OrderDate" />
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" 
                    SortExpression="User_ID" />
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
            DeleteCommand="DELETE FROM [tbl_custemerorder] WHERE [order_ID] = @order_ID" 
            InsertCommand="INSERT INTO [tbl_custemerorder] ([P_ID], [ProductName], [productPrice], [OrderDate], [User_ID]) VALUES (@P_ID, @ProductName, @productPrice, @OrderDate, @User_ID)" 
            SelectCommand="SELECT * FROM [tbl_custemerorder]" 
            UpdateCommand="UPDATE [tbl_custemerorder] SET [P_ID] = @P_ID, [ProductName] = @ProductName, [productPrice] = @productPrice, [OrderDate] = @OrderDate, [User_ID] = @User_ID WHERE [order_ID] = @order_ID">
            <DeleteParameters>
                <asp:Parameter Name="order_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="P_ID" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="productPrice" Type="Int32" />
                <asp:Parameter Name="OrderDate" Type="String" />
                <asp:Parameter Name="User_ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="P_ID" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="productPrice" Type="Int32" />
                <asp:Parameter Name="OrderDate" Type="String" />
                <asp:Parameter Name="User_ID" Type="Int32" />
                <asp:Parameter Name="order_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
