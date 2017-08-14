<%@ Page Language="C#" AutoEventWireup="true" 
  CodeBehind="ButtonControl1.aspx.cs" 
  Inherits="LectureExamples.Topic2.ButtonControl1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Button Control Example</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:Button ID="MyButton" runat="server" OnClick="ClickHandler"
        Text="Pick me!" BackColor="#0080C0"
        ForeColor="white" BorderWidth="4"
        BorderStyle="Ridge" ToolTip="for instant happiness"
        Font-Names="Arial" Font-Size="16" Font-Bold="True"
        Height="50" Width="200" />
    </div>
  </form>
</body>
</html>
