<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs"
  Inherits="LectureExamples.Topic7.GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Grid View</title>
  <link href="~/Topic7/Book_StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <asp:AccessDataSource runat="server"
    DataFile="~/Topic7/App_Data/lothian.mdb"
    ID="lothianDS"
    SelectCommand="SELECT * FROM [books] ORDER BY [book_title]"
    UpdateCommand="UPDATE [books] SET [ISBN] = ?, [APN] = ?, [book_title] = ?, [book_author] = ?, [book_description] = ?, [book_price] = ?, [number_pages] = ?, [book_dimensions] = ?, [book_cover] = ?, [cover_image] = ?, [illustrator] = ?, [web_site] = ? WHERE [ID] = ?">
    <UpdateParameters>
      <asp:Parameter Name="ISBN" Type="String" />
      <asp:Parameter Name="APN" Type="String" />
      <asp:Parameter Name="book_title" Type="String" />
      <asp:Parameter Name="book_author" Type="String" />
      <asp:Parameter Name="book_description" Type="String" />
      <asp:Parameter Name="book_price" Type="Decimal" />
      <asp:Parameter Name="number_pages" Type="String" />
      <asp:Parameter Name="book_dimensions" Type="String" />
      <asp:Parameter Name="book_cover" Type="String" />
      <asp:Parameter Name="book_image" Type="String" />
      <asp:Parameter Name="illustrator" Type="String" />
    </UpdateParameters>
  </asp:AccessDataSource>
  <form id="form1" runat="server">
    <div>
      <asp:Label ID="lblDisplayBook" runat="server"
        CssClass="bookLabel" />
      <p />
      <asp:GridView ID="gvBooks" runat="server"
        DataSourceID="lothianDS"
        HeaderStyle-CssClass="booksHeader"
        CssClass="booksGrid"
        AlternatingRowStyle-CssClass="booksAlternate"
        RowStyle-CssClass="booksRow" AutoGenerateColumns="False"
        OnRowCommand="DisplayData" DataKeyNames="ID"
        AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle CssClass="booksAlternate" />
        <Columns>
          <asp:ButtonField ButtonType="Button" Text="Display"
            ItemStyle-CssClass="bookItem" />
          <asp:BoundField DataField="ID"
            HeaderText="ID" ReadOnly="True"
            ItemStyle-CssClass="bookItem" InsertVisible="False" SortExpression="ID" />

          <asp:HyperLinkField DataTextField="ISBN"
            DataNavigateUrlFields="ISBN, book_author"
            DataNavigateUrlFormatString="ShowBook.aspx?ISBN={0}&Author={1}"
            ItemStyle-CssClass="bookItem" SortExpression="ISBN"/>

          <asp:BoundField DataField="APN"
            HeaderText="APN" ItemStyle-CssClass="bookItem" SortExpression="APN" />
          <asp:BoundField DataField="book_title"
            HeaderText="book_title" ItemStyle-CssClass="bookItem" SortExpression="book_title" />
          <asp:BoundField DataField="book_author"
            HeaderText="book_author"
            ItemStyle-CssClass="bookItem" SortExpression="book_author" />
          <asp:BoundField DataField="book_description"
            HeaderText="book_description"
            ItemStyle-CssClass="bookItem" SortExpression="book_description" />
          <asp:BoundField DataField="book_price" DataFormatString="{0:C}"
            HeaderText="book_price" ItemStyle-CssClass="bookItem" SortExpression="book_price" />
          <asp:BoundField DataField="number_pages" HeaderText="number_pages" SortExpression="number_pages" />
          <asp:BoundField DataField="book_dimensions" HeaderText="book_dimensions" SortExpression="book_dimensions" />
          <asp:BoundField DataField="book_cover" HeaderText="book_cover" />
          <asp:BoundField HtmlEncode="False" DataField="cover_image" HeaderText="cover_image" />
          <asp:BoundField DataField="illustrator" HeaderText="illustrator" SortExpression="illustrator" />

          <asp:CommandField ButtonType="Link" EditText="Edit" ShowEditButton="true" ItemStyle-CssClass="bookItem" />
        </Columns>

        <HeaderStyle CssClass="booksHeader"></HeaderStyle>

        <RowStyle CssClass="booksRow"></RowStyle>
      </asp:GridView>
    </div>
  </form>
</body>
</html>
