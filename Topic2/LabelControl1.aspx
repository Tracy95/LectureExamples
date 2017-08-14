<%@ Page Language="C#" AutoEventWireup="true" 
  CodeBehind="LabelControl1.aspx.cs" Inherits="LectureExamples.Topic2.LabelControl11" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Label Control Example</title>
</head>
<body>
  <form id="form1" runat="server">
  <h3>Gone Tomorrow Travel</h3>
  Thank you
  <asp:Label ID="Message1" runat="server" Text="Mighty Mouse" BackColor="yellow"
    ForeColor="blue" Height="15" Width="110" Font-Bold="true" />
, <br />
  you have asked for details about our <br />
  <asp:Label ID="Message2" runat="server"
    BackColor="black"
    Text="Fly by Night Holidays" ForeColor="white" Height="20"
    Width="220" BorderStyle="ridge" BorderWidth="10"
    BorderColor="red" Font-Italic="true" Font-Name="Times"
    Font-Size="20px" />
  . <br />
Details will be sent out sometime soon.
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
  </form>
</body>
</html>
