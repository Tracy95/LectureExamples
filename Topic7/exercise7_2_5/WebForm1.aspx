<%@ Page %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.OleDb" %>
<HTML>
	<script language="c#" runat="server">
	
	private void findCustomer(object sender, EventArgs e)
{
	string strConnection = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("shop.mdb") + ";";
string jj=custNameInput.Text;
 string strSQL = "";
 strSQL = "SELECT * FROM list WHERE product_id LIKE '" + custNameInput.Text.Trim(' ')+"'" ;
 
  DataSet objDataSet = new DataSet();
    
  OleDbConnection objConnection = new OleDbConnection(strConnection);
  OleDbDataAdapter objAdapter = new OleDbDataAdapter(strSQL, objConnection);
   try {
   int rec; 
  rec=objAdapter.Fill(objDataSet, "Product_catalogue");
  if (rec!=0)
  {
  DataView objDataView = 
     new DataView(objDataSet.Tables["Product_catalogue"]);
    
  dgridCatalogue.DataSource=objDataView;
  dgridCatalogue.DataBind();
    log.Visible=true;
    error.Visible=false;
  }
  else if (rec==0)
  {
  error.Text="NO RECORDS WERE FOUND!!!";
    log.Visible=false;
    error.Visible=true;
  }
  }
  catch
  {
  }
 
  
 }  
	</script>
	<body>
		<div id="center1">
			<form id="Form1" method="post" runat="server">
				<table>
					<tr>
						<td class="currencytop" align="center"><STRONG><FONT size="4">Search Product</FONT></STRONG>
						</td>
					</tr>
					<tr>
						<td><STRONG>Please enter a product number to search:(e.g. 1,2,3)</STRONG>
						</td>
					</tr>
					<tr>
						<td align="center">
							<br>
							<asp:TextBox id="custNameInput" runat="server" width="100"></asp:TextBox>
							<asp:Button id="Button1" onClick="findCustomer" runat="server" Text="Search" />
						</td>
					</tr>
					<tr>
						<td>
							<asp:Panel ID="log" Runat="server" Visible="false">
								<asp:DataGrid id="dgridCatalogue" runat="server" HeaderStyle-ForeColor="#ffffff" HeaderStyle-Font-Bold="true"
									AutoGenerateColumns="false" HeaderStyle-BackColor="DarkGoldenrod" Font-Size="8pt" Font-Name="Verdana"
									CellSpacing="0" CellPadding="3" GridLines="Both" BorderWidth="1" BorderColor="black">
									<Columns>
										<asp:BoundColumn HeaderText="Product id" DataField="product_id" />
										<asp:BoundColumn HeaderText="Product Description" DataField="product_des" />
										<asp:BoundColumn HeaderText="Quantity" DataField="quantity" />
										<asp:BoundColumn HeaderText="Price" DataField="prices" />
									</Columns>
								</asp:DataGrid>
							</asp:Panel>
						</td>
					</tr>
					<tr>
						<td>
							<asp:label ID="error" Runat="server" Visible="false" ForeColor="#ff0066" Font-Bold="true" Font-Size="14"></asp:label>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</HTML>
