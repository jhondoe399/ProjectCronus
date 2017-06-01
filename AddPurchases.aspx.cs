using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class AddPurchases : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit(object sender, EventArgs e)
    {
        String clientID = DropDownListClient.SelectedValue;
        String productID = DropDownListProduct.SelectedValue;
        String supportType = DropDownListSupport.SelectedValue;
        DateTime date = CalendarEndDate.SelectedDate;
        String supportPeriod = DropDownListSupportPeriod.SelectedValue;
        String quantity = TextInputQuantity.Text;

        String sql;

        try
        {
            DateTime supportEndDate = date.AddYears(Int32.Parse(supportPeriod));

            sql = "INSERT INTO Purchases (ClientID, ProductID, PurchaseDate, SupportType, Quantity, SupportPeriod, SupportEndDate)" +
                " VALUES (@clientID, @productID, @date, @supportType, @quantity, @supportPeriod, @SupportEndDate)";

            SqlConnection sqlconnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectCronus\App_Data\Database.mdf;Integrated Security=True");
            sqlconnection.Open();
            SqlCommand sqlcomm = new SqlCommand(sql, sqlconnection);
            sqlcomm.Parameters.AddWithValue("clientID", clientID);
            sqlcomm.Parameters.AddWithValue("productID", productID);
            sqlcomm.Parameters.AddWithValue("date", date);
            sqlcomm.Parameters.AddWithValue("supportType", supportType);
            sqlcomm.Parameters.AddWithValue("quantity", quantity);
            sqlcomm.Parameters.AddWithValue("supportPeriod", supportPeriod);
            sqlcomm.Parameters.AddWithValue("SupportEndDate", supportEndDate);
            sqlcomm.ExecuteNonQuery();
            sqlconnection.Close();

            PageResponse.InnerHtml = "Purchase order added";

            Response.Redirect("~/Purchases.aspx");

        }
        catch (Exception ex)
        {
            PageResponse.InnerHtml = "Something went wrong." + ex.Message + "<br>" + ex.Source;
        }
    }

    protected void CalendarEndDate_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Today)
        {
            e.Day.IsSelectable = false;
        }
    }

}