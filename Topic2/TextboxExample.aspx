<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextboxExample.aspx.cs" 
  Inherits="LectureExamples.Topic2.TextboxExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Textbox Example</title>
  <link href="Style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <form id="Form1" runat="server">
    Please enter your name:
    <asp:TextBox ID="text1" runat="server" Columns="25"
      CssClass="txtBox" />
    <p />
    Please enter your address:
    <asp:TextBox ID="text2" runat="server" Rows="3"
      Columns="20" TextMode="MultiLine" CssClass="txtBox"
      Text="Home address please" />
    <p />
    Please enter your password:
    <asp:TextBox ID="text3" runat="server"
      TextMode="password" Columns="10" />
    <p />
    <asp:Button ID="MyButton" runat="server"
      CssClass="button"
      Text="Submit" />
  </form>
  <asp:Label ID="message1" runat="server" />
  <br />
  <asp:Label ID="message2" runat="server" />
  <br />
  <asp:Label ID="message3" runat="server" />
  <br />
</body>
</html>
