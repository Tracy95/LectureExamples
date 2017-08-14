<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView2.aspx.cs" 
  Inherits="LectureExamples.Topic7.GridView2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Grid View</title>
  <link href="~/Topic7/Book_StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <asp:AccessDataSource runat="server"
    DataFile="~/Topic7/App_Data/lothian2.mdb"
    ID="lothian2DS"
    SelectCommand="SELECT ID, ISBN, APN, book_title, book_author, book_description, book_price, number_pages, book_dimensions, book_cover, cover_image, illustrator FROM books ORDER BY book_title">
  </asp:AccessDataSource>
  <form id="form1" runat="server">
    <div>
      <asp:Label ID="lblDisplayBook" runat="server"
        CssClass="bookLabel" />
      <p />
      <asp:GridView ID="gvBooks" runat="server"
        DataSourceID="lothian2DS"
        HeaderStyle-CssClass="booksHeader"
        CssClass="booksGrid"
        AlternatingRowStyle-CssClass="booksAlternate"
        RowStyle-CssClass="booksRow" AutoGenerateColumns="False"
        OnRowCommand="DisplayData" DataKeyNames="ID"
        AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle CssClass="booksAlternate"/>
        <Columns>
          <asp:ButtonField ButtonType="Link" Text="Display"
            ItemStyle-CssClass="bookItem" />
          <asp:BoundField DataField="ID"
            HeaderText="ID" ReadOnly="True"
            ItemStyle-CssClass="bookItem" InsertVisible="False" SortExpression="ID" />
          <asp:HyperLinkField DataTextField="ISBN"
DataNavigateUrlFields="ISBN"
DataNavigateUrlFormatString="ShowBook.aspx?ISBN={0}&Author={1}"
ItemStyle-CssClass="bookItem" HeaderText="ISBN" SortExpression="ISBN"/>
          <asp:BoundField DataField="APN"
            HeaderText="APN" ItemStyle-CssClass="bookItem" SortExpression="APN" />
          <asp:BoundField DataField="book_title"
            HeaderText="book_title"
            ItemStyle-CssClass="bookItem" SortExpression="book_title" />
          <asp:BoundField DataField="book_author"
            HeaderText="book_author"
            ItemStyle-CssClass="bookItem" SortExpression="book_author" />
          <asp:BoundField DataField="book_description"
            HeaderText="book_description" ItemStyle-CssClass="bookItem" />
          <asp:BoundField DataField="book_price" HeaderText="book_price" SortExpression="book_price" />
          <asp:BoundField DataField="number_pages" HeaderText="number_pages" SortExpression="number_pages" />
          <asp:BoundField DataField="book_dimensions" HeaderText="book_dimensions" SortExpression="book_dimensions" />
          <asp:BoundField DataField="book_cover" HeaderText="book_cover" />
          <asp:BoundField DataField="cover_image" HeaderText="cover_image" HtmlEncode="false" />
          <asp:ImageField AlternateText="cover pic" HeaderText="Cover (Image)" DataImageUrlField="cover_image" ItemStyle-CssClass="bookItem" />
          <asp:BoundField DataField="illustrator" HeaderText="illustrator" SortExpression="illustrator" />
        </Columns>

<HeaderStyle CssClass="booksHeader"></HeaderStyle>

<RowStyle CssClass="booksRow"></RowStyle>
      </asp:GridView>
    </div>
  </form>
</body>
</html>
