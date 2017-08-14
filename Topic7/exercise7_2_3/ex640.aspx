<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.OleDb" %>

<script language="c#" runat="server">

private void findCustomer(object sender, EventArgs e)
{
	string strConnection = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("Customers2.mdb") + ";";

	string strSQL = "SELECT * FROM Customers WHERE Customer_name LIKE '%" + custNameInput.Text.Trim(' ') + "%'";
  
	string strResultsHolder = "";
	
	OleDbConnection objConnection = new OleDbConnection(strConnection);
	OleDbCommand objCommand = new OleDbCommand(strSQL, objConnection);
	
	OleDbDataReader objDataReader = null;
	
	objConnection.Open();
	objDataReader = objCommand.ExecuteReader();
  
	while (objDataReader.Read() == true)
	{
		strResultsHolder += "<br />" + objDataReader[4].ToString() + "<br />";
		strResultsHolder += "<b>Customer ID: </b>" + objDataReader[1].ToString() + "<br />";
		strResultsHolder += "<b>Customer Name: </b>" + objDataReader[2].ToString() + "<br />";
		strResultsHolder += "<b>Customer E-mail: </b>" + objDataReader[3].ToString() + "<br /><br />";
    }
	
    objDataReader.Close();
    objConnection.Close();
	
    if (strResultsHolder == "")
    {
		strResultsHolder = "<b>Customer not found!</b>";
    }
    custResults.Text = strResultsHolder;
 }  
 
</script>
<html>
<body>

<form id="Form1" method="post" runat="server">

<b>Search for a customer</b>
<br>
Please enter the customers name to see if they are in the database!
<br><br>
Name: <asp:TextBox id="custNameInput" runat="server" width = "100"></asp:TextBox>
<asp:Button id="Button1" onClick="findCustomer" runat="server" Text="Submit" />
<br><br>
<asp:Label id="custResults" runat="server" />
   
</form>

</body>
</html>