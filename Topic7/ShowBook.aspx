<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowBook.aspx.cs" Inherits="LectureExamples.Topic7.ShowBook" %>

<!DOCTYPE html>

<asp:AccessDataSource runat="server"
  DataFile="~/Topic7/App_Data/lothian2.mdb" ID="lothianDS" 
  SelectCommand =""/>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>ListView</title>
  <link href="~/Topic7/Book_StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <form id="form1" runat="server">
    <asp:ListView runat="server" ID="lvBook">
      <ItemTemplate>
        <table width="60%" cellpadding="3">
          <tr>
            <td>
              <asp:Image ID="imgCover" runat="server" 
                ImageUrl='<%# Eval("cover_image", "{0}") %>'
                CssClass="image" />
            </td>
            <td>
              <b>Title: <%# Eval("book_title") %></b><br />
              Author: <%# Eval("book_author") %><br />
              ISBN: <%# Eval("ISBN") %><br />
              <%# Eval("book_description") %><p />
              Price: <%# Eval("book_price","{0:C}") %> <br />
              Pages: <%# Eval("number_pages") %>;
              <%# Eval("book_dimensions")  %>
              <%# Eval("book_cover")  %><p />
            </td>
          </tr>
        </table>
      </ItemTemplate>
    </asp:ListView>
  </form>
</body>
</html>
