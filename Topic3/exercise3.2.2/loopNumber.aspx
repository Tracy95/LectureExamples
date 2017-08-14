<%@ Page Language="c#" %>

<script runat="server">
  void Page_Load()
  {
    int number, counter, RandomNumber;
    Random r = new Random();
    if (Page.IsPostBack)
    {
      number = Convert.ToInt32(NumberRequired.SelectedItem.Value);
      Message1.Text = "";
      for (counter = 0; counter < number; counter++)
      {
        RandomNumber = Convert.ToInt32(r.Next(100)) + 1;

        Message1.Text += " " + RandomNumber;
      }
    }
  }
</script>

<html>
<head>
  <title>Loop Example</title>
</head>
<body>
  <form runat="server">
    Enter the number of random numbers:
    <br />
    <br />
    <asp:DropDownList ID="NumberRequired" runat="server">
      <asp:ListItem>1</asp:ListItem>
      <asp:ListItem>2</asp:ListItem>
      <asp:ListItem>3</asp:ListItem>
      <asp:ListItem>4</asp:ListItem>
      <asp:ListItem>5</asp:ListItem>
      <asp:ListItem>6</asp:ListItem>
      <asp:ListItem>7</asp:ListItem>
      <asp:ListItem>8</asp:ListItem>
      <asp:ListItem>9</asp:ListItem>
      <asp:ListItem>10</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <input type="submit">
    <br />
    <br />
    <asp:Label ID="Message1" runat="server" />
  </form>
</body>
</html>
