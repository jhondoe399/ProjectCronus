using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Products : System.Web.UI.Page
{

    public bool isSingleCategory = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        isSingleCategory = !string.IsNullOrEmpty(Request.QueryString["cat_id"]);
    }


    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}