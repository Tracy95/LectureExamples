<%@ Page Language="C#" %>
<script language="c#" runat="server">
    void AddRecord(object sender, EventArgs e)
    {
        customersDS.Insert();

        gvCustomers.DataBind();
    }

</script>

<asp:AccessDataSource
    id="customersDS"
    DataFile="customers.mdb"
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
            
            <asp:FormView ID="FormView1" runat="server" 
                DataKeyNames="customer_id" HeaderText="Add New Customer" 
                HeaderStyle-HorizontalAlign="Center" 
                HeaderStyle-Font-Bold="true" 
                Cellpadding="3"
                DataSourceID="customersDS"
                DefaultMode="Insert">
                <InsertItemTemplate>
                    <table>
                    <tr>
                        <td>Customer ID:</td>
                        <td><asp:TextBox ID="cid" runat="server" Text='<%# Bind("customer_id") %>' Width="50" /></td>
                    </tr>
                    <tr>
                        <td>Customer Name:</td>
                        <td><asp:TextBox ID="cname" runat="server" Text='<%# Bind("customer_name") %>' Width="200"/></td>
                    </tr>
                    <tr>
                        <td>Customer Email:</td>
                        <td><asp:TextBox ID="cemail" runat="server" Text='<%# Bind("customer_email") %>' Width="200" /></td>
                    </tr>
                    <tr>
                        <td>Customer Pic:</td>
                        <td><asp:TextBox ID="cpic" runat="server" Text='<%# Bind("customer_pic") %>' Width="300" /></td>
                    </tr>
                    </table>
                    <asp:Button ID="btnInsert" runat="server" 
                        CausesValidation="True" CommandName="Insert" Text="Add" />
                    <asp:Button ID="btnCancel" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
            </asp:FormView>
        </form>
    </body>
</html>