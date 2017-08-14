<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelExample.aspx.cs" Inherits="LectureExamples.Topic2.PanelExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Panel Example</title>
  <link href="Style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <form id="Form1" runat="server">
    <asp:Panel ID="pnl1" runat="server" CssClass="panel1">
      Please enter your name:
      <asp:TextBox ID="text1" runat="server" Columns="25"
        CssClass="txtBox" TabIndex="1" />
    </asp:Panel>
    <p />
      &nbsp;<asp:Panel ID="pnl2" runat="server" CssClass="panel2">
      Please enter your address:
      <asp:TextBox ID="text2" runat="server" Rows="3"
        CssClass="txtBox"
        Columns="20" TextMode="multiline"
        Text="Home address please" TabIndex="2" />
      <p />
      Please enter your password:
      <asp:TextBox ID="text3" runat="server" CssClass="txtBox"
        TextMode="password" Columns="10" TabIndex="3" />
    </asp:Panel>
    <p />
    <asp:Button ID="MyButton" runat="server" CssClass="button"
      Text="Submit" TabIndex="4" />
  </form>
  <asp:Label ID="message1" runat="server" />
  <br />
  <asp:Label ID="message2" runat="server" />
  <br />
  <asp:Label ID="message3" runat="server" />
  <br />
</body>
</html>
