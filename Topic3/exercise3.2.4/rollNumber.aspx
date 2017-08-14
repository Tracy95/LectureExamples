<script language="C#" runat="server">
void Page_load() 
  {
    Random r = new Random();
    int diceRoll = 0;
    int total = 0;
    int loops = 0;
    while (total <= 100)
    {
      diceRoll = Convert.ToInt32(r.Next(6)) + 1;
      total +=  (5 * diceRoll);
      message1.Text += "Rolled a: " + diceRoll + " and the total so far = " + total + "<br />";
    loops++;
    } 
    message1.Text += "Finished! <br />It required " + loops + " throws of the die";
  }
</script>

<html>
<head>
<title></title>
</head>
<body>
  <asp:label id="message1" runat="server"/>
</body>
</html>
