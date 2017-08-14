using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LectureExamples.Topic7
{
  public partial class DetailsView : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void refreshGridUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
      gvCatalogue.DataBind();
    }
    protected void refreshGridDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
      gvCatalogue.DataBind();
      gvCatalogue.SelectedIndex = -1;
    }
    protected void refreshGridInserted(object sender, DetailsViewInsertedEventArgs e)
    {
      gvCatalogue.DataBind();
    }
    protected void refreshGridModeChanged(object sender, EventArgs e)
    {
      if (dtlAddProduct.CurrentMode == DetailsViewMode.Insert)
      {
        gvCatalogue.SelectedIndex = -1;
      }
    }
  }
}