using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls;


public partial class Products : System.Web.UI.Page
{

    public bool isSingleCategory = false;
    public string categoryId = "0"; 

    protected void Page_Load(object sender, EventArgs e)
    {
        
        IList<string> urlSegments = HttpRequestExtensions.GetFriendlyUrlSegments(Request);
        if ( urlSegments.Count > 0)
        {
            categoryId = urlSegments[0];
        }
        isSingleCategory = categoryId != "0";

        // Add the category id if exists
        SqlDataSourceProductCategories.SelectParameters.Add("cat_id", categoryId);
    }

}