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

        String name, address, cui, image, sql;
        try
        {
            name = TextBoxClientName.Text;
            address = TextBoxAdress.Text;
            cui = TextBoxCUI.Text;

            if (FileUploadImage.HasFile)
            {
                string fileName = Path.GetFileName(FileUploadImage.PostedFile.FileName);
                string fileExtension = Path.GetExtension(FileUploadImage.PostedFile.FileName);
                FileUploadImage.PostedFile.SaveAs(Server.MapPath("~/uploads/clients/") + name.ToLower() + fileExtension);
                image = "~/uploads/clients/" + name.ToLower() + fileExtension;

                sql = "INSERT INTO Clients (name, address, cui, image) VALUES (@name, @address, @cui, @image)";
                SqlConnection sqlconnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectCronus\App_Data\Database.mdf;Integrated Security=True");
                sqlconnection.Open();
                SqlCommand sqlcomm = new SqlCommand(sql, sqlconnection);
                sqlcomm.Parameters.AddWithValue("name", name);
                sqlcomm.Parameters.AddWithValue("address", address);
                sqlcomm.Parameters.AddWithValue("cui", cui);
                sqlcomm.Parameters.AddWithValue("image", image);
                sqlcomm.ExecuteNonQuery();
                sqlconnection.Close();
                TextBoxClientName.Text = "";
                TextBoxAdress.Text = "";
                TextBoxCUI.Text = "";
                PageResponse.InnerHtml = "Client added";

                Response.Redirect("~/Clients.aspx");
            }
            else
            {
                PageResponse.InnerHtml = "Image Not Uploaded. You need to upload an image.";
            }

        }
        catch (Exception ex)
        {
            PageResponse.InnerHtml = "Something went wrong." + ex.Message + "<br>" + ex.Source;
        }
        
    }
}