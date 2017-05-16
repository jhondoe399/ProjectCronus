using System;
using System.Collections.Generic;
using System.Linq;
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

        IList<string> urlSegments = HttpRequestExtensions.GetFriendlyUrlSegments(Request);
        if (urlSegments.Count > 0)
        {
            categoryId = urlSegments[0];

            // Get current category info
            String sql;

            sql = "SELECT * from ProductCats";
            SqlConnection sqlconnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            sqlconnection.Open();
            SqlCommand sqlcomm = new SqlCommand(sql, sqlconnection);
            sqlcomm.Parameters.AddWithValue("categoryId", categoryId);



            SqlDataReader reader;
            reader = sqlcomm.ExecuteReader();
            while (reader.Read())
            {
                categoryName = reader.GetString(reader.GetOrdinal("Name"));
            }



        }
        isSingleCategory = categoryId != "0";

        // Add the category id if exists
        SqlDataSourceProductCategories.SelectParameters.Add("cat_id", categoryId);
    }



}