<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Drawing" %>
<script language="c#" runat="server">
void Page_Load()
{
	string conn = @"Provider=Microsoft.Jet.OleDb.4.0;Data Source= " + (string)Server.MapPath("details.mdb");
	string sql = "SELECT Fruit_ID AS ID, Fruit_Name AS Name FROM Fruits";
	   
	OleDbConnection objConn = new OleDbConnection(conn);
	OleDbCommand objComm = new OleDbCommand(sql, objConn);
	OleDbDataReader objRead = null;
	objConn.Open();
	   
	dgDet.DataSource = objComm.ExecuteReader(CommandBehavior.CloseConnection);
	dgDet.DataBind();       
}
private void byID(object sender, EventArgs e)
{	
	string results = "";
	if(tbxID.Text != "")
	{
		string conn = @"Provider=Microsoft.Jet.OleDb.4.0;Data Source= " + (string)Server.MapPath("details.mdb");
		string sql = "SELECT * FROM Fruits WHERE Fruit_ID LIKE '%" + tbxID.Text.Trim(' ') + "%'";
				
		OleDbConnection objConn = new OleDbConnection(conn);
		OleDbCommand objComm = new OleDbCommand(sql, objConn);
		OleDbDataReader objRead = null;
		objConn.Open();
		objRead = objComm.ExecuteReader();
		
		while(objRead.Read() == true)
		{
			results += "<b>Name : " + objRead["Fruit_Name"].ToString() + "<br>";
			results += "<b>Description : " + objRead["Fruit_Description"].ToString() + "<br><br>";
		}
		objRead.Close();
		objConn.Close();
	}
	if(results == "")
	{
		results = "No Records Found that match '" + tbxID.Text + "'";
	}	
	list.Text = results;  
}
	
private void byName(object sender, EventArgs e)
{	
	string results = "";
	if(tbxName.Text != "")
	{
		string conn = @"Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + (string)Server.MapPath("details.mdb");
		string sql = "SELECT * FROM Fruits WHERE Fruit_Name LIKE '%" + tbxName.Text.Trim(' ') + "%'";
		
		
		OleDbConnection objConn = new OleDbConnection(conn);
		OleDbCommand objComm = new OleDbCommand(sql, objConn);
		OleDbDataReader objRead = null;
		objConn.Open();
		objRead = objComm.ExecuteReader();
		
		while(objRead.Read() == true)
		{
			results += "<b>Name : " + objRead["Fruit_Name"].ToString() + "<br>";
			results += "<b>Description : " + objRead["Fruit_Description"].ToString() + "<br><br>";		
		}
		objRead.Close();
		objConn.Close();
	}
	if(results == "")
	{
		results = "No Records Found that match '" + tbxName.Text + "'";
	}	
	list.Text = results;
}
</script>

<html>
<head>
<title>Search</title>
</head>
<body>
<form runat="server">
	<asp:DataGrid ID="dgDet" runat="server"
		 HeaderStyle-BackColor="#0066FF"
		 HeaderStyle-ForeColor="#FFFFFF"
		 HeaderStyle-Font-Bold="true"
		 HeaderStyle-Font-Size="12"
		 BorderStyle="None"
		 Font-Name="Arial"
		 Font-Size="10"
	/>
	<br />
	<br />
	<asp:Label ID="lblDesc" Font-Bold="true" Font-Size="12" ForeColor="#FF9900" Font-Name="Arial" Text="Find fuit details by searching either fruit ID or fruit name" runat="server"/>
	<br />
	<asp:Label ID="lblID" Font-Bold="true" Font-Size="12" Font-Name="Arial" Text="Search by ID" runat="server"/>
	<br />
	<asp:TextBox ID="tbxID" runat="server"/>
	<asp:Button ID="btnName" Text="Search" OnClick="byID" runat="server"/>
	<br />
	<asp:Label ID="lblName" Font-Bold="true" Font-Size="12" Font-Name="Arial" Text="Search by Name" runat="server"/>
	<br />
	<asp:TextBox ID="tbxName" runat="server"/>
	<asp:Button ID="btnEmail" Text="Search" OnClick="byName" runat="server"/>
	<br />
	<asp:Label ID="list" ForeColor="#0066FF" Font-Size="8" Font-Bold="true" Font-Name="Arial" runat="server"/>
	<br />
</form>

</body>
</html>
