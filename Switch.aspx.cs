using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls;
using System.Data.SqlClient;

public partial class Products : System.Web.UI.Page
{

    public bool isSingleCategory = false;
    public string categoryId = "0";
    public object categoryData;
    public string categoryName;

    protected void Page_Load(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(str))
        {
            SqlCommand cmd = new SqlCommand("SELECT Distinct ([Series]) FROM [Products]", con);
            SqlCommand cmd2 = new SqlCommand("SELECT [Model] FROM [Products]", con);
            con.Open();
            DropDownListSeries.DataSource = cmd.ExecuteReader();
            DropDownListSeries.DataBind();
            DropDownListModel.DataSource = cmd2.ExecuteReader();
            DropDownListModel.DataBind();
            
        }


    }
    
}