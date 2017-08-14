<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccessDataControl2.aspx.cs" Inherits="LectureExamples.Topic6.AccessDataControl2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Access Data Control Example</title>
</head>
<body>
  <asp:AccessDataSource runat="server" id="dsAccess" 
    DataFile="~/Topic6/App_Data/Customers2.mdb" 
    SelectCommand="SELECT * FROM [Customers] ORDER BY [Customer_id]" />

  <h3>Table Details</h3>
    <form id="form1" runat="server">
    <div>
      <asp:GridView ID="GridView1" runat="server" 
        AllowPaging="True" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="dsAccess">
        <Columns>
          <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
          <asp:BoundField DataField="Customer_id" HeaderText="Customer_id" SortExpression="Customer_id" />
          <asp:BoundField DataField="Customer_name" HeaderText="Customer_name" SortExpression="Customer_name" />
          <asp:BoundField DataField="Customer_email" HeaderText="Customer_email" SortExpression="Customer_email" />
          <asp:BoundField DataField="Customer_pic" HtmlEncode="false" HeaderText="Customer_pic"  />
        </Columns>
      </asp:GridView>

    </div>
    </form>
</body>
</html>
