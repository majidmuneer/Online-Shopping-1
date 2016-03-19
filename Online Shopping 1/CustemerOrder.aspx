<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPlace.aspx.cs" Inherits="Online_Shopping_1.OrderPlace" MasterPageFile="~/OnlineShopping.Master"%>

<asp:content id="Content1" contentplaceholderid="HeadContent" runat="server">

    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 339px;
        }
        .style3
        {
            width: 488px;
        }
        .style4
        {
            width: 339px;
            height: 23px;
        }
        .style5
        {
            width: 488px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
        .style7
        {
            width: 339px;
            height: 132px;
        }
        .style8
        {
            width: 488px;
            height: 132px;
        }
        .style9
        {
            height: 132px;
        }
        .style10
        {
            width: 339px;
            height: 30px;
        }
        .style11
        {
            width: 488px;
            height: 30px;
        }
        .style12
        {
            height: 30px;
        }
        .style13
        {
            width: 339px;
            height: 26px;
        }
        .style14
        {
            width: 488px;
            height: 26px;
        }
        .style15
        {
            height: 26px;
        }
    </style>
</asp:content>
<asp:content id="Content2" contentplaceholderid="MainContent" runat="server">

    <p style="font-size: xx-large; font-weight: 700; text-align: center">
        CustemerOrder</p>
    <table class="style1">
        <tr>
            <td class="style13">
                Category Name
            </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownListOrderCtegoryName" runat="server" Width="180px"
                    OnSelectedIndexChanged="DropDownListOrderCtegoryName_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListOrderCtegoryName"
                    ErrorMessage="Select a Category" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                SubCategory Name
            </td>
            <td class="style3">
                <asp:DropDownList ID="DropDownListOrderSubCatName" runat="server" OnSelectedIndexChanged="DropDownListOrderSubCatName_SelectedIndexChanged"
                    Width="180px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownListOrderSubCatName"
                    ErrorMessage="Select a SubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Product Name
            </td>
            <td class="style8">
                <asp:GridView ID="GridViewOrderproduct" runat="server" AutoGenerateColumns="False"
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
                    CellPadding="3" CellSpacing="2" DataKeyNames="P_ID" 
                    Style="margin-top: 11px" Height="99px" Width="510px" OnRowCommand="gv_rowcommand">
                    <Columns>
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                        <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                        <asp:BoundField DataField="Desription" HeaderText="Desription" SortExpression="Desription" />
                        <asp:TemplateField HeaderText="Image">
                           
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" 
                                    ImageUrl='<%# Eval("Image", "~/upload/{0}") %>' Width="150px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:HiddenField ID="hdnID" runat="server" Value='<%# Bind("P_ID") %>'></asp:HiddenField>

                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Buy"
                                    Text="Buy"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
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
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;
            </td>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
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
  </asp:content>
