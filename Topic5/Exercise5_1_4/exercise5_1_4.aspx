<script language="c#" runat="server">
  private void addRec(object sender, EventArgs e)
  {
    lblMsg.Text = "";
    if (!(Page.IsValid))
    {
      return;
    }
    else
    {
      lblMsg.Text = "Details Submitted Succesfully";
    }
  }
</script>
<html>
<head>
  <title>Register</title>
</head>
<body>
  <form id="main" runat="server">
    <asp:Label ID="lblFName" Font-Bold="true" Font-Name="Arial" 
      Text="First Name" runat="server" />
    <asp:TextBox ID="FName" Columns="50" runat="server" />
    <br />
    <asp:RequiredFieldValidator ID="vFName" ControlToValidate="FName" 
      Display="Dynamic" ErrorMessage="Please Enter First Name" 
      Font-Name="Arial" ForeColor="#FF0000" runat="server" />
    <br />
    <asp:Label ID="lblLName" Font-Bold="true" Font-Name="Arial" 
      Text="Last Name" runat="server" />
    <asp:TextBox ID="LName" Columns="50" runat="server" />
    <br />
    <asp:RequiredFieldValidator ID="vLName" ControlToValidate="LName" 
      Display="Dynamic" ErrorMessage="Please Enter Last Name" 
      Font-Name="Arial" ForeColor="#FF0000" runat="server" />
    <br />
    <asp:Label ID="lblEmail" Font-Bold="true" Font-Name="Arial" 
      Text="Email" runat="server" />
    <asp:TextBox ID="Email" Columns="50" runat="server" />
    <br />
    <asp:RequiredFieldValidator ID="vEmail" ControlToValidate="Email" 
      Display="Dynamic" ErrorMessage="Please Enter an Email Address" 
      Font-Name="Arial" ForeColor="#FF0000" runat="server" />
    <br />
    <asp:Label ID="lblreEmail" Font-Bold="true" Font-Name="Arial" 
      Text="Re-Enter Email Address" runat="server" />
    <asp:TextBox ID="reEmail" Columns="50" runat="server" />
    <br />
    <asp:RequiredFieldValidator ID="vreEmail" ControlToValidate="reEmail" 
      Display="Dynamic" ErrorMessage="Please re-Enter an Email Address" 
      Font-Name="Arial" ForeColor="#FF0000" runat="server" />
    <br />
    <asp:RegularExpressionValidator ID="regEmail" ControlToValidate="Email" 
      Display="Dynamic" ValidationExpression=".*.@.*\..*" 
      ErrorMessage="Please Enter a Valid Email Address" 
      Font-Name="Arial" ForeColor="#FF0000" runat="server" />
    <br />
    <asp:CompareValidator ID="comEmail" ControlToCompare="Email" 
      ControlToValidate="reEmail" Display="Dynamic" 
      ErrorMessage="Email Address Don't Match" 
      Font-Name="Arial" ForeColor="#FF0000" runat="server" />
    <br />

    <asp:Label ID="lblAdd" Font-Bold="true" Font-Name="Arial" 
      Text="Address" runat="server" />
    <asp:TextBox ID="Addr" Columns="50" runat="server" Rows="3" 
      TextMode="MultiLine" Wrap="true" />
    <br />
    <asp:RequiredFieldValidator ID="vAddr" ControlToValidate="Addr" 
      Display="Dynamic" ErrorMessage="Please Enter An Address" 
      Font-Name="Arial" ForeColor="#FF0000" runat="server" />
    <br />

    <asp:Label ID="lblPost" Font-Bold="true" Font-Name="Arial" 
      Text="Postcode" runat="server" />
    <asp:TextBox ID="Post" Columns="50" runat="server" />

    <asp:Label ID="lblState" Font-Bold="true" Font-Name="Arial" 
      Text="State" runat="server" />
    <asp:DropDownList ID="State" runat="server">
      <asp:ListItem Text="ACT" Value="ACT" />
      <asp:ListItem Text="NT" Value="NT" />
      <asp:ListItem Text="NSW" Value="NSW" />
      <asp:ListItem Text="QLD" Value="QLD" />
      <asp:ListItem Text="SA" Value="SA" />
      <asp:ListItem Text="WA" Value="WA" />
      <asp:ListItem Text="TAS" Value="TAS" />
      <asp:ListItem Text="VIC" Value="VIC" Selected="true" />
    </asp:DropDownList>
    <br />
    <asp:RequiredFieldValidator ID="vPost" ControlToValidate="Post" 
      Display="Dynamic" ErrorMessage="Please Enter a Postcode" 
      Font-Name="Arial" ForeColor="#FF0000" runat="server" />
    <asp:RangeValidator ID="rgPost" ControlToValidate="Post" 
      MinimumValue="1000" MaximumValue="9999" Type="Integer" 
      Display="Dynamic" ErrorMessage="Please Enter a Valide Postcode" 
      Font-Name="Arial" ForeColor="#FF0000" runat="server" />
    <br />

    <asp:Button ID="btnSub" OnClick="addRec" Text="Submit" runat="server" />
    <br />
  </form>
  <asp:Label ID="lblMsg" Font-Name="Arial" ForeColor="#0066FF" runat="server" />
</body>
</html>
