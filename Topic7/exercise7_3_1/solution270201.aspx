<%@ Page Language="C#" %>

<script language="c#" runat="server">
  void AddRecord(object sender, EventArgs e)
  {
    customersDS.InsertParameters[0].DefaultValue = cid.Text;       // "6";
    customersDS.InsertParameters[1].DefaultValue = cname.Text; // "Clarice Clark";
    customersDS.InsertParameters[2].DefaultValue = cemail.Text; // "clarice@clark.com";
    customersDS.InsertParameters[3].DefaultValue = cpic.Text;     //"3212434.jpg";
    
    customersDS.Insert();
    gvCustomers.DataBind();
  }

</script>

<asp:accessdatasource
  id="customersDS"
  datafile="Customers.mdb"
  runat="server"
  selectcommand="SELECT customer_id, customer_name, customer_email, customer_pic FROM customers"
  insertcommand="INSERT INTO [customers] ([customer_id], [customer_name], [customer_email], [customer_pic]) VALUES (?, ?, ?, ?)">
    <InsertParameters>
        <asp:Parameter Name="customer_id" Type="Int32" />
        <asp:Parameter Name="customer_name" Type="String" />
        <asp:Parameter Name="customer_email" Type="String" />
        <asp:Parameter Name="customer_pic" Type="String" />
    </InsertParameters>
</asp:accessdatasource>
<html>
<head><title>AccessDataSource Control</title></head>
<body>
  <form id="Form1" runat="server">
    <asp:GridView ID="gvCustomers"
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
        <td>
          <asp:TextBox runat="server" ID="cid" Width="50" />*
          <asp:RequiredFieldValidator ID="vldPIDReq" runat="server"
            ErrorMessage="Please enter a Customer ID"
            ControlToValidate="cid" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="vldPIDInt" runat="server" ControlToValidate="cid"
            ErrorMessage="Please Enter Only Numbers"
            ValidationExpression="\d*" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td>Customer Name:</td>
        <td>
          <asp:TextBox runat="server" ID="cname" Width="200" />*
          <asp:RequiredFieldValidator ID="vldPnameReq" runat="server"
            ErrorMessage="Please enter a Customer Name"
            ControlToValidate="cname" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td>Customer Email:</td>
        <td>
          <asp:TextBox runat="server" ID="cemail" Width="200" />*
          <asp:RequiredFieldValidator ID="vldEmailReq" runat="server"
            ErrorMessage="Please enter a Customer Email Address"
            ControlToValidate="cemail" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="vldEmailInt" runat="server" ControlToValidate="cemail"
            ErrorMessage="Please entre a valid Email address" ValidationExpression=".*@.*\..*"
            Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td>Customer Pic:</td>
        <td>
          <asp:TextBox runat="server" ID="cpic" Width="300" />
        </td>
      </tr>
    </table>
    <br />
    <asp:Button ID="btnInsert" runat="server" Text="Add Record" OnClick="AddRecord" />

  </form>
</body>
</html>
