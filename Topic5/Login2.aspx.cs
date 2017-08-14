using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LectureExamples.Topic5
{
  public partial class Login2 : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
    {
      DS1.SelectCommand = "SELECT * FROM Login1 WHERE Username = '" + Login1.UserName +
"' AND Password = '" + Login1.Password + "'";
      DS1.Select(DataSourceSelectArguments.Empty);
    }

    protected void CheckLogin(object sender, SqlDataSourceStatusEventArgs e)
    {
      if (e.AffectedRows > 0)
      {
        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
      }
      else
      {
        Login1.FailureText = "Invalid Login";
      }
    }
  }
}