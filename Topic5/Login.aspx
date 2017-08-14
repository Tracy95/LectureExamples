<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LectureExamples.Topic5.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Forms Authentication</title>
  <link href="~/Topic5/site.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <asp:AccessDataSource ID="DS1" runat="server"
    DataFile="~/Topic5/App_Data/Login.accdb" OnSelected="CheckLogin" 
    SelectCommand="SELECT [Username], [Password] FROM [Login1]" />
  
  <form id="Form1" runat="server">
    <asp:Login ID="Login" runat="server"
      OnAuthenticate="Login_Authenticate"
      CssClass="login"
      TitleText="<br />Please enter your details below to login for this site.<br /><br />"
      UserNameLabelText="Username:"
      UserNameRequiredErrorMessage="Username required<p />"
      PasswordRequiredErrorMessage="Password required"
      Height="250px" Width="380px"
      LoginButtonText="Click to login" DisplayRememberMe="False" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
      <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
      <LabelStyle CssClass="loginText" />
      <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
      <TextBoxStyle Font-Size="0.8em" />
      <TitleTextStyle CssClass="loginText" BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
      <ValidatorTextStyle CssClass="loginValidator" />
    </asp:Login>
    <p />
      &nbsp;<asp:ValidationSummary ID="vlSummary1" Font-Names="Arial"
      Visible="true" CssClass="vldSummary"
      runat="server" ValidationGroup="Login"
      HeaderText="Please correct the following errors:" />
  </form>
</body>
</html>
