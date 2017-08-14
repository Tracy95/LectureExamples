<%@ Page language="c#" %>
<%@ Import Namespace="System.Drawing" %>

  <script language="c#" runat="server">
  protected void ValidateTravelData(object source, 
                         System.Web.UI.WebControls.ServerValidateEventArgs args)
  {
    // Since we have a bit to validate, assume that the entry is invalid....
    args.IsValid = false;
    DateTime departDate, returnDate;
    feedbackLabel.ForeColor = Color.Maroon;
    
    try 
    {
        departDate = DateTime.Parse(flightDepartureDateTextBox.Text);
    } catch (Exception ex) 
    {
        feedbackLabel.Text = "Invalid data entry: Departure Date is invalid. " +
                             "Enter a valid date, for example:  " + DateTime.Now.AddDays(1).ToString("d");
        return;
    }
    try 
    {
        returnDate = DateTime.Parse(flightReturnDateTextBox.Text);
    } catch (Exception ex) 
    {
        feedbackLabel.Text = "Invalid data entry: Return Date is invalid. " +
                             "Enter a valid date, for example:  " + DateTime.Now.AddDays(8).ToString("d");
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
    
     if (returnDate - departDate < TimeSpan.FromDays(7))
    {
        feedbackLabel.Text = "Sorry, you must go away for at least 7 days"; 
        return;
    }
    
    
    // Everthing is valid - set the IsValid flag...
    args.IsValid = true;
  }
   

  private void bookTheTripButton_Click(object sender, EventArgs e)
  {
    // Has the page been validated for all data entry?
     feedbackLabelbonus.Text = "";
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
if (departDate > DateTime.Now + TimeSpan.FromDays(30))
    {
        feedbackLabelbonus.Text = "<b>Since you have booked 30 days in advance you qualify for a 10% discount</b><p />"; 
       
    }
  }</script>


<html>
<head>
<title></title>
</head>
  <body>
    
    <form id="TravelForm" method="post" runat="server">

    <!-- Flight Info -->
      <asp:panel id="Panel" 
      runat="server" 
      BackColor = "#C4ECFF" ForeColor ="black"
      Padding = "20"
      BorderWidth = "4"
      BorderStyle = "Ridge"
      Font-Name = "Arial"
      Font-Size = "10"
      Height = "350"
      Width = "300"
      ToolTip = "On special this month"
      HorizontalAlign = "center"
      
      >
      <br /><h3>Near Miss Airlines</h3>
   Flight 007: Morrabbin to Avalon<p />
      Departure Date:
      <asp:TextBox id="flightDepartureDateTextBox" runat="server"
      Width="80px" Height="22px"/><br />
      
      Return Date:
      <asp:TextBox id="flightReturnDateTextBox" runat="server"
       Width="80px" Height="22px"/><br />
       
      <asp:RequiredFieldValidator id="validateFlightDepartureDate" runat="server"
      ErrorMessage="<p><b>Please enter a valid Departure Date.</b><br /> "
      ControlToValidate="flightDepartureDateTextBox" />
      
        <p>
          <asp:RequiredFieldValidator ID="validateFlightReturnDate" runat="server" ControlToValidate="flightReturnDateTextBox" ErrorMessage="&lt;b&gt;Please enter a valid Return Date.&lt;/b&gt;&lt;p&gt;" />
          <p>
            <asp:CustomValidator ID="validateFlightDates" runat="server" ControlToValidate="flightDepartureDateTextBox" OnServerValidate="ValidateTravelData" />
            <asp:Button ID="bookTheTripButton" runat="server" OnClick="bookTheTripButton_Click" Text="Confirm flight dates" />
            <br />
            <br />
            <img src="nearmiss.gif" alt="nearmiss.gif" width="120" height="107" vspace="20" border="0" align = "right"/>
            <asp:Label ID="feedbackLabel" runat="server" Text="Please enter your &lt;br /&gt;dates, then click &lt;br /&gt;the button" />
            <br />
            <br />
            <br />
            <asp:Label ID="feedbackLabelbonus" runat="server" />
          </p>
          <p>
          </p>
        </p>
              
      </asp:panel>
      
    </form>
  </body>
</html>
