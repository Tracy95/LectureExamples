using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LectureExamples.Topic5.Restricted
{
  public partial class Default : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      lblUser.Text = User.Identity.Name;
      lblType.Text = User.Identity.AuthenticationType;
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
      System.Web.Security.FormsAuthentication.SignOut();
      Server.Transfer("~/Topic5/Login.aspx");
    }
  }
}