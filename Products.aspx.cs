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
    public Int32 categoryId = 1;
    public object categoryData;
    public String categoryName = "Switches";

    protected void Page_Load(object sender, EventArgs e)
    {

        IList<string> urlSegments = HttpRequestExtensions.GetFriendlyUrlSegments(Request);
        if (urlSegments.Count > 0)
        {
            categoryName = urlSegments[0];

            if (categoryName == null || categoryName.Length == 0)
            {
                switches.Visible = false;
            }
            else
            {
                switches.Visible = true;
                // Get current category info
                String sql;

                sql = "SELECT * from ProductCats where Name = @categoryName";
                SqlConnection sqlconnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
                sqlconnection.Open();
                SqlCommand sqlcomm = new SqlCommand(sql, sqlconnection);
                sqlcomm.Parameters.AddWithValue("categoryName", categoryName);

                SqlDataReader reader;
                reader = sqlcomm.ExecuteReader();

                reader.Read();
                categoryId = reader.GetInt32(reader.GetOrdinal("Id"));

                // update datasource filters
                sqlDataSourceGridViewSwitches.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                sqlDataSoruceSeries.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                sqlDataSourceModel.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                sqlDataSourceGbPorts.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
            }
        }
    }


    protected void AddProduct_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddProduct.aspx");
    }



}

