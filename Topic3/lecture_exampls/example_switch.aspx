<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string choice = DropDownList1.SelectedItem.ToString();
            switch (choice)
            {
                case "Plane":
                    Display1.Text = "You have selected to fly";
                    break;
                case "Car":
                    Display1.Text = "You have selected to go by road";
                    break;
                case "Train":
                    Display1.Text = "You have selected to go by rail";
                    break;
                case "Boat":
                    Display1.Text = "You have selected to go by boat";
                    break;
                default:
                    Display1.Text = "You are staying at home";
                    break;
            }
        }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Switch Statement Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:label id="Display1" runat="server" Text="Please choose your travel means:" />
    <br />
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="108px">
            <asp:ListItem Selected="True">Home</asp:ListItem>
            <asp:ListItem>Plane</asp:ListItem>
            <asp:ListItem>Car</asp:ListItem>
            <asp:ListItem>Train</asp:ListItem>
            <asp:ListItem>Boat</asp:ListItem>
        </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" Width="87px" 
                onclick="Button1_Click" />
        </p>
    </div>
    </form>
</body>
</html>
