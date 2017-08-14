<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropdownlistControl1.aspx.cs" Inherits="LectureExamples.Topic2.DropdownlistControl1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Dropdown List Example</title>
</head>
<body>
  <asp:Label ID="message" runat="server"
    BackColor="white" ForeColor="black"
    Height="20" Width="150"
    BorderStyle="ridge" BorderWidth="5"
    BorderColor="green" Font-Italic="true"
    Font-Names="Arial" Font-Size="20px" />
  <br />
  <form id="Form1" runat="server">
    Where do you want to go?<br />
    <br />
    <asp:DropDownList ID="cityList" runat="server">
      <asp:ListItem Selected="True">Singapore</asp:ListItem>
      <asp:ListItem>Kuala Lumpur</asp:ListItem>
      <asp:ListItem>Melbourne</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Button ID="MyButton" runat="server"
      Text="Select a City" BackColor="#0080C0" ForeColor="white"
      BorderWidth="4" BorderStyle="Ridge" Font-Names="Arial"
      Font-Size="16" Font-Bold="True" Height="50" Width="200" />
  </form>
</body>
</html>
