<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LectureExamples.Topic5.Restricted.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Login Control</title>
</head>
<body>
   <form id="form1" runat="server">
    <div class="heading3">
        Welcome 
        <asp:Label ID="lblUser" runat="server"/>
        , to the Secret Chamber
        <p />
        you have used 
        <asp:Label ID="lblType" runat="server"/>
        authentication to log on.
        <p />
        <asp:Button ID="Button1" Text="Logout" OnClick="Logout_Click" 
          runat="server" />
    </div>
    </form>
</body>
</html>
