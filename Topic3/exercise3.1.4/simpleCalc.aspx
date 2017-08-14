<script runat="server" language="c#">
void Page_Load() {
  string first = num1.Text;
  string second = num2.Text;

  display.Text = "";

  if (Page.IsPostBack) {
     try {
         float firstNo = Convert.ToSingle(first);
         float secondNo = Convert.ToSingle(second);
         float add =  firstNo + secondNo;
         float sub = firstNo - secondNo;
         float multiply = firstNo * secondNo;
         int listSelect = 0;
         
         if (calculation.Items[0].Selected){
            display.Text += "Addition: " + add.ToString() + "<br />";
            listSelect += 1;
         }
         if (calculation.Items[1].Selected){
            display.Text += "Subtraction: " + sub.ToString() + "<br />";
            listSelect += 1;
         }
         if (calculation.Items[2].Selected){
            display.Text += "Multiplication: " + multiply.ToString() + "<br />";
            listSelect += 1;
         }
         if (listSelect == 0){
         display.Text = "No Calculations performed";
         }
     }
     catch{
           display.Text = "Please input numbers in both fields";
     }

  }
} 
</script>
<html>  
<head>  
<title></title>  
</head>  
<body>  

<form runat="server">  
Please enter the first number:<br />
<asp:textbox id="num1" runat="server" columns="25"/>  <br /><br />

Please enter the second number:<br />
<asp:textbox id="num2" runat="server" columns="25"/>  <br /><br />

<asp:listbox id="calculation" runat="server" selectionmode="multiple">
             <asp:listitem>Add</asp:listitem>
             <asp:listitem>Subtract</asp:listitem>
             <asp:listitem>Multiply</asp:listitem>
</asp:listbox>  <br /><br />

<input type="Submit" value = "Calculate"> <br /><br />
<asp:label id="display" runat="server"
           backcolor="black" forecolor="white" height="20" width="200"
           BorderWidth="5" BorderColor="black" Font-Italic="true"
           Font-Name="Arial" Font-Size="20px" />
<br />

</form>
</body> </html>
