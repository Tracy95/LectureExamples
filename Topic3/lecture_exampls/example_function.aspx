<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    void Page_Load()
    {
        DateTime DueDate;
        DateTime CheckOutDate;
        CheckOutDate = DateTime.Now;
        DueDate = FindDueDate(CheckOutDate);

        Display1.Text = "Your books are being checked OUT on " +
          CheckOutDate.ToString("d");

        Display2.Text = "Your books are DUE BACK on " +
          DueDate.ToString("d");
    }

    DateTime FindDueDate(DateTime CheckOutDate)
    {
        return CheckOutDate.AddDays(30);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Function Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>On-Line Library</h2>
    <asp:label id="Display1" runat="server" />
    <br />
    <asp:label id="Display2" runat="server" />
    <br />
    </div>
    </form>
</body>
</html>
