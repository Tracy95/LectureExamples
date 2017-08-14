<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Menu and Sitemap Example</title>
  <link href="stylesheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <form id="form1" runat="server">
    <h3>Bread Crump example</h3>
    <div>
      <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        <PathSeparatorTemplate>
          -->
        </PathSeparatorTemplate>
      </asp:SiteMapPath>
    </div>
    <h3>Menu example</h3>
    <div>
      <asp:Menu StaticDisplayLevels="2" ID="Menu1" runat="server"
        StaticSubMenuIndent="20" ForeColor="Black">
        <StaticMenuItemStyle CssClass="MenuStaItm" />
        <DynamicHoverStyle CssClass="MenuDynHov" />
        <DynamicMenuItemStyle CssClass="MenuDynItm" />
        <StaticHoverStyle CssClass="MenuStaHov" />
      </asp:Menu>
    </div>
    <br />
    <br />
    <h3>Sitemap TreeView example</h3>
    <div>

      <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
      <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ShowLines="True" />
    </div>

  </form>
</body>
</html>
