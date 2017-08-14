<%@ Page Language="C#" Debug="true" ValidateRequest="false" %>

<script runat="server">

    void refreshGrid(object sender, DetailsViewUpdatedEventArgs e)
    {
        gvCustomers.DataBind();
    }

</script>
<asp:AccessDataSource ID="customersDS" runat="server" 
    DataFile="Customers.mdb" 
    SelectCommand="SELECT [Customer_id], [Customer_name], [Customer_email], [Customer_pic] FROM [Customers]">
</asp:AccessDataSource>

<asp:AccessDataSource ID="customersDS2" runat="server" 
    DataFile="Customers.mdb" 
    SelectCommand="SELECT [Customer_id], [Customer_name], [Customer_email], [Customer_pic] FROM [Customers] WHERE ([Customer_id] = ?)" 
    UpdateCommand="UPDATE [Customers] SET [Customer_name] = ?, [Customer_email] = ?, [Customer_pic] = ? WHERE [Customer_id] = ?">
    <SelectParameters>
        <asp:ControlParameter ControlID="gvCustomers" Name="Customer_id" 
            PropertyName="SelectedValue" Type="Int16" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Customer_name" Type="String" />
        <asp:Parameter Name="Customer_email" Type="String" />
        <asp:Parameter Name="Customer_pic" Type="String" />
        <asp:Parameter Name="Customer_id" Type="Int16" />
    </UpdateParameters>
</asp:AccessDataSource>
<html>
<head>
    <title>GridView with DetailsView</title>
</head>
<body> 
    <form id="form1" runat="server">

    <asp:DetailsView ID="dtlAmendCustomer" DataKeyNames="customer_id"
        runat="server" AutoGenerateRows="false" 
        EditRowStyle-BackColor="BlanchedAlmond" 
        DataSourceID="customersDS2" 
        AutoGenerateEditButton="True"
        OnItemUpdated="refreshGrid"
        Font-Names="Arial" Font-Size="12pt">
        <Fields>
            <asp:BoundField DataField="customer_id" HeaderText="ID" 
                HeaderStyle-BackColor="Azure" 
                HeaderStyle-ForeColor="black" 
                HeaderStyle-Width="100"
                ControlStyle-Width="50" ReadOnly="true" />
            <asp:BoundField DataField="customer_name" HeaderText="Name"  
                HeaderStyle-BackColor="Azure" 
                HeaderStyle-ForeColor="black"
                ControlStyle-Width="200" />
            <asp:BoundField DataField="customer_email" HeaderText="Email" 
                HeaderStyle-BackColor="Azure" 
                HeaderStyle-ForeColor="black"
                ControlStyle-Width="200" />
            <asp:BoundField DataField="customer_pic" HeaderText="Photo" 
                HeaderStyle-BackColor="Azure" 
                HeaderStyle-ForeColor="black"
                ControlStyle-Width="300" />
        </Fields>
    </asp:DetailsView>
    <br />

    <asp:GridView id="gvCustomers" 
        DataKeyNames="customer_id" 
        HeaderStyle-BackColor="CornflowerBlue" 
        HeaderStyle-ForeColor="White"
        runat="server" 
        DataSourceID="customersDS" 
        CellPadding="3"
        Font-Names="arial"
        Font-Size="12pt"
        AutoGenerateColumns="false"  
        AutoGenerateSelectButton="true">
        
        <Columns>
            <asp:BoundField DataField="customer_id" HeaderText="ID" ReadOnly="True" />
            <asp:BoundField DataField="customer_name" HeaderText="Name" />
            <asp:BoundField DataField="customer_email" HeaderText="Email" />
            <asp:ImageField AlternateText="customer image" DataImageUrlField="customer_pic" HeaderText="Photo" />
        </Columns>
        
    </asp:GridView>
</form>
</body>
</html>