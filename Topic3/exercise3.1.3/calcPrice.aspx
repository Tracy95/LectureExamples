<script runat="server" language="c#">
  void Page_Load()
  {
    double dblAmount;
    double dblDiscount;
    double dblNewPrice;

    if (Page.IsPostBack)
    {
      dblAmount = Convert.ToDouble(amount.Text);
      dblDiscount = Convert.ToDouble(discount.Text);
      dblNewPrice = dblAmount - (dblDiscount * dblAmount / 100);
      result.Text = "Discount price: $" + dblNewPrice.ToString();
    }
  }
</script>
<html>
<head>
  <title></title>
</head>
<body>

  <br />

  <br />
  <form runat="server">
    Please enter the amount ($):
      <asp:TextBox ID="amount" runat="server" Columns="10" />
    <br />
    <br />
    Please enter the discount (%):
      <asp:TextBox ID="discount" runat="server" Columns="10" />
    <br />
    <br />

    <input type="Submit" value="Calculate new price">
  </form>
  <asp:Label ID="result" runat="server" />
</body>
</html>
