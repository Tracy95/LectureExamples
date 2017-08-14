using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LectureExamples.Topic7
{
  public partial class SearchBook : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void findBook(object sender, EventArgs e)
    {
      Button btn = (Button)sender;
      switch (btn.CommandName)
      {
        case "ISBN":
          lothian2.SelectCommand = "SELECT * FROM Books WHERE ISBN LIKE '%" +
          txtISBN.Text.Trim(' ') + "%'";
          break;
        case "Title":
          lothian2.SelectCommand = "SELECT * FROM Books WHERE book_title LIKE '%" +
          txtTitle.Text.Trim(' ') + "%'";
          break;
        case "Author":
          lothian2.SelectCommand = "SELECT * FROM Books WHERE book_author LIKE '%" +
          txtAuthor.Text.Trim(' ') + "%'";
          break;
      }
      lv.DataSource = lothian2;
      lv.DataBind();
    }
  }
}