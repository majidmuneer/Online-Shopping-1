<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_category.aspx.cs" Inherits="Online_Shopping_1.viwe_category" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cat_ID" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Cat_ID" HeaderText="Cat_ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Cat_ID" />
                <asp:BoundField DataField="Category_Name" HeaderText="Category_Name" 
                    SortExpression="Category_Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:D:\.NET PROGRAMS 2015\ONLINE SHOPPING 1\ONLINE SHOPPING 1\APP_DATA\REGISTRATION.MDFConnectionString %>" 
            DeleteCommand="DELETE FROM [tbl_Category] WHERE [Cat ID] = @Cat_ID" 
            InsertCommand="INSERT INTO [tbl_Category] ([Category Name], [Description], [Image]) VALUES (@Category_Name, @Description, @Image)" 
            SelectCommand="SELECT [Cat ID] AS Cat_ID, [Category Name] AS Category_Name, [Description], [Image] FROM [tbl_Category]" 
            
            
            UpdateCommand="UPDATE [tbl_Category] SET [Category Name] = @Category_Name, [Description] = @Description, [Image] = @Image WHERE [Cat ID] = @Cat_ID">
            <DeleteParameters>
                <asp:Parameter Name="Cat_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Category_Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Category_Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="Cat_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
