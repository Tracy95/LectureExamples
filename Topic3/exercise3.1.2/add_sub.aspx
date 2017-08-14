<script runat="server" language="c#">
  void Page_Load()
  {

    double dblFirstNumber;
    double dblSecondNumber;
    double dblTotalNumber;

    try
    {
      //either of the following two lines can be used
      //if (action.SelectedItem.Value == "Addition")
        if (Request.Form["action"] == "Addition")
        {
          dblFirstNumber = Convert.ToDouble(number1.Text);
          dblSecondNumber = Convert.ToDouble(number2.Text);
          dblTotalNumber = dblFirstNumber + dblSecondNumber;
          result.Text = "Sum of the numbers: " + dblTotalNumber.ToString();
        }

        if (Request.Form["action"] == "Subtraction")
        {
          dblFirstNumber = Convert.ToDouble(Request.Form["number1"]);
          dblSecondNumber = Convert.ToDouble(Request.Form["number2"]);
          dblTotalNumber = dblFirstNumber - dblSecondNumber;
          result.Text = "Difference of the numbers: " + dblTotalNumber.ToString();
        }
      }
    catch
    {
      result.Text = "Please input numbers";
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
    Please enter first number:
      <asp:TextBox ID="number1" runat="server" Columns="10" />
    <br />
    <br />
    Please enter second number:
      <asp:TextBox ID="number2" runat="server" Columns="10" />
    <br />
    <br />
    <asp:RadioButtonList ID="action" runat="server">
      <asp:ListItem id="option1" runat="server" Value="Addition" />
      <asp:ListItem id="option2" runat="server" Value="Subtraction" />

    </asp:RadioButtonList>
    <input type="Submit" value="Process my numbers">
  </form>
  <asp:Label ID="result" runat="server" />
</body>
</html>
