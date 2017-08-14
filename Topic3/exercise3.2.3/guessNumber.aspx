<%@ Page Language="c#" %>

<script runat="server">

  void Page_Load()
  {
    int number, counter, RandomNumber;
    Random r = new Random();
    int myNumber = Convert.ToInt32(r.Next(5)) + 1;

    if (Page.IsPostBack)
    {
      number = Convert.ToInt32(NumberRequired.SelectedItem.Value);

      if (number == myNumber)
      {

        Message1.Text = "";

        for (counter = 0; counter < number; counter++)
        {
          RandomNumber = Convert.ToInt32(r.Next(100)) + 1;

          Message1.Text += " " + RandomNumber;
        }

      }
      else
      {
        Message1.Text = "Wrong guess, try again, the number was " + myNumber;
      }
    }
  }
</script>

<html>
<head>
  <title></title>
</head>
<body>
  <form runat="server">
    Guess how many random numbers:
    <br />
    <br />
    <asp:DropDownList ID="NumberRequired" runat="server">
      <asp:ListItem>1</asp:ListItem>
      <asp:ListItem>2</asp:ListItem>
      <asp:ListItem>3</asp:ListItem>
      <asp:ListItem>4</asp:ListItem>
      <asp:ListItem>5</asp:ListItem>

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
