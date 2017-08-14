using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LectureExamples.Topic7
{
  public partial class ShowBook : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      lothianDS.SelectCommand = "SELECT * FROM books WHERE ISBN = '"
        + Request.QueryString["ISBN"] + "'";

      lvBook.DataSource = lothianDS;
      lvBook.DataBind();
    }
  }
}