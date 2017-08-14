using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LectureExamples.Topic2
{
  public partial class TextboxExample : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      message1.Text = "";
      message2.Text = "";
      message3.Text = "";
      if (Page.IsPostBack)
      {
        if (text1.Text != "")
        {
          message1.Text = "You have entered the following name: "
          + text1.Text;
        }
        if (text2.Text != "")
        {
          message2.Text = "You have entered the following address: "
          + text2.Text;
        }
        if (text3.Text != "")
        {
          message3.Text = "You have entered the following password: "
          + text3.Text;
        }
      }
    }
  }
}