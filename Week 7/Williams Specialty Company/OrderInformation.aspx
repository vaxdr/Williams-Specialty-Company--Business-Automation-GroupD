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
        <asp:GridView ID="grdOrderInformation" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="PurchaseOrderForm.OrderID" HeaderText="Order ID" SortExpression="PurchaseOrderForm.OrderID" />
                <asp:BoundField DataField="SalesOrderID" HeaderText="SalesOrderID" InsertVisible="False" SortExpression="SalesOrderID" Visible="False" />
                <asp:BoundField DataField="RemainingAmt" HeaderText="RemainingAmt" SortExpression="RemainingAmt" Visible="False" />
                <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" ReadOnly="True" SortExpression="EmployeeID" />
                <asp:BoundField DataField="SalesOrderForm.CustID" HeaderText="Customer ID" ReadOnly="True" SortExpression="SalesOrderForm.CustID" />
                <asp:BoundField DataField="SalesOrderForm.OrderID" HeaderText="SalesOrderForm.OrderID" SortExpression="SalesOrderForm.OrderID" Visible="False" />
                <asp:BoundField DataField="PurchaseOrderDetail.OrderID" HeaderText="PurchaseOrderDetail.OrderID" SortExpression="PurchaseOrderDetail.OrderID" Visible="False" />
                <asp:BoundField DataField="OrderDetailID" HeaderText="OrderDetailID" InsertVisible="False" SortExpression="OrderDetailID" Visible="False" />
                <asp:BoundField DataField="OrderQty" HeaderText="Order Quantity" ReadOnly="True" SortExpression="OrderQty" />
                <asp:BoundField DataField="ProdID" HeaderText="Product ID" ReadOnly="True" SortExpression="ProdID" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                <asp:BoundField DataField="ProdTotal" HeaderText="Product Total" SortExpression="ProdTotal" Visible="False" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="PurchaseOrderDetail.CustID" HeaderText="PurchaseOrderDetail.CustID" SortExpression="PurchaseOrderDetail.CustID" Visible="False" />
                <asp:BoundField DataField="Customer.CustID" HeaderText="Customer.CustID" InsertVisible="False" SortExpression="Customer.CustID" Visible="False" />
                <asp:BoundField DataField="CFName" HeaderText="First Name" ReadOnly="True" SortExpression="CFName" />
                <asp:BoundField DataField="CLName" HeaderText="Last Name" ReadOnly="True" SortExpression="CLName" />
                <asp:BoundField DataField="CCNum" HeaderText="CCNum" SortExpression="CCNum" Visible="False" />
                <asp:BoundField DataField="CCExp" HeaderText="CCExp" SortExpression="CCExp" Visible="False" />
                <asp:BoundField DataField="CCPin" HeaderText="CCPin" SortExpression="CCPin" Visible="False" />
                <asp:BoundField DataField="CCType" HeaderText="CCType" SortExpression="CCType" Visible="False" />
                <asp:BoundField DataField="AddressID" HeaderText="AddressID" SortExpression="AddressID" Visible="False" />
                <asp:BoundField DataField="Customer.UserID" HeaderText="Customer.UserID" SortExpression="Customer.UserID" Visible="False" />
                <asp:BoundField DataField="Users.UserID" HeaderText="Users.UserID" InsertVisible="False" SortExpression="Users.UserID" Visible="False" />
                <asp:BoundField DataField="UserLogon" HeaderText="UserLogon" SortExpression="UserLogon" Visible="False" />
                <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" Visible="False" />
                <asp:BoundField DataField="UserSecLevel" HeaderText="UserSecLevel" SortExpression="UserSecLevel" Visible="False" />
                <asp:CheckBoxField DataField="PayOnDel" HeaderText="Pay On Delivery" SortExpression="PayOnDel" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="OrderDate" HeaderText="Order Date" ReadOnly="True" SortExpression="OrderDate" />
                <asp:BoundField DataField="PaidAmt" HeaderText="Paid Amount" SortExpression="PaidAmt" DataFormatString="{0:c}" />
                <asp:BoundField DataField="TotalDue" HeaderText="Total Due" ReadOnly="True" SortExpression="TotalDue" DataFormatString="{0:c}" />
                <asp:BoundField DataField="PurchaseOrderForm.CustID" HeaderText="PurchaseOrderForm.CustID" SortExpression="PurchaseOrderForm.CustID" Visible="False" />
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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT SalesOrderForm.*, PurchaseOrderDetail.*, Customer.*, Users.*, PurchaseOrderForm.* FROM ((((SalesOrderForm INNER JOIN PurchaseOrderForm ON SalesOrderForm.OrderID = PurchaseOrderForm.OrderID) INNER JOIN PurchaseOrderDetail ON PurchaseOrderForm.OrderID = PurchaseOrderDetail.OrderID) INNER JOIN Customer ON SalesOrderForm.CustID = Customer.CustID AND PurchaseOrderForm.CustID = Customer.CustID) INNER JOIN Users ON Customer.UserID = Users.UserID) WHERE PurchaseOrderForm.Status = 'Not Validated' OR 'complete'" UpdateCommand="UPDATE PurchaseOrderForm SET PayOnDel = ?, Status = ?, PaidAmt = ? WHERE OrderID = ?">
            <UpdateParameters>
     <asp:Parameter Name="PayOnDel" Type="Boolean" />
     <asp:Parameter Name="Status" Type="String" />
     <asp:Parameter Name="PaidAmt" Type="String" />
    <asp:Parameter Name="PurchaseOrderForm.OrderID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
         <br />
    
    </div>
    </form>
</body>
</html>
