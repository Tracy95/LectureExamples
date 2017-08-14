
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Drawing" %>

<script language="c#" runat="server">

private void RetrieveBook(object sender, EventArgs e)
 {
  string strConnection = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + 
                       Server.MapPath("lothian.mdb") + ";";
  string strSQL = "";
  string strResultsHolder = "";
  if (Request.Form["BookIDISBN"] != "")
  {
  strSQL = "SELECT * FROM books WHERE ISBN LIKE '%" + BookIDISBN.Text.Trim(' ') + "%'";
  }
  
   else if (Request.Form["BookIDAuthor"] != "")
  {
   strSQL = "SELECT * FROM books WHERE book_author LIKE '%" + BookIDAuthor.Text.Trim(' ') + "%'";
  }
   else if (Request.Form["BookIDTitle"] != "")
  {
   strSQL = "SELECT * FROM books WHERE book_title LIKE '%" + BookIDTitle.Text.Trim(' ') + "%'";
  }
  
  else
  {
  strSQL = "SELECT * FROM books ";
  }
  
  OleDbConnection objConnection = new OleDbConnection(strConnection);
  OleDbCommand objCommand = new OleDbCommand(strSQL, objConnection);
  OleDbDataReader objDataReader = null;
  objConnection.Open();
  objDataReader = objCommand.ExecuteReader();
  
  while (objDataReader.Read() == true)
    {
       strResultsHolder += objDataReader[10].ToString(); 
       strResultsHolder += "<b>Title: " + objDataReader[3].ToString() ;
       strResultsHolder += "<br />Author: " + objDataReader[4].ToString();
       strResultsHolder += "<br />" + objDataReader[11].ToString() + "</b>";
       strResultsHolder +="<br />ISBN:" + objDataReader[1].ToString();
       strResultsHolder += "<br />APN: " + objDataReader[2].ToString();
       strResultsHolder += "<p />" + objDataReader[5].ToString();
       strResultsHolder += "<p />Price: $" + objDataReader[6].ToString();
       strResultsHolder += "&nbsp;&nbsp;&nbsp;Pages: " + objDataReader[7].ToString();
       strResultsHolder += "&nbsp;&nbsp;" + objDataReader[8].ToString();
       strResultsHolder += "&nbsp;&nbsp;" + objDataReader[9].ToString() + "<br /><hr /><br />";
    }
    objDataReader.Close();
    objConnection.Close();
    if (strResultsHolder == "")
    {
      strResultsHolder ="We do not have this book";
    }
    BookList.Text = strResultsHolder;
 }  


</script>
<html>
<head>
</head>
<body>
<form id="Form1" method="post" runat="server">

 <center><h2>Find a book!</h2></center>
 
 Please enter part, or all, of the book's ISBN (without any spaces).<br/>    
 <asp:TextBox id="BookIDISBN" runat="server" width = "100" ></asp:TextBox>
 
 <asp:Button id="Button1" onclick="RetrieveBook" runat="server" 
   Text="Click to find book from its ISBN"
   style="font: 8pt verdana;background-color:lightgreen;
   border-color:black;width:200" />
<br>
   <b>or</b>
<br>   
Please enter part, or all, of the book's title. <br/>    
 <asp:TextBox id="BookIDTitle" runat="server" width = "200" ></asp:TextBox>
 
 <asp:Button id="Button2" onclick="RetrieveBook" runat="server" 
   Text="Click to find book from its title"
   style="font: 8pt verdana;background-color:lightgreen;
   border-color:black;width:200" />  
   
 <br>
   <b>or</b>
<br>   
Please enter part, or all, of the author's name. <br/>    
 <asp:TextBox id="BookIDAuthor" runat="server" width = "150" ></asp:TextBox>
 
 <asp:Button id="Button3" onclick="RetrieveBook" runat="server" 
   Text="Click to find book from its author"
   style="font: 8pt verdana;background-color:lightgreen;
   border-color:black;width:200" />
 <br /><br />
 
 <asp:label id="BookList" runat="server" />
   
  
</form>
</body>
</html>
