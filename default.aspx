<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    void Page_Load()
    {
        lblUser.Text = User.Identity.Name;
        lblType.Text = User.Identity.AuthenticationType;
    }
    void Logout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Server.Transfer("~/Topic5/Login.aspx");
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="heading3">
        Welcome,
        <asp:Label ID="lblUser" runat="server" />
        , to the Secret Chamber
        <p />
        you have used
        <asp:Label ID="lblType" runat="server" />
        authentication to log on.
        <p />
        <asp:Button ID="Button1" Text="Logout" OnClick="Logout_Click" runat="server" />
    </div>
    </form>
</body>
</html>
