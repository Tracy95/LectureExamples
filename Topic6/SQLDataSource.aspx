<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SQLDataSource.aspx.cs" Inherits="LectureExamples.Topic6.SQLDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <div>

      <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:Customers2ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:Customers2ConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM [Customers] ORDER BY [Customer_id], [Customer_name]"></asp:SqlDataSource>


    </div>
    <asp:GridView ID="GridView1" runat="server"
      AllowPaging="True" AllowSorting="True"
      AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
      <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="True"
          ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="Customer_id" HeaderText="Customer_id"
          SortExpression="Customer_id" />
        <asp:BoundField DataField="Customer_name" HeaderText="Customer_name"
          SortExpression="Customer_name" />
        <asp:BoundField DataField="Customer_email" HeaderText="Customer_email"
          SortExpression="Customer_email" />
        <asp:BoundField DataField="Customer_pic" HeaderText="Customer_pic" HtmlEncode="false"
          SortExpression="Customer_pic" />
      </Columns>
    </asp:GridView>
  </form>
</body>
</html>
