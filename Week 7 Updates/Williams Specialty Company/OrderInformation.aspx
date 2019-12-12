<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderInformation.aspx.cs" Inherits="OrderInformation" %>

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
        <asp:Label ID="lblOrderInformation" runat="server" Text="This is the OrderInformation page for operations managers"></asp:Label>
    
        <br />
        <br />
        <asp:GridView ID="grdOrderInformation" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="SalesOrderID" HeaderText="SalesOrderID" InsertVisible="False" SortExpression="SalesOrderID" />
                <asp:BoundField DataField="PaidAmt" HeaderText="PaidAmt" SortExpression="PaidAmt" DataFormatString="{0:C}" />
                <asp:BoundField DataField="RemainingAmt" HeaderText="RemainingAmt" SortExpression="RemainingAmt" DataFormatString="{0:C}" />
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                <asp:BoundField DataField="SalesOrderForm.OrderID" HeaderText="SalesOrderForm.OrderID" SortExpression="SalesOrderForm.OrderID" />
                <asp:BoundField DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" />
                <asp:BoundField DataField="OrderQty" HeaderText="OrderQty" SortExpression="OrderQty" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                <asp:BoundField DataField="Customer.CustID" HeaderText="Customer.CustID" InsertVisible="False" SortExpression="Customer.CustID" />
                <asp:BoundField DataField="CFName" HeaderText="CFName" SortExpression="CFName" />
                <asp:BoundField DataField="CLName" HeaderText="CLName" SortExpression="CLName" />
                <asp:CheckBoxField DataField="PayOnDel" HeaderText="PayOnDel" SortExpression="PayOnDel" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Daniel's Connection String %>" ProviderName="<%$ ConnectionStrings:Daniel's Connection String.ProviderName %>" SelectCommand="SELECT SalesOrderForm.*, PurchaseOrderDetail.*, Customer.*, Users.*, PurchaseOrderForm.* FROM ((((SalesOrderForm INNER JOIN PurchaseOrderForm ON SalesOrderForm.OrderID = PurchaseOrderForm.OrderID) INNER JOIN PurchaseOrderDetail ON PurchaseOrderForm.OrderID = PurchaseOrderDetail.OrderID) INNER JOIN Customer ON SalesOrderForm.CustID = Customer.CustID AND PurchaseOrderForm.CustID = Customer.CustID) INNER JOIN Users ON Customer.UserID = Users.UserID) WHERE PurchaseOrderForm.Status = 'Not Validated'"></asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
