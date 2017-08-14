<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    void Page_Load()
    {
        string myString = "the quick brown fox";
        Display1.Text = "myString.Length = " + myString.Length.ToString();
        Display2.Text = "myString.Substring(0, 9) = " + myString.Substring(0, 9);
        Display3.Text = "myString.IndexOf('o') = " + myString.IndexOf('o').ToString();
        Display4.Text = "myString.LastIndexOf('o') = " + myString.LastIndexOf('o').ToString();
        Display5.Text = "myString.ToUpper() = " + myString.ToUpper();
        Display6.Text = "myString.ToLower() = " + myString.ToLower();
        Display7.Text = "myString.Contains(\"xx\") = " + myString.Contains("xx").ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Creating Variables Example</title>
</head>
<body>
    myString = "the quick brown fox" <p />
    <form id="form1" runat="server">
    <div>
    <asp:label id="Display1" runat="server" />
    <br />
    <asp:label id="Display2" runat="server" />
    <br />
    <asp:label id="Display3" runat="server" />
    <br />
    <asp:label id="Display4" runat="server" />
    <br />
    <asp:label id="Display5" runat="server" />
    <br />
    <asp:label id="Display6" runat="server" />
    <br />
    <asp:label id="Display7" runat="server" />
    <br />
    <asp:label id="Display8" runat="server" />
    <br />
    </div>
    </form>
</body>
</html>
