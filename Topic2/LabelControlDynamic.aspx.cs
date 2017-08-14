using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LectureExamples.Topic2
{
  public partial class LabelControlDynamic : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      {
        Message1.Text = "Mighty Mouse";
        Message2.Text = "Fly by Night Holidays";
      }
    }
  }
}