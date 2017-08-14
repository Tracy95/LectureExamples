<%@ Page Language="c#" %>

<script language="c#" runat="server">

  public void Click(object sender, EventArgs e)
  {
    try
    {
      int year;
      year = Convert.ToInt32(yearText.Text);
      if ((year % 4 == 0 && year % 100 != 0) | (year % 400 == 0))
      {
        yearMessage.Text = "Year <b>" + yearText.Text + "</b> is Leap Year.";
      }
      else
      {
        yearMessage.Text = "Year <b>" + yearText.Text + "</b> is <b>NOT</b> Leap Year.";
      }
    }
    catch
    {
      yearMessage.Text = "Please input a valid year.";
    }
  }
</script>

<html>
<body>
  <h1>Leap Year Judgement</h1>
  <br />
  <hr />
  <form id="leapYearJudge" method="post" runat="server">
    <p>Please enter the year:</p>
    <asp:TextBox ID="yearText" runat="server" /><p />
    <asp:Button ID="yearButton" runat="server" Text=" Leap Year Judge" OnClick="Click" /><p />
    <asp:Label ID="yearMessage" runat="server" /><br />
  </form>
  <p />
</body>
</html>



