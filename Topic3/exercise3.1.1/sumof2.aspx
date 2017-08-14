<script runat="server" language="c#">
  void Page_Load()
  {
    double dblFirstNumber;
    double dblSecondNumber;
    double dblTotalNumber;
    try
    {
      if (Page.IsPostBack)
      {
        dblFirstNumber = Convert.ToDouble(number1.Text);
        dblSecondNumber = Convert.ToDouble(number2.Text);
        dblTotalNumber = dblFirstNumber + dblSecondNumber;
        result.Text = "Sum of the numbers: " + dblTotalNumber.ToString();
      }
    }
    catch (Exception e)
    {
      result.Text = "Please input numbers.";
    }
  }
</script>
<html>
<head>
  <title>Add two numbers</title>
</head>
<body>

  <br />

  <br />
  <form runat="server">
    Please enter first number:
      <asp:TextBox ID="number1" runat="server" Columns="10" />
    <br />
    <br />
    Please enter second number:
      <asp:TextBox ID="number2" runat="server" Columns="10" />
    <br />
    <br />
    <input type="Submit" value="Add my numbers">
  </form>
  <asp:Label ID="result" runat="server" />
</body>
</html>
