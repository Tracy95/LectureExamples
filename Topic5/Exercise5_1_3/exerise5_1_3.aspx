<%@ Import Namespace="System.Drawing" %>

<%@ Page Language="c#" %>

<script language="c#" runat="server">
    protected void ValidateTravelData(object source,
                           System.Web.UI.WebControls.ServerValidateEventArgs args)
    {
        // Since we have a bit to validate, assume that the entry is invalid....
        args.IsValid = false;
        DateTime departDate, returnDate, promotionStartDate, promotionFinishDate;
        feedbackLabel.ForeColor = Color.Maroon;
        promotionStartDate = DateTime.Parse("10/10/2020");
        promotionFinishDate = DateTime.Parse("10/20/2020");
        bool promotion = false;
        int numberOfTicket;
        feedbackLabelbonus.Visible = false;

        try
        {
            departDate = DateTime.Parse(flightDepartureDateTextBox.Text);
        }
        catch (Exception ex)
        {
            feedbackLabel.Text = "Invalid data entry: Departure Date is invalid. " +
                                 "Enter a valid date, for example:  17/07/2020";
            return;
        }
        try
        {
            returnDate = DateTime.Parse(flightReturnDateTextBox.Text);
        }
        catch (Exception ex)
        {
            feedbackLabel.Text = "Invalid data entry: Return Date is invalid. " +
                                 "Enter a valid date, for example:  17/07/2020";
            return;
        }
        try
        {
            numberOfTicket = Int32.Parse(numberOfTicketTextBox.Text);
        }
        catch (Exception ex)
        {
            feedbackLabel.Text = "Invalid Number of Ticket. " +
                                 "Enter a Positive Integer";
            return;
        }
        // Verify that the departure date is less than the
        // return date - no same day trips in this system!
        if (departDate >= returnDate)
        {
            feedbackLabel.Text = "Invalid data entry: The Departure Date must be " +
                                 "earlier than the Return Date and no same-day " +
                                 "returns for this travel package!";
            return;
        }
        // Verify that the departure date is not in the past or today!
        if (departDate < DateTime.Now)
        {
            feedbackLabel.Text = "Invalid data entry:  The Departure Date cannot " +
                                 "be in the past or today!";
            return;
        }

        if (numberOfTicket <= 0)
        {
            feedbackLabel.Text = "Invalid Number of Tickets. " +
                                 "Enter a whole number";
            return;
        }

        if (departDate >= promotionStartDate && returnDate <= promotionFinishDate)
        {
            promotion = true;
        }

        if (promotion == true && numberOfTicket > 5)
        {
            feedbackLabel.Text = "During the special offer period, a maximum of 5 tickets per customer applies";
            return;
        }

        if (promotion == true && numberOfTicket <= 5)
        {
            feedbackLabelbonus.Text = "<b>Since you booked tickets within our special offer period you qualify for a 15% discount</b><p />";
            feedbackLabelbonus.Visible = true;
        }
        // Everthing is valid - set the IsValid flag...
        args.IsValid = true;
    }

    private void bookTheTripButton_Click(object sender, EventArgs e)
    {
        // Has the page been validated for all data entry?
        if (!(Page.IsValid))
        {
            return;
        }
        // We're all set - book the flight!
        DateTime departDate, returnDate;
        departDate = DateTime.Parse(flightDepartureDateTextBox.Text);
        returnDate = DateTime.Parse(flightReturnDateTextBox.Text);
        feedbackLabel.ForeColor = Color.Maroon;
        feedbackLabel.Text = "Your flight from Morrabbin to Avalon " +
                             "will depart on the " + departDate.ToLongDateString() +
                             " and return on the " + returnDate.ToLongDateString();
    }
</script>
<html>
<head>
<title></title>
</head>
<body>
    <form id="TravelForm" method="post" runat="server">
    <!-- Flight Info -->
    <asp:panel ID="Panel" runat="server" BackColor="#C4ECFF" ForeColor="black" Padding="20"
        BorderWidth="4" BorderStyle="Ridge" Font-Name="Arial" Font-Size="10" Height="462px"
        Width="300" ToolTip="On special this month" HorizontalAlign="center">
        <br />
        <h3>
            Near Miss Airlines</h3>
        Flight 007: Morrabbin to Avalon<br />
        Fly between 10/10/2020 and 20/10/2020<br />
        (inclusive) for a 15% discount<br />
        Maximum of 5 tickets per customer.
        <p>
            Departure Date:
            <asp:TextBox ID="flightDepartureDateTextBox" runat="server" Width="80px" Height="22px"></asp:TextBox><br>
            Return Date:
            <asp:TextBox ID="flightReturnDateTextBox" runat="server" Width="80px" Height="22px"></asp:TextBox><br>
            <asp:RequiredFieldValidator ID="validateFlightDepartureDate" runat="server" ControlToValidate="flightDepartureDateTextBox"
                ErrorMessage="<p><b>Please enter a valid Departure Date.</b><br /> "></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="validateFlightReturnDate" runat="server" Width="263px"
                Height="10px" ControlToValidate="flightReturnDateTextBox" ErrorMessage="<b>Please enter a valid Return Date.</b><p>"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="validateFlightDates" runat="server" ControlToValidate="flightDepartureDateTextBox"
                OnServerValidate="ValidateTravelData"></asp:CustomValidator><br />
            Number of Tickets:
            <asp:TextBox ID="numberOfTicketTextBox" runat="server" Width="80px" Height="22px"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="validateTicketNumber" runat="server" ControlToValidate="numberOfTicketTextBox"
                ErrorMessage="<p><b>Please enter a valid Number of Ticket.</b><br /> "></asp:RequiredFieldValidator><br />
            <asp:Button ID="bookTheTripButton" OnClick="bookTheTripButton_Click" runat="server"
                Text="Confirm flight dates"></asp:Button>
            <br />
            <img height="107" src="nearmiss.gif" alt="nearmiss.gif" width="120" align="right" vspace="20" border="0"/>
            <asp:Label ID="feedbackLabel" runat="server" Text="Please enter your <br />dates, then click <br />the button"></asp:Label><br>
            <br />
            <br />
            <asp:Label ID="feedbackLabelbonus" runat="server" Height="16px"></asp:Label>
    </asp:panel>
    </form>
    </p>
</body>
</html>
