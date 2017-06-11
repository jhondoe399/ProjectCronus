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
                    routers.Visible = false;
                    servers.Visible = false;
                    wireless.Visible = false;
                }
            else
                if (categoryName == "Switches")
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
                    sqlDataSourceonehundredorts.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                    sqlDataSourceOneGUplinks.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                    sqlDataSourceTenGUplinks.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                    sqlDataSourcePoe.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
            }
                else
                    if (categoryName == "Routers")
                        {
                            routers.Visible = true;
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
                            sqlDataSourceGridViewRouters.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                            sqlDataSoruceSeriesRouter.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                            sqlDataSourceModelRouter.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                            sqlDataSourceOneGbUplinksRouter.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                            sqlDataSourceTenGbUplinksRouter.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                            sqlDataSourceRAMRouter.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                            sqlDataSourceFlashRouter.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                            sqlDataSourceNIMRouter.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                            sqlDataSourceESMRouter.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                            sqlDataSourceFormFactorRouter.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
            }
                    else
                        if (categoryName == "Wireless")
                            {
                                wireless.Visible = true;
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
                                sqlDataSourceGridViewWireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                                sqlDataSoruceSeriesWireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                                sqlDataSourceModelWireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                                sqlDataSourceTypeWireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                                sqlDataSource24GHzWireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                                sqlDataSource5GHzWireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                                sqlDataSource802nWireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                                sqlDataSource802ac1Wireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                                sqlDataSource802ac2Wireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                                sqlDataSourceMIMOWireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
                                sqlDataSourceSpatialStreamsWireless.SelectParameters["CategoryId"].DefaultValue = categoryId + "";
            }
        }
    }


    protected void AddProduct_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddProduct.aspx");
    }



}

