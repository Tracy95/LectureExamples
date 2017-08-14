<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccessDataControl.aspx.cs" Inherits="LectureExamples.Topic6.AccessDataControl" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Book List</title>
</head>
<body>
  <asp:AccessDataSource runat="server" ID="dsAccess"
  datafile="~/Topic6/App_Data/lothian.mdb"
  selectcommand="SELECT * FROM [books]" />
  <h3>Book Details</h3>
  <form id="Form1" runat="server">
    <asp:GridView ID="gvProducts" runat="server"
      AllowPaging="True" AllowSorting="True"
      DataSourceID="dsAccess" AutoGenerateColumns="False" DataKeyNames="ID" >
      <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
          ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
        <asp:BoundField DataField="APN" HeaderText="APN" SortExpression="APN" />
        <asp:BoundField DataField="book_title" HeaderText="book_title" SortExpression="book_title" />
        <asp:BoundField DataField="book_author" HeaderText="book_author" SortExpression="book_author" />
        <asp:BoundField DataField="book_description" HeaderText="book_description" SortExpression="book_description" />
        <asp:BoundField DataField="book_price" HeaderText="book_price" SortExpression="book_price" />
        <asp:BoundField DataField="number_pages" HeaderText="number_pages" SortExpression="number_pages" />
        <asp:BoundField DataField="book_dimensions" HeaderText="book_dimensions" SortExpression="book_dimensions" />
        <asp:BoundField DataField="book_cover" HeaderText="book_cover" SortExpression="book_cover" />
        <asp:BoundField DataField="cover_image" HeaderText="cover_image" SortExpression="cover_image" />
        <asp:BoundField DataField="illustrator" HeaderText="illustrator" SortExpression="illustrator" />
        <asp:BoundField DataField="web_site" HeaderText="web_site" SortExpression="web_site" />
      </Columns>
    </asp:GridView>
  </form>
</body>
</html>
