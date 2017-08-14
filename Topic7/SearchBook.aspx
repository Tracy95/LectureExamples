<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchBook.aspx.cs" Inherits="LectureExamples.Topic7.SearchBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Book Search</title>
  <link href="~/Topic7/Book_StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <asp:AccessDataSource runat="server"
    DataFile="~/Topic7/App_Data/lothian2.mdb"
    ID="lothian2">
  </asp:AccessDataSource>

  <form id="form1" runat="server">
    <div>
      <center><h2>Find a book!</h2></center>
      <table>
        <tr>
          <td colspan="2">Please enter part, or all, of the book's
ISBN (without any spaces).<br />
          </td>
        </tr>
        <tr>
          <td class="text">
            <asp:TextBox ID="txtISBN" runat="server"
              Width="100"></asp:TextBox>
          </td>
          <td>
            <asp:Button ID="btnISBN" OnClick="findBook"
              runat="server"
              Text="Click to find book from its ISBN"
              CssClass="button" CommandName="ISBN" />
          </td>
        </tr>
        <tr>
          <td><b>or</b></td>
        </tr>
        <tr>
          <td colspan="2">Please enter part, or all, of the book's
title.<br />
          </td>
        </tr>
        <tr>
          <td>
            <asp:TextBox ID="txtTitle" runat="server"
              Width="200"></asp:TextBox>
          </td>
          <td>
            <asp:Button ID="btnTitle" OnClick="findBook"
              runat="server"
              Text="Click to find book from its title"
              CssClass="button" CommandName="Title" />
          </td>
        </tr>
        <tr>
          <td colspan="2">Please enter part, or all, of the author's
name.<br />
          </td>
        </tr>
        <tr>
          <td>
            <asp:TextBox ID="txtAuthor" runat="server"
              Width="150"></asp:TextBox>
          </td>
          <td>
            <asp:Button ID="btnAuthor" OnClick="findBook"
              runat="server"
              Text="Click to find book from its author"
              CssClass="button" CommandName="Author" />
          </td>
        </tr>
        <tr>
          <td><b>or</b></td>
        </tr>
      </table>
      <br />
      <br />
      <br />
      <asp:ListView ID="lv" runat="server">
        <ItemTemplate>
          <table>
            <tr>
              <td>
                <asp:Image ID="imgCover" runat="server"
                  ImageUrl='<%# Eval("cover_image") %>'
                  AlternateText="book cover"
                  ToolTip='<%# Eval("cover_image") %>'
                  CssClass="image" />
              </td>
              <td>
                <b>Title: <%# Eval("book_title") %><br />
                  Author: <%# Eval("book_author") %><br />
                  <%# Eval("illustrator") %></b>
                ISBN: <%# Eval("ISBN") %><br />
                APN: <%# Eval("APN") %><p />
                <%# Eval("book_description") %><p />
                Price: <%# Eval("book_price") %>
                Pages: <%# Eval("number_pages") %>
                <%# Eval("book_dimensions") %>
                <%# Eval("book_cover") %><p />
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <hr />
              </td>
            </tr>
          </table>
        </ItemTemplate>
      </asp:ListView>
    </div>
  </form>
</body>
</html>
