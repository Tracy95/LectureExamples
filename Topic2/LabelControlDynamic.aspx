<%@ Page Language="C#" AutoEventWireup="true" 
  CodeBehind="LabelControlDynamic.aspx.cs" 
  Inherits="LectureExamples.Topic2.LabelControlDynamic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Dynamic Label Control</title>
</head>
<body>
  <h2>Gone Tomorrow Travel</h2>
  Thank you<br />
  <asp:Label ID="Message1" runat="server" BackColor="yellow"
    ForeColor="blue" Height="15" Width="120" Font-Bold="true" />
  ,
    <br />
  you have asked for details about our
      <asp:Label ID="Message2" runat="server"
        BackColor="black" ForeColor="white" Height="20" Width="220"
        BorderStyle="ridge" BorderWidth="10"
        BorderColor="red" Font-Italic="true" Font-Name="Times"
        Font-Size="20px" />
  .
    <br />
  Details will be sent out sometime soon.
</body>
</html>
