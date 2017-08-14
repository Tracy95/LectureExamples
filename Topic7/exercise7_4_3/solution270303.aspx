<%@ Page Language="C#" Debug="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script Language="c#" runat="server">
void Page_Load()
{
    if (!Page.IsPostBack)
    {
        BindData();
    }
}

void dgPageChange(Object sender, DataGridPageChangedEventArgs e)
{
    dgCustomer.CurrentPageIndex = e.NewPageIndex;
    BindData();
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
        Font-Size="8pt"
        HeaderStyle-BackColor="LightGray"
        HeaderStyle-ForeColor="blue"
        AllowPaging="True" 
	    OnPageIndexChanged="dgPageChange" 
	    PageSize="5">
	    
        <PagerStyle Mode="NumericPages"
            HorizontalAlign="Right" PageButtonCount="2"
            BackColor="#999999" >
        </PagerStyle>


	</asp:datagrid>
    </form>
  </body>
</html>
