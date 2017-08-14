using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LectureExamples.Topic7
{
  public partial class GridView : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DisplayData(object sender, GridViewCommandEventArgs e)
    {
      try
      {
        lblDisplayBook.Text = "<table><tr>" +
        " <td><b>Selected Book: </b>" +
        gvBooks.Rows[Convert.ToInt32(e.CommandArgument)].
        Cells[4].Text +
        "<br/></b> by <b>" +
        gvBooks.Rows[Convert.ToInt32(e.CommandArgument)].
        Cells[5].Text +
        "<br />Price: " +
        gvBooks.Rows[Convert.ToInt32(e.CommandArgument)].
        Cells[7].Text +
        "<br/><td>" +
        gvBooks.Rows[Convert.ToInt32(e.CommandArgument)].
        Cells[6].Text +
        "</td></tr></table>";
      }
      catch { lblDisplayBook.Text = ""; }
    }
  }
}