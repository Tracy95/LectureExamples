<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListFiles.aspx.cs" Inherits="LectureExamples.Topic8.ListFiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>List Files Example</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:DataList ID="dlFiles" runat="server" Font-Names="Arial">
        <HeaderStyle Font-Bold="true" />
        <HeaderTemplate>Directory File List</HeaderTemplate>
        <AlternatingItemStyle BackColor="#7DCCF7" />
        <ItemTemplate>
          <a href="DisplayCode.aspx?filename=<%# Container.DataItem %>" target="_blank">
            <%# Container.DataItem %></a>
        </ItemTemplate>
      </asp:DataList>
    </div>
  </form>
</body>
</html>
