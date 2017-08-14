<%@ Page Language="C#" Debug="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script Language="c#" runat="server">
void Page_Load()
{
    if (!Page.IsPostBack)
    {
        BindData();
		lblPagingInfo.Text = "Page " + (dgCustomer.CurrentPageIndex + 1) + " of " + dgCustomer.PageCount;
    }
}

void dgPageChange(Object sender, DataGridPageChangedEventArgs e)
{
    dgCustomer.CurrentPageIndex = e.NewPageIndex;
    BindData();
	lblPagingInfo.Text = "Page " + (dgCustomer.CurrentPageIndex + 1) + " of " + dgCustomer.PageCount;
}

void BindData()
{
    DataSet objDS = new DataSet();
    string strConn = @"Provider=Microsoft.Jet.OleDb.4.0;Data Source=" +(string)Server.MapPath("customer.mdb");
    string strSQL ="SELECT CustID, Firstname, Surname FROM Customer";

    OleDbConnection objConn = new OleDbConnection(strConn);
    OleDbDataAdapter objDataAdapter = new OleDbDataAdapter(strSQL, strConn);
    objDataAdapter.Fill(objDS);

    dgCustomer.DataSource = objDS;
    dgCustomer.DataBind();  
}
</script>
<html>
  <body>
    <form id="Form1" runat="server">
    <asp:datagrid id="dgCustomer"
        runat="server"
        CellPadding="3"
        Font-Name="arial"
        Font-Size="9pt"
        HeaderStyle-BackColor="#dcdcdc"
        HeaderStyle-ForeColor="blue"
        AllowPaging="True" 
	    OnPageIndexChanged="dgPageChange" 
	    PageSize="4">
		
		<PagerStyle Mode="NumericPages" Position="Bottom" 
        HorizontalAlign="Right" PageButtonCount="3"
        BackColor="#999999" >
		</PagerStyle>
	</asp:datagrid><p>
	<asp:label id="lblPagingInfo" runat="server" />
    </form>
  </body>
</html>
