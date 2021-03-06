﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsView.aspx.cs" Inherits="LectureExamples.Topic7.DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>DetailsView - Insert, Edit & Delete</title>
  <link href="~/Topic7/Book_StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <asp:AccessDataSource ID="CustomerDS" runat="server"
    DataFile="~/App_Data/Customers.mdb"
    SelectCommand="SELECT [Customer_id], [Customer_name], [Customer_email], [Customer_pic] FROM [Customers]">
  </asp:AccessDataSource>
  
  <asp:AccessDataSource ID="CustomerDS2" runat="server"
    DataFile="~/App_Data/Customers.mdb"
    SelectCommand="SELECT [Customer_id], [Customer_name], [Customer_email], [Customer_pic] FROM [Customers] WHERE ([Customer_id] = ?)"
    DeleteCommand="DELETE FROM [Customers] WHERE [Customer_id] = ?"
    InsertCommand="INSERT INTO [Customers] ([Customer_id], [Customer_name], [Customer_email], [Customer_pic]) VALUES (?, ?, ?, ?)"
    UpdateCommand="UPDATE [Customers] SET [Customer_name] = ?, [Customer_email] = ?, [Customer_pic] = ? WHERE [Customer_id] = ?" >

    <DeleteParameters>
      <asp:Parameter Name="Customer_id" Type="Int32" />
    </DeleteParameters>

    <InsertParameters>
      <asp:Parameter Name="Customer_id" Type="Int32" />
      <asp:Parameter Name="Customer_name" Type="String" />
      <asp:Parameter Name="Customer_email" Type="String" />
      <asp:Parameter Name="Customer_pic" Type="String" />
    </InsertParameters>

    <SelectParameters>
      <asp:ControlParameter ControlID="gvCatalogue"
        Name="Customer_id" PropertyName="SelectedValue"
        Type="Int32" />
    </SelectParameters>

    <UpdateParameters>
      <asp:Parameter Name="Customer_name" Type="String" />
      <asp:Parameter Name="Customer_email" Type="String" />
      <asp:Parameter Name="Customer_pic" Type="String" />
      <asp:Parameter Name="Customer_id" Type="Int32" />
    </UpdateParameters>

  </asp:AccessDataSource>

  <form id="form1" runat="server">
    <div>
      <asp:DetailsView ID="dtlAddProduct"
        runat="server" DataSourceID="CustomerDS2"
        DataKeyNames="Customer_id"
        AutoGenerateRows="False" 
        AutoGenerateEditButton="True"
        AutoGenerateDeleteButton="True"
        AutoGenerateInsertButton="True"
        OnItemDeleted="refreshGridDeleted"
        OnItemUpdated="refreshGridUpdated"
        OnItemInserted="refreshGridInserted"
        OnModeChanged="refreshGridModeChanged"
        EditRowStyle-CssClass="editBackColour"
        RowStyle-CssClass="gvItems"
        FieldHeaderStyle-CssClass="fieldHeader">
        <Fields>
          <asp:TemplateField HeaderText="ID">
            <EditItemTemplate>
              <%# Eval("Customer_id") %>
            </EditItemTemplate>
            <InsertItemTemplate>
              <asp:TextBox ID="pidInsert" runat="server"
                Text='<%# Bind("Customer_id") %>' Width="200"
                Font-Size="8pt" />
            </InsertItemTemplate>
            <ItemTemplate>
              <%# Eval("Customer_id") %>
            </ItemTemplate>
            <ItemStyle Width="200" />
          </asp:TemplateField>

          <asp:TemplateField HeaderText="Name">
            <EditItemTemplate>
              <asp:TextBox ID="pnameEdit" runat="server"
                Text='<%# Bind("Customer_name") %>'
                Width="200" Font-Size="8pt" />
            </EditItemTemplate>
            <InsertItemTemplate>
              <asp:TextBox ID="pnameInsert" runat="server"
                Text='<%# Bind("Customer_name") %>'
                Width="200" Font-Size="8pt" />
            </InsertItemTemplate>
            <ItemTemplate>
              <%# Eval("Customer_name") %>
            </ItemTemplate>
          </asp:TemplateField>

          <asp:TemplateField HeaderText="Email">
            <EditItemTemplate>
              <asp:TextBox ID="priceInsert" runat="server"
                Text='<%# Bind("Customer_email") %>'
                Width="200" Font-Size="8pt" />
            </EditItemTemplate>
            <InsertItemTemplate>
              <asp:TextBox ID="priceEdit" runat="server"
                Text='<%# Bind("Customer_email") %>'
                Width="200" Font-Size="8pt" />
            </InsertItemTemplate>
            <ItemTemplate>
              <%# Eval("Customer_email") %>
            </ItemTemplate>
          </asp:TemplateField>

          <asp:TemplateField HeaderText="Picture">
            <EditItemTemplate>
              <asp:TextBox ID="purlEdit" runat="server"
                Text='<%# Bind("Customer_pic") %>'
                Width="300" Font-Size="8pt" />
            </EditItemTemplate>
            <InsertItemTemplate>
              <asp:TextBox ID="purlInsert" runat="server"
                Text='<%# Bind("Customer_pic") %>'
                Width="300" Font-Size="8pt" />
            </InsertItemTemplate>
            <ItemTemplate>
              <asp:Image ID="Image1" runat="server"
                ImageUrl='<%# Eval("Customer_pic") %>'
                AlternateText="customer picture"
                ToolTip='<%# Eval("Customer_pic") %>' />
            </ItemTemplate>
          </asp:TemplateField>
        </Fields>
      </asp:DetailsView>
      <br />
      <asp:GridView ID="gvCatalogue"
        runat="server"
        AutoGenerateColumns="False" 
        DataKeyNames="Customer_id"
        DataSourceID="CustomerDS"
        SelectedRowStyle-CssClass="editBackColour"
        HeaderStyle-CssClass="fieldHeader">
        <Columns>
          <asp:CommandField SelectText="Select"
            ShowSelectButton="true"
            ItemStyle-CssClass="gvItems" />
          <asp:BoundField DataField="Customer_id"
            HeaderText="ID" ReadOnly="true"
            ItemStyle-CssClass="gvItems" />
          <asp:BoundField DataField="Customer_name"
            HeaderText="Name" ItemStyle-CssClass="gvItems" />
          <asp:BoundField DataField="Customer_email"
            HeaderText="Email" ItemStyle-CssClass="gvItems" />
          <asp:BoundField HtmlEncode="false" DataField="Customer_pic"
            HeaderText="Image"
            ItemStyle-CssClass="gvItems" />
        </Columns>
      </asp:GridView>
      <p />
    </div>
  </form>
</body>
</html>
