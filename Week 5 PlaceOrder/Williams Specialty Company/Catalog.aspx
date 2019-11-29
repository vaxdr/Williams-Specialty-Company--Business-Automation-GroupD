<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left; background-color: #FFFFFF">
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Logo.png" PostBackUrl="~/Main.aspx" />
    
        <br />
        <asp:Label ID="lblCatalog" runat="server" Text="This is the Catalog page"></asp:Label>
    
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="94px" ImageUrl="~/images/Clothing.jpg" Width="93px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server">Check out our Clothing options!</asp:LinkButton>
        <br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/Plaque.png" Height="120px" Width="123px" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server">Check out our Plaque engraving options!</asp:LinkButton>
        <br />
        <br />
        <br />
&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton4" runat="server" Height="124px" ImageUrl="~/images/Trophy.jpg" Width="91px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server">Check out our Trophy options!</asp:LinkButton>
        <br />
        <asp:GridView ID="grdCatalog" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ProdID" HeaderText="ProdID" InsertVisible="False" ReadOnly="True" SortExpression="ProdID" />
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                <asp:BoundField DataField="ProdDescription" HeaderText="ProdDescription" SortExpression="ProdDescription" />
                <asp:BoundField DataField="ProdImage" HeaderText="ProdImage" SortExpression="ProdImage" />
                <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
                <asp:BoundField DataField="MediaType" HeaderText="MediaType" SortExpression="MediaType" />
                <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" DeleteCommand="DELETE FROM [Product] WHERE [ProdID] = ?" InsertCommand="INSERT INTO [Product] ([ProdID], [ProdName], [ProdDescription], [ProdImage], [JobType], [MediaType], [ListPrice]) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProdName] = ?, [ProdDescription] = ?, [ProdImage] = ?, [JobType] = ?, [MediaType] = ?, [ListPrice] = ? WHERE [ProdID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ProdID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProdID" Type="Int32" />
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="ProdDescription" Type="String" />
                <asp:Parameter Name="ProdImage" Type="String" />
                <asp:Parameter Name="JobType" Type="String" />
                <asp:Parameter Name="MediaType" Type="String" />
                <asp:Parameter Name="ListPrice" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="ProdDescription" Type="String" />
                <asp:Parameter Name="ProdImage" Type="String" />
                <asp:Parameter Name="JobType" Type="String" />
                <asp:Parameter Name="MediaType" Type="String" />
                <asp:Parameter Name="ListPrice" Type="Decimal" />
                <asp:Parameter Name="ProdID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
