<script language="C#" runat="server">
  void Page_Load()
  {
    int intselected;

    string[] strDestinations = new string[5] { "Singapore", "Melbourne", "Sydney", "Kuala Lumpur", "Bangkok" };
    title.Text = "";
    foreach (string strCity in strDestinations)
    {
      title.Text += strCity + "<br /> ";
    }


    if (Page.IsPostBack)
    {
      //either of the following two lines can be used
      //intselected = Convert.ToInt32(Choice.SelectedItem.Value);
      intselected = Convert.ToInt32(Request.Form["Choice"]);

      Message.Text = "You selected " + strDestinations[intselected - 1];

    }

  }
</script>

<html>
<head></head>
<body>
  Select from our special discount destinations:<br />
  <asp:Label ID="title" runat="server" />
  <form runat="server">
    <asp:RadioButtonList ID="Choice" runat="server">
      <asp:ListItem id="option1" Value="1" runat="server" />
      <asp:ListItem id="option2" Value="2" runat="server" />
      <asp:ListItem id="option3" Value="3" runat="server" />
      <asp:ListItem id="option4" Value="4" runat="server" />
      <asp:ListItem id="option5" Value="5" runat="server" />
    </asp:RadioButtonList>
    <input type="submit" value="Submit Choice">
    <br />
    <br />
    <asp:Label ID="Message" runat="server" />
  </form>
</body>
</html>
