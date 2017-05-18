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
        string Series2, GbPorts, sql1, sql2;
        //str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        try
        {
            sql1 = "SELECT Distinct ([Series]) FROM [Products]";
            
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectCronus\App_Data\Database.mdf;Integrated Security=True;MultipleActiveResultSets=True");
            con.Open();
            SqlCommand cmd1 = new SqlCommand(sql1,con);
            DropDownListSeries.DataSource = cmd1.ExecuteReader();
            DropDownListSeries.DataBind();

            Series2 = DropDownListSeries.SelectedValue;
            sql2 = "SELECT [Model] FROM [Products] WHERE Series="+"'"+Series2+"'";
            SqlCommand cmd2 = new SqlCommand(sql2, con);
            DropDownListModel.DataSource = cmd2.ExecuteReader();
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