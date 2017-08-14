<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcceeDataSourceExample.aspx.cs" Inherits="LectureExamples.Topic6.AcceeDataSourceExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Customers] ORDER BY [Customer_name]">

      </asp:SqlDataSource>
      <h3>Customer Details</h3>
    </div>
      <asp:GridView ID="GridView1" runat="server" 
        AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        AlternatingRowStyle-BackColor="Cornsilk">
        <Columns>
          <asp:BoundField DataField="Customer_id" HeaderText="Customer_id" SortExpression="Customer_id" />
          <asp:BoundField DataField="Customer_name" HeaderText="Customer_name" SortExpression="Customer_name" />
          <asp:BoundField DataField="Customer_email" HeaderText="Customer_email" SortExpression="Customer_email" />
          <asp:BoundField DataField="Customer_pic" HeaderText="Customer_pic" HtmlEncode="false" />
          <asp:ImageField DataImageUrlField="Customer_pic" HeaderText ="Customer Image" />
        </Columns>
      </asp:GridView>
    </form>
</body>
</html>
