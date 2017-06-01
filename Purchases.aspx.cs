using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Purchases : System.Web.UI.Page
{

    protected void AddPurchase_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddPurchases.aspx");
    }
}