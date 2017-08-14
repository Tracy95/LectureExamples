<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="LectureExamples.Topic8.SendEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Send Email Example</title>
  <link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
  <asp:AccessDataSource ID="dsCustomers" runat="server"
    DataFile="~/App_Data/Customers.mdb"
    SelectCommand="SELECT Customer_id, Customer_name, Customer_email, 
        Customer_pic FROM Customers"></asp:AccessDataSource>
  <form id="form1" runat="server">
    <div>
      <asp:Label ID="lblMail" CssClass="error" runat="server" />
      <p />
      <asp:GridView ID="gvCustomers" runat="server" DataSourceID="dsCustomers" DataKeyNames="Customer_id"
        AutoGenerateColumns="false" RowStyle-CssClass="customerRow" AlternatingRowStyle-CssClass="customerAlternate"
        HeaderStyle-CssClass="customerHeader" CssClass="customerGrid" CellPadding="5">
        <Columns>
          <asp:BoundField DataField="Customer_id" Visible="false" />
          <asp:BoundField DataField="Customer_name" HeaderText="Full Name" />
          <asp:BoundField DataField="Customer_email" HeaderText="Email" />
          <asp:ImageField AlternateText="Customer picture" 
             DataImageUrlField="Customer_pic"
            DataImageUrlFormatString="pix/{0}"
            HeaderText="Photo" />
          <asp:TemplateField HeaderText="Select">
            <ItemTemplate>
              <asp:CheckBox runat="server" ID="chkEmail" />
            </ItemTemplate>
          </asp:TemplateField>
        </Columns>
      </asp:GridView>
      <br />
      <br />
      <table class="emailTable">
        <tr>
          <td class="emailHeader" width="15%">From
          </td>
          <td class="emailRow">FIT5192_Lecturer
          </td>
        </tr>
        <tr>
          <td class="emailHeader" width="15%">Subject
          </td>
          <td class="emailRow">
            <asp:TextBox ID="txtSubject" Width="350" runat="server" />
          </td>
        </tr>
        <tr>
          <td class="emailHeader" width="15%">Attachment
          </td>
          <td class="emailRow">
            <asp:FileUpload ID="fileUpload" runat="server" Width="430" />
          </td>
        </tr>
        <tr>
          <td class="emailHeader">Message
          </td>
          <td class="emailRow">
            <asp:TextBox runat="server" ID="txtMsg" TextMode="MultiLine" Columns="55" Rows="15" />
          </td>
        </tr>
      </table>
      <br />
      <asp:Button ID="SendMail" runat="server" OnClick="SendingEmail" Text="Send Email" />
      <br />
      <br />
    </div>
  </form>
</body>
</html>
