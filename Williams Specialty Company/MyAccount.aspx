<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Logo.png" PostBackUrl="~/Main.aspx" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="This is the MyAccount page"></asp:Label>
    
        <br />
        <br />
    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CCNum" HeaderText="CCNum" SortExpression="CCNum" />
                <asp:BoundField DataField="CCExp" HeaderText="CCExp" SortExpression="CCExp" />
                <asp:BoundField DataField="CCPin" HeaderText="CCPin" SortExpression="CCPin" />
                <asp:BoundField DataField="CCType" HeaderText="CCType" SortExpression="CCType" />
                <asp:CommandField ShowEditButton="True" />
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer] WHERE [CustID] = @CustID" DeleteCommand="DELETE FROM [Customer] WHERE [UserID] = ?" InsertCommand="INSERT INTO [Customer] ([CCNum], [CCExp], [CCPin], [CCType]) VALUES (?, ?, ?, ?)" UpdateCommand="UPDATE [Customer] SET [CCNum] = ?, [CCExp] = ?, [CCPin] = ?, [CCType] = ?">
            <DeleteParameters>
                <asp:Parameter Name="CustID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustID" Type="Int32" />
                <asp:Parameter Name="CFName" Type="String" />
                <asp:Parameter Name="CLName" Type="String" />
                <asp:Parameter Name="CCNum" Type="String" />
                <asp:Parameter Name="CCExp" Type="String" />
                <asp:Parameter Name="CCPin" Type="String" />
                <asp:Parameter Name="CCType" Type="String" />
                <asp:Parameter Name="AddressID" Type="Int32" />
                <asp:Parameter Name="UserID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CFName" Type="String" />
                <asp:Parameter Name="CLName" Type="String" />
                <asp:Parameter Name="CCNum" Type="String" />
                <asp:Parameter Name="CCExp" Type="String" />
                <asp:Parameter Name="CCPin" Type="String" />
                <asp:Parameter Name="CCType" Type="String" />
                <asp:Parameter Name="AddressID" Type="Int32" />
                <asp:Parameter Name="UserID" Type="Int32" />
                <asp:Parameter Name="CustID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
    
    &nbsp;&nbsp;&nbsp;
    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AddressID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="AddressID" HeaderText="AddressID" InsertVisible="False" ReadOnly="True" SortExpression="AddressID" />
                <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:CommandField ShowEditButton="True" />
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Address] WHERE [AddressID] = ?" InsertCommand="INSERT INTO [Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateCode], [PostalCode]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Address]" UpdateCommand="UPDATE [Address] SET [AddressLine1] = ?, [AddressLine2] = ?, [City] = ?, [StateCode] = ?, [PostalCode] = ? WHERE [AddressID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="AddressID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AddressID" Type="Int32" />
                <asp:Parameter Name="AddressLine1" Type="String" />
                <asp:Parameter Name="AddressLine2" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="StateCode" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AddressLine1" Type="String" />
                <asp:Parameter Name="AddressLine2" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="StateCode" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="AddressID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
