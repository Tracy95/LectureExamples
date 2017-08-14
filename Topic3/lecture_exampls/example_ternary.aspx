<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt16(TextBox1.Text);
        int b = Convert.ToInt16(TextBox2.Text);
        Display3.Text = a < b ? "a is less than b" : "a is not less than b";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ternary Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <asp:label id="Display1" runat="server" Text="a: " />
    <asp:TextBox ID="TextBox1" runat="server" Text = "7"></asp:TextBox>
    <br />
    <asp:label id="Display2" runat="server" Text="b: "/>
    <asp:TextBox ID="TextBox2" runat="server" Text = "5"></asp:TextBox>
    <br />
    <p>
        <asp:Button ID="Button1" runat="server" Height="27px" Text="Compare" 
            Width="87px" onclick="Button1_Click" />
        </p>
    <asp:label id="Display3" runat="server" />
    <br />
    </div>
    </form>
</body>
</html>
