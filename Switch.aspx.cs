using System;
using System.IO;
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


    protected void Page_Load(object sender, EventArgs e)
    {
        string Series, GbPorts, sql, str;
        str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        try
        {
            sql = "SELECT Distinct ([Series]) FROM [Products]";
            SqlConnection sqlconnection = new SqlConnection(str);
            sqlconnection.Open();
            SqlCommand cmd = new SqlCommand(sql,sqlconnection);
            DropDownListSeries.DataSource = cmd.ExecuteReader();
            DropDownListSeries.DataBind();
            
        }

        catch (Exception ex)
        {
            PageResponse.InnerHtml = "Something went wrong." + ex.Message + "<br>" + ex.Source;
        }

        try
        {
            sql = "SELECT [Model] FROM [Products]";
            SqlConnection sqlconnection = new SqlConnection(str);
            sqlconnection.Open();
            SqlCommand cmd = new SqlCommand(sql, sqlconnection);
            DropDownListModel.DataSource = cmd.ExecuteReader();
            DropDownListModel.DataBind();

        }

        catch (Exception ex)
        {
            PageResponse.InnerHtml = "Something went wrong." + ex.Message + "<br>" + ex.Source;
        }


        // string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        // using (SqlConnection con = new SqlConnection(str))
        // {
        //    SqlCommand cmd = new SqlCommand("SELECT Distinct ([Series]) FROM [Products]", con);
        //    SqlCommand cmd2 = new SqlCommand("SELECT [Model] FROM [Products]", con);
        //    con.Open();
        //    DropDownListSeries.DataSource = cmd.ExecuteReader();
        //    DropDownListSeries.DataBind();
        //    DropDownListModel.DataSource = cmd2.ExecuteReader();
        //    DropDownListModel.DataBind();
        //    
        // }


    }
    
}