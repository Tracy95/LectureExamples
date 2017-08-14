<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    void Page_Load()
    {
        string myDate = DateTime.Now.ToShortDateString();
        string[] dates = myDate.Split('/');

        Display1.Text = dates[0];
        Display2.Text = dates[1];
        Display3.Text = dates[2];

        Display4.Text = string.Join("/", dates,0,2);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Creating Variables Example</title>
</head>
<body>
    Today's date is
    <%  Response.Write(DateTime.Now.ToShortDateString()); %>  <p />
    <form id="form1" runat="server">
    <div>
    Split: <br />
    <asp:label id="Display1" runat="server" />
    <br />
    <asp:label id="Display2" runat="server" />
    <br />
    <asp:label id="Display3" runat="server" />
    <p />
    Joint: <br />
    <asp:label id="Display4" runat="server" />
    </div>
    </form>
</body>
</html>
