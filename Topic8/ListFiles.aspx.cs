using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;

namespace LectureExamples.Topic8
{
  public partial class ListFiles : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      ArrayList fileList = new ArrayList();
      DirectoryInfo dir = new DirectoryInfo(Server.MapPath("."));
      foreach (FileInfo file in dir.GetFiles())
      {
        if (file.Extension != ".mdb" && file.Extension!=".accdb")
        {
          fileList.Add(file.Name);
        }
      }
      dlFiles.DataSource = fileList;
      dlFiles.DataBind();
    }
  }
}