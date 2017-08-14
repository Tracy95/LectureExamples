<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormView.aspx.cs" 
  Inherits="LectureExamples.Topic7.FormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form View Example</title>
</head>
<body>
  <asp:AccessDataSource runat="server" 
        DataFile="~/Topic7/App_Data/Customers2.mdb" ID="Customers2DS"
        InsertCommand="INSERT INTO [Customers] ([Customer_id], [Customer_name], [Customer_email], [Customer_pic]) VALUES (?, ?, ?, ?)"
        SelectCommand="SELECT * FROM [Customers] ORDER BY [ID]" 
        DeleteCommand="DELETE FROM [Customers] WHERE [ID] = ?"
        UpdateCommand="UPDATE [Customers] SET [Customer_id] = ?, [Customer_name] = ?, [Customer_email] = ?, [Customer_pic] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:FormParameter Name="Customer_id" Type="Int32" FormField="pid" />
            <asp:FormParameter Name="Customer_name" Type="String" FormField="pname" />
            <asp:FormParameter Name="Customer_email" Type="String" FormField="pemail" />
            <asp:FormParameter Name="Customer_pic" Type="String" FormField="ppic" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Customer_id" Type="Int32" />
            <asp:Parameter Name="Customer_name" Type="String" />
            <asp:Parameter Name="Customer_email" Type="String" />
            <asp:Parameter Name="Customer_pic" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <form id="form1" runat="server">
    <div>
    <h3>Display All Records in a GridView</h3>
        <asp:GridView ID="gvCatalogue" runat="server" DataSourceID="Customers2DS" CellPadding="3"
            Font-Names="arial" Font-Size="8pt" HeaderStyle-BackColor="#dcdcdc" HeaderStyle-ForeColor="blue"
            AutoGenerateColumns="False" DataKeyNames="ID">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                    SortExpression="ID" />
                <asp:BoundField DataField="Customer_id" HeaderText="Customer_id" SortExpression="Customer_id" />
                <asp:BoundField DataField="Customer_name" HeaderText="Customer_name" SortExpression="Customer_name" />
                <asp:BoundField DataField="Customer_email" HeaderText="Customer_email" SortExpression="Customer_email" />
                <asp:BoundField DataField="Customer_pic" HeaderText="Customer_pic" HtmlEncode="false" SortExpression="Customer_pic" />
            </Columns>
            <HeaderStyle BackColor="Gainsboro" ForeColor="Blue"></HeaderStyle>
        </asp:GridView>
      <p />
        <h3>FormView Example</h3>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" HeaderText="Add New Record"
            HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" CellPadding="3"
            DataSourceID="Customers2DS" DefaultMode="Insert">
            <InsertItemTemplate>
                <table border="0" width="100%">
                    <tr>
                        <td>
                            Customer ID:
                        </td>
                        <td>
                            <asp:TextBox ID="pid" runat="server" Text='<%# Bind("Customer_id") %>' />
                            <asp:RequiredFieldValidator ID="vldPIDReq" runat="server" ErrorMessage="Please enter a Customer ID"
                                ControlToValidate="pid" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="vldPIDInt" runat="server" ControlToValidate="pid"
                                ErrorMessage="Please Enter Only Numbers" ValidationExpression="\d*" Display="Dynamic" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Customer Name:
                        </td>
                        <td>
                            <asp:TextBox ID="pname" runat="server" Text='<%# Bind("Customer_name") %>' />
                            <asp:RequiredFieldValidator ID="vldPnameReq" runat="server" ErrorMessage="Please enter a Customer Name"
                                ControlToValidate="pname" Display="Dynamic" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Customer Email:
                        </td>
                        <td>
                            <asp:TextBox ID="pemail" runat="server" Text='<%# Bind("Customer_email") %>' />
                            <asp:RequiredFieldValidator ID="vldEmailReq" runat="server" ErrorMessage="Please enter a Customer Email Address"
                                ControlToValidate="pemail" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="vldEmailInt" runat="server" ControlToValidate="pemail"
                                ErrorMessage="Please entre a valid Email address" ValidationExpression=".*@.*\..*"
                                Display="Dynamic" />
                        </td>
                    </tr>
                </table>
                <asp:Button ID="btnInsert" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Add"/>
                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel" />
            </InsertItemTemplate>
        </asp:FormView>
    </div>
    </form>
</body>
</html>
