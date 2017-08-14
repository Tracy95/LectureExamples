using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace LectureExamples.Topic8
{
  public partial class FileProperties : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      FileInfo file = new FileInfo(Server.MapPath
          (Request.ServerVariables["SCRIPT_NAME"]));

      fileProp.Text = "<b>File Information</b><br />";
      fileProp.Text += "<b>Name:</b> " + file.Name + "<br />";
      fileProp.Text += "<b>Path:</b> "
        + file.DirectoryName + "<br />";
      fileProp.Text += "<b>Is Read Only:</b> "
        + file.IsReadOnly + "<br />";
      fileProp.Text += "<b>Last Access:</b> "
        + file.LastAccessTime + "<br />";
      fileProp.Text += "<b>Last Write:</b> "
        + file.LastWriteTime + "<br />";
      fileProp.Text += "<b>Length:</b> " + file.Length / 1024;

      DirectoryInfo dir = new DirectoryInfo(Server.MapPath("."));
      dirProp.Text = "<b>Directory Information</b><br />";
      dirProp.Text += "<b>Name:</b> " + dir.Name + "<br />";
      dirProp.Text += "<b>Parent:</b> " + dir.Parent + "<br />";
      dirProp.Text += "<b>Full Name:</b> "
        + dir.FullName + "<br />";
      dirProp.Text += "<b>Attributes:</b> "
        + dir.Attributes + "<br />";
      dirProp.Text += "<b>Creation Time:</b> "
        + dir.CreationTime;
    }
  }
}