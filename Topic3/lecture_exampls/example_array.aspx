<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    void Page_Load()
    {
        string[] OzStates = { "Victoria", "New South Wales", 
          "South Australia", "Tasmania" };

        Array.Sort(OzStates);

        foreach (string str in OzStates)
        {
            Display1.Text += str + "<br />";
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Creating Arrary Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Using Array.Sort function for sorting arrays: <p />
    <asp:label id="Display1" runat="server" />
    <br />
    </div>
    </form>
</body>
</html>
