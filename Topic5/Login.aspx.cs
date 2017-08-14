using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace LectureExamples.Topic5
{
  public partial class login : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
    {
      DS1.SelectCommand = "SELECT * FROM Login1 WHERE Username = '" + Login.UserName +
"' AND Password = '" + Login.Password + "'";
      if (DS1.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
      {
        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Login.UserName, false);
      }
      else
      {
        Login.FailureText = "Invalid Login";
      }
    }

    protected void CheckLogin(object sender, SqlDataSourceStatusEventArgs e)
    {
      if (e.AffectedRows > 0)
      {
        FormsAuthentication.RedirectFromLoginPage(Login.UserName, false);
      }
      else
      {
        Login.FailureText = "Invalid Login";
      }
    }
  }
}