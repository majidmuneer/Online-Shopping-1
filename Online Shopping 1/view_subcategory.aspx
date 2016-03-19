<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_subcategory.aspx.cs" Inherits="Online_Shopping_1.view_subcategory" %>

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
            CellPadding="3" CellSpacing="2" DataKeyNames="SubCat ID" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SubCat ID" HeaderText="SubCat ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="SubCat ID" />
                <asp:BoundField DataField="Sub Cat Name" HeaderText="Sub Cat Name" 
                    SortExpression="Sub Cat Name" />
                <asp:BoundField DataField="Category Name" HeaderText="Category Name" 
                    SortExpression="Category Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
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
            DeleteCommand="DELETE FROM [tbl_SubCategory] WHERE [SubCat ID] = @SubCat_ID" 
            InsertCommand="INSERT INTO [tbl_SubCategory] ([SubCategoryName], [CategoryName], [Description]) VALUES (@SubCategoryName, @CategoryName, @Description)" 
            SelectCommand="SELECT * FROM [tbl_SubCategory]" 
            
            UpdateCommand="UPDATE [tbl_SubCategory] SET [SubCategoryName] = @SubCategoryName, [CategoryName] = @CategoryName, [Description] = @Description WHERE [SubCat ID] = @SubCat_ID">
            <DeleteParameters>
                <asp:Parameter Name="SubCat_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SubCategoryName" Type="String" />
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SubCategoryName" Type="String" />
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="SubCat_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
