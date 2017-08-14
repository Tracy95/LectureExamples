<%@ Page Language="C#" %>

<script runat="server">
  void Page_Load()
  {
    string strTimesToRepeat = dlistRepeatTimes.SelectedValue;
    string strOutput = "";

    if (IsPostBack)
    {
      int i;

      switch (strTimesToRepeat)
      {
        case "5":
          for (i = 0; i < 5; i++)
          {
            strOutput = strOutput + txtUserInput.Text + "<br />";
          }
          break;

        case "10":
          for (i = 0; i < 10; i++)
          {
            strOutput = strOutput + txtUserInput.Text + "<br />";
          }
          break;
      }

      lblOutput.Text = strOutput;
    }
  }
</script>

<head>
  <title>Exercise 1</title>
</head>
<body>
  <form id="form1" runat="server">

    <asp:TextBox ID="txtUserInput" Text="Enter some text in here..." runat="server" />

    <br />
    <br />

    <asp:DropDownList ID="dlistRepeatTimes" runat="server">
      <asp:ListItem Value="5">5 times</asp:ListItem>
      <asp:ListItem Value="10">10 times</asp:ListItem>
    </asp:DropDownList>

    <input type="Submit" value="Submit" />

    <br />
    <br />

    <asp:Label ID="lblOutput" runat="server" />

  </form>
</body>
</html>
