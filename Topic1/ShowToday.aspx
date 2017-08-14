<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowToday.aspx.cs" Inherits="LectureExamples.Topic1.ShowToday" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Today</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Today's date is: <%Response.Write(DateTime.Now.ToShortDateString()); %>
    </div>
    </form>
</body>
</html>
