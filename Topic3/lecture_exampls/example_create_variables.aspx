<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    void Page_Load()
    {
        const int ABSOLUTE_ZERO = -273;
        int num1 = 5;
        int num2 = 2;

        Display1.Text = "5 + 2 = " + (num1 + num2).ToString();
        Display2.Text = "5 - 2 = " + (num1 - num2).ToString();
        Display3.Text = "5 * 2 = " + (num1 * num2).ToString();
        Display4.Text = "5 / 2 = " + (num1 / num2).ToString();
        Display5.Text = "5 % 2 = " + (num1 % num2).ToString();
        Display6.Text = "5 / 2 = " + (Convert.ToDouble(num1) / Convert.ToDouble(num2)).ToString();

        Display7.Text = "Ceiling(5.2) = " + Math.Ceiling(5.2);
        Display8.Text = "Floor(5.2) = " + Math.Floor(5.2);
        Display9.Text = "Sqrt(144) = " + Math.Sqrt(144);
        Display10.Text = "Pow(3,3) = " + Math.Pow(3, 3);

        Boolean result = 5 > 2;
        Display11.Text = "5 > 2 = " + result;
        Display12.Text = "2 > 5 = " + Convert.ToBoolean(2 > 5);

        Display13.Text = "Current Date and Time is  " + DateTime.Now;
        Display14.Text = "Short Date = " + DateTime.Now.ToShortDateString();
        Display15.Text = "Short Time = " + DateTime.Now.ToShortTimeString();
        Display16.Text = "Day of Week = " + DateTime.Now.DayOfWeek;
        Display17.Text = "Month = " + DateTime.Now.Month;
        Display18.Text = "Month Name = " + DateTime.Now.ToString("MMMM");

        Display19.Text = "Current Date and Time is  " + DateTime.Now.ToString("g");
        Display20.Text = "Current Date is  " + DateTime.Now.ToString("d");
        Display21.Text = "Current Time is  " + DateTime.Now.ToString("T");
        Display22.Text = "Current Time is  " + DateTime.Now.ToString("t");
        Display23.Text = "Current Day is  " + DateTime.Now.ToString("dddd");
        Display24.Text = "Current Month and Year is  " + DateTime.Now.ToString("Y");
        Display25.Text = "Current Month is  " + DateTime.Now.ToString("MMMM");
        Display26.Text = "Current Year is  " + DateTime.Now.ToString("yyyy");
        Display27.Text = "ABSOLUTE_ZERO is a constant set to " + ABSOLUTE_ZERO;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Creating Variables Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:label id="Display1" runat="server" />
    <br />
    <asp:label id="Display2" runat="server" />
    <br />
    <asp:label id="Display3" runat="server" />
    <br />
    <asp:label id="Display4" runat="server" />
    <br />
    <asp:label id="Display5" runat="server" />
    <br />
    <asp:label id="Display6" runat="server" />
    <p />
    <asp:label id="Display7" runat="server" />
    <br />
    <asp:label id="Display8" runat="server" />
    <br />
    <asp:label id="Display9" runat="server" />
    <br />
    <asp:label id="Display10" runat="server" />
    <p />
    <asp:label id="Display11" runat="server" />
    <br />
    <asp:label id="Display12" runat="server" />
    <p />
    <asp:label id="Display13" runat="server" />
    <br />
    <asp:label id="Display14" runat="server" />
    <br />
    <asp:label id="Display15" runat="server" />
    <br />
    <asp:label id="Display16" runat="server" />
    <br />
    <asp:label id="Display17" runat="server" />
    <br />
    <asp:label id="Display18" runat="server" />
    <p />
    <asp:label id="Display19" runat="server" />
    <br />
    <asp:label id="Display20" runat="server" />
    <br />
    <asp:label id="Display21" runat="server" />
    <br />
    <asp:label id="Display22" runat="server" />
    <br />
    <asp:label id="Display23" runat="server" />
    <br />
    <asp:label id="Display24" runat="server" />
    <br />
    <asp:label id="Display25" runat="server" />
    <br />
    <asp:label id="Display26" runat="server" />
    <p />
    <asp:label id="Display27" runat="server" />
    <br />
    </div>
    </form>
</body>
</html>
