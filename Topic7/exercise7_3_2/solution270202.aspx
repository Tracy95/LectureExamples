<%@ Page Language="C#"%>
<script language="c#" runat="server">
    void AddRecord(object sender, EventArgs e)
    {
        customersDS.Insert();
        gvCustomers.DataBind();
    }

</script>

<asp:AccessDataSource
    id="customersDS"
    DataFile="Customers.mdb"
    runat="server"
    SelectCommand="SELECT customer_id, customer_name, customer_email, customer_pic FROM customers"
    InsertCommand="INSERT INTO [customers] ([customer_id], [customer_name], [customer_email], [customer_pic]) VALUES (?, ?, ?, ?)" >
    <InsertParameters>
        <asp:formparameter name="customer_id" formfield="cid" />
        <asp:formparameter name="customer_name" formfield="cname" />
        <asp:formparameter name="customer_email" formfield="cemail" />
        <asp:formparameter name="customer_pic" formfield="cpic" />
    </InsertParameters>

</asp:AccessDataSource>
<html>
    <head><title>AccessDataSource Control</title></head>
    <body>
        <form id="Form1" runat="server">
            <asp:GridView id="gvCustomers" 
                HeaderStyle-BackColor="CornflowerBlue" 
                HeaderStyle-ForeColor="White"
                runat="server" DataSourceID="customersDS"
                CellPadding="3"
                Font-Names="arial"
                Font-Size="12pt"
                AutoGenerateColumns="false">
                
                <Columns>
                    <asp:BoundField DataField="customer_id" 
                        HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="customer_name" 
                        HeaderText="Name" />
                    <asp:BoundField DataField="customer_email" 
                        HeaderText="Email" />
                    <asp:ImageField AlternateText="customer image"  
                        DataImageUrlField="customer_pic" HeaderText="Photo" />
                </Columns>
                
            </asp:GridView>
            <p />
            
            <table>
            <tr>
                <th colspan="3">Add New Customer</th>
            </tr>
            <tr>
                <td>Customer ID:</td>
                <td><asp:TextBox runat="server" ID="cid" width="50"/></td>
            </tr>
            <tr>
                <td>Customer Name:</td>
                <td><asp:TextBox runat="server" ID="cname" width="200"/></td>
            </tr>
            <tr>
                <td>Customer Email:</td>
                <td><asp:TextBox runat="server" ID="cemail" width="200"/></td>
            </tr>
            <tr>
                <td>Customer Pic:</td>
                <td><asp:TextBox runat="server" ID="cpic" width="300" /></td>
            </tr>
            </table>
            <br />

            <asp:Button ID="btn1" runat="server" Text="Add Record" OnClick="AddRecord" />

        </form>
    </body>
</html>