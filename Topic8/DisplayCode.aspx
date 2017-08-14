<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayCode.aspx.cs" Inherits="LectureExamples.Topic8.DisplayCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Display Code</title>
  <link rel="stylesheet" href="style1.css" type="text/css" />
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <h1 class="pageHeader">Source Code</h1>
      <asp:Label ID="FileName"
        CssClass="codeheader" runat="server" />
      <asp:Panel ID="pnlCode" CssClass="code"
        runat="server" Width="80%">
        <asp:Label ID="Code" runat="server" />
      </asp:Panel>
    </div>
  </form>
</body>
</html>
