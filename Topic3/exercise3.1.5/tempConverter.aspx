<script runat="server" language="c#">
  void Page_Load()
  {
    string first = num1.Text;
    
    display.Text = "";

    if (Page.IsPostBack)
    {
      try
      {
        double numerat = 5;
        double denom = 9;
        float firstNo = Convert.ToSingle(first);
        double fahern = (double)((denom / numerat) * firstNo + 32);
        double cels = (double)((numerat / denom) * (firstNo - 32));


        if ((temp.SelectedItem.Value == "cel") && (temp1.SelectedItem.Value == "fah"))
        {
          display.Text = "Fahrenheit: " + fahern.ToString() + "<br />";
        }
        if ((temp.SelectedItem.Value == "fah") && (temp1.SelectedItem.Value == "cel"))
        {
          display.Text = "Celsius: " + cels.ToString() + "<br />";
        }
        if ((temp.SelectedItem.Value == "fah") && (temp1.SelectedItem.Value == "fah"))
        {
          display.Text = "Fahrenheit: " + firstNo.ToString() + "<br />";
        }
        if ((temp.SelectedItem.Value == "cel") && (temp1.SelectedItem.Value == "cel"))
        {
          display.Text = "Celsius: " + firstNo.ToString() + "<br />";
        }
      }
      catch
      {
        display.Text = "Please input a number in the field";
      }

    }
  } 
</script>
<html>
<head>
  <title></title>
</head>
<body>
  Convert Fahrenheit to Celsius and vice-versa
  <br />
  <form id="Form1" runat="server">
    convert:<br />
    <asp:TextBox ID="num1" runat="server" Columns="10" />
    <asp:DropDownList ID="temp" runat="server">
      <asp:ListItem Value="fah">
                  Fahrenheit</asp:ListItem>
      <asp:ListItem Value="cel">
               Celsius</asp:ListItem>

    </asp:DropDownList>


    to 
    <asp:DropDownList ID="temp1" runat="server">
      <asp:ListItem Value="fah">
                  Fahrenheit</asp:ListItem>
      <asp:ListItem Value="cel">
               Celsius</asp:ListItem>

    </asp:DropDownList><br />
    <br />

    <input type="Submit" value="Calculate">
    <br />
    <br />
    <asp:Label ID="display" runat="server" />
    <br />

  </form>
</body>
</html>


