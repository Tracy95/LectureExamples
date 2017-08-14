using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LectureExamples.Topic2
{
  public partial class ButtonControl1 : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ClickHandler(object sender, EventArgs e)
    {
      MyButton.Text = "I've been clicked";
    }

  }
}