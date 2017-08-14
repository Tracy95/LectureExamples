<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login3.aspx.cs" Inherits="LectureExamples.Topic5.Login3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:AccessDataSource ID="DS1" runat="server" 
        DataFile="~/Topic5/App_Data/Login.accdb" 
        SelectCommand="SELECT [Username], [Password] FROM [Login1]"
        OnSelected="CheckLogin" />

      <asp:Login ID="Login1" runat="server" OnAuthenticate="Login_Authenticate"
        BackColor="#EFF3FB" 
        BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" 
        BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LayoutTemplate>
          <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
            <tr>
              <td>
                <table cellpadding="0">
                  <tr>
                    <td align="center" colspan="2" style="color:White;background-color:#507CD1;font-size:0.9em;font-weight:bold;">Log In</td>
                  </tr>
                  <tr>
                    <td align="right">
                      <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                    </td>
                    <td>
                      <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                    </td>
                  </tr>
                  <tr>
                    <td align="right">
                      <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                    </td>
                    <td>
                      <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2">
                      <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                    </td>
                  </tr>
                  <tr>
                    <td align="center" colspan="2" style="color:Red;">
                      <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                    </td>
                  </tr>
                  <tr>
                    <td align="right" colspan="2">
                      <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Log In" ValidationGroup="Login1" />
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </LayoutTemplate>
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
      </asp:Login>
    
    </div>
    </form>
</body>
</html>
