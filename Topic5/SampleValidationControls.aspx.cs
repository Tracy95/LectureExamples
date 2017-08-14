using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LectureExamples.Topic5
{
  public partial class SampleValidationControls : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ValidateTravelData(object source, ServerValidateEventArgs args)
    {
      // Since we have a bit to validate,
      //assume that the entry is invalid....
      args.IsValid = false;

      DateTime departDate, returnDate;
      feedbackLabel.ForeColor = System.Drawing.Color.Maroon;
      try
      {
        departDate = DateTime.Parse(flightDepBox.Text);
      }
      catch (Exception ex)
      {
        feedbackLabel.Text = "Departure Date is invalid.<br /> " +
        "Enter a valid date, for example: " + DateTime.Now.AddDays(1).ToString("d");
        return;
      }
      try
      {
        returnDate = DateTime.Parse(flightReturnBox.Text);
      }
      catch (Exception ex)
      {
        feedbackLabel.Text = "Return Date is invalid. <br />" +
        "Enter a valid date, for example: " + DateTime.Now.AddDays(2).ToString("d");
        return;
      }
      // Verify that the departure date is less than the
      // return date - no same day trips in this system!
      if (departDate >= returnDate)
      {
        feedbackLabel.Text = "The Departure Date must be " +
        "earlier than the Return Date and no same-day " +
        "returns for this travel package!";
        return;
      }
      // Verify departure date is not in the past or today!
      if (departDate < DateTime.Now)
      {
        feedbackLabel.Text = "The Departure Date cannot " +
        "be in the past or today!";
        return;
      }
      // Everthing is valid - set the IsValid flag...
      args.IsValid = true;
    }

    protected void bookTheTripButton_Click(object sender, EventArgs e)
    {
      // Has the page been validated for all data entry?
      if (!(Page.IsValid))
      {
        return;
      }
      DateTime departDate, returnDate;
      departDate = DateTime.Parse(flightDepBox.Text);
      returnDate = DateTime.Parse(flightReturnBox.Text);
      feedbackLabel.Text = "Success! Your flight from Morrabbin to Avalon " +
      "will depart on " + departDate.ToLongDateString() +
      " and return on " + returnDate.ToLongDateString();
    }
  }
}