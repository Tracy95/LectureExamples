<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paging_Sorting.aspx.cs" Inherits="LectureExamples.Topic7.Paging_Sorting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <asp:AccessDataSource ID="ShopDS" runat="server"
    DataFile="~/App_Data/shop.mdb"
    SelectCommand="SELECT * FROM [list]" />
  <form id="form1" runat="server">
    <h3>Fruit List</h3>
    <div>
      <asp:GridView ID="gvShop" runat="server" DataSourceID="ShopDS"
        AllowPaging="true" PageSize="3" AllowSorting="true">
        <PagerStyle HorizontalAlign="Center" BackColor="Beige" />
        <PagerSettings Position="TopAndBottom"
          FirstPageText="First" LastPageText="Last"
          Mode="NextPreviousFirstLast" />
      </asp:GridView>
      <p />
      <h3>Fruit List Alternative</h3>
      <asp:GridView ID="GridView1" runat="server" DataSourceID="ShopDS"
        AllowPaging="true" PageSize="4" AllowSorting="true">
        <PagerStyle HorizontalAlign="Right" BackColor="Beige" />
        <PagerSettings Position="Top" Mode="Numeric" />
      </asp:GridView>
    </div>
  </form>
</body>
</html>
