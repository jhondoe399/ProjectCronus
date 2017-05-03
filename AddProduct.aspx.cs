using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class AddClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit(object sender, EventArgs e)
    {

        String catid, serial, model, gbports, sql;
        try
        {
            catid = ddlCategory.SelectedValue;
            serial = TextBoxSerial.Text;
            model = TextBoxModel.Text;
            gbports = TextBoxModeGbPorts.Text;

          
            sql = "INSERT INTO Products (catid, serial, model, gbports) VALUES (@catid, @serial, @model, @gbports)";
            SqlConnection sqlconnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\App_Data\Database.mdf;Integrated Security=True");
            sqlconnection.Open();
            SqlCommand sqlcomm = new SqlCommand(sql, sqlconnection);
            sqlcomm.Parameters.AddWithValue("catid", catid);
            sqlcomm.Parameters.AddWithValue("serial", serial);
            sqlcomm.Parameters.AddWithValue("model", model);
            sqlcomm.Parameters.AddWithValue("gbports", gbports);
            sqlcomm.ExecuteNonQuery();
            sqlconnection.Close();
            ddlCategory.SelectedIndex = 0;
            TextBoxSerial.Text = "";
            TextBoxModel.Text = "";
            TextBoxModeGbPorts.Text = "";
            PageResponse.InnerHtml = "Product added";

        }

        catch (Exception ex)
        {
            PageResponse.InnerHtml = "Something went wrong." + ex.Message + "<br>" + ex.Source;
        }
        
    }
}