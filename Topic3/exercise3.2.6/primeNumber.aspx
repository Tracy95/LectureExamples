<%@ Page Language="c#" %>

<script language="c#" runat="server">

  void Page_Load()
  {
    primeMessage.Text = "";

    if (Page.IsPostBack)
    {
      int prime, i;
      prime = Convert.ToInt32(primeText.Text);
      if (prime == 2)
        primeMessage.Text = primeText.Text + " is a prime number!";
      for (i = 2; i <= (prime / 2); i++)
      {
        if (prime % i == 0)
        {
          primeMessage.Text = primeText.Text + " is <b>NOT</b> a prime number!";
          break;
        }
      }
      if (prime % i != 0)
      {
        primeMessage.Text = primeText.Text + " is a prime number!";
      }
    }
  }
</script>

<html>
<body>
  <h3>Prime Number Judge</h3>

  <form id="primeNumberJudge" method="post" runat="server">
    <p>Please enter the Number to judge:</p>
    <asp:TextBox ID="primeText" runat="server" /><p />
    <asp:Button ID="primeButton" runat="server" Text=" Prime Number Judge" /><p />
    <asp:Label ID="primeMessage" runat="server" /><br />
  </form>
  <p />
</body>
</html>
