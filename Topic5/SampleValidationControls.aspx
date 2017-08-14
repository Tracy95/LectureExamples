<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleValidationControls.aspx.cs" Inherits="LectureExamples.Topic5.SampleValidationControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Validation Example</title>
  <link href="site.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <form id="TravelForm" method="post" runat="server">
    <asp:Panel ID="Panel" runat="server" CssClass="pnlNearMiss"
      ToolTip="On special this month">
      <br />
      <h3>Near Miss Airlines</h3>
      <h4>Flight 007: Morrabbin to Avalon</h4>
      <p />
      <table>
        <tr>
          <td>Departure Date:</td>
          <td>
            <asp:TextBox ID="flightDepBox" runat="server"
              Width="80px" Height="22px" />
            <br />
          </td>
        </tr>
        <tr>
          <td>Return Date:</td>
          <td>
            <asp:TextBox ID="flightReturnBox" runat="server"
              Width="80px" Height="22px" />
            <br />
          </td>
        </tr>
        <tr>
          <td>Number of seats:</td>
          <td>
            <asp:TextBox ID="txtSeats" runat="server"
              Width="40px" Height="22px" />
            <br />
          </td>
        </tr>
        <tr>
          <td>Confirm number of seats:</td>
          <td>
            <asp:TextBox ID="txtSeats2" runat="server"
              Width="40px" Height="22px" />
            <br />
          </td>
        </tr>
        <tr>
          <td>Email:</td>
          <td>
            <asp:TextBox ID="txtEmail" runat="server"
              Width="200px" Height="22px" />
            <br />
          </td>
        </tr>
      </table>
      <asp:CustomValidator ID="vldFlightDates" runat="server"
        ControlToValidate="flightDepBox"
        OnServerValidate="ValidateTravelData" />
      <br />
      <asp:RequiredFieldValidator ID="vldDepDate" runat="server"
        ErrorMessage="Please enter a valid Departure Date"
        ControlToValidate="flightDepBox" />
      <br />
      <asp:RequiredFieldValidator ID="vldRetDate" runat="server"
        ErrorMessage="Please enter a valid Return Date"
        ControlToValidate="flightReturnBox" />
      <br />
      <asp:RequiredFieldValidator ID="vldSeatNum" runat="server"
        ErrorMessage="Please enter a seat number"
        ControlToValidate="txtSeats" />
      <br />
      <asp:RangeValidator ID="rngSeats" runat="server"
        ControlToValidate="txtSeats"
        ErrorMessage="Please enter between 1 and 4 seats"
        MinimumValue="1" MaximumValue="4" Type="Integer" EnableClientScript="false" />
      <br />
      <asp:CompareValidator ID="cmpSeats" runat="server"
        ControlToValidate="txtSeats"
        ControlToCompare="txtSeats2"
        ErrorMessage="Please enter same value for Seats and
  Confirm Seats" EnableClientScript="false" />
      <br />
      <asp:RegularExpressionValidator ID="validateEmail"
        runat="server" ControlToValidate="txtEmail"
        ValidationExpression=".*@.*\..*"
        ErrorMessage="Invalid email" Display="dynamic" />
      <br />
      <asp:Button ID="bookTheTripButton" runat="server"
        Text="Confirm flight dates"
        OnClick="bookTheTripButton_Click" />
      <div style="height: 135px">
        <asp:Image ID="Nearmiss" ImageUrl="~/Topic5/Images/nearmiss.gif" alt="nearmiss.gif" runat="server"
          width="120" height="107" vspace="20" border="0" align="left" />
        <br />

        <asp:Label ID="feedbackLabel" runat="server"
          Text="Please enter your dates, then click the button" />
        <br />
      </div>
    </asp:Panel>
  </form>
</body>
</html>

