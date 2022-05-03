using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Abfall
{
    public partial class Ueberlagerte_Ware : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"data source = wb025 ; initial catalog = WBAbfall ; integrated security = true;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Show_Ueberlagerte_Ware();
        }

        private void Reset()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            Dropdownlist1.SelectedIndex = -1;
        }

        private void Show_Ueberlagerte_Ware()
         {
             cn.Open();
             string Sql = "select top 5 UW_Produkt,UW_Charge,UW_Grund,UW_Gebindeinhalt,UW_AnzahlGebinde,UW_Menge,UW_Abfallart from Ueberlagerte_Ware order by UW_Save_Time desc";
             SqlCommand cmd = new SqlCommand(Sql, cn);
             DataTable dt = new DataTable();
             SqlDataAdapter adp = new SqlDataAdapter(cmd);
             adp.Fill(dt);
             GridView1.DataSource = dt;
             GridView1.DataBind();
             cn.Close();
         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("insert into Ueberlagerte_Ware (UW_Produkt,UW_Charge,UW_Grund,UW_Gebindeinhalt,UW_AnzahlGebinde,UW_Menge,UW_Abfallart,UW_Save_Time) values (@UW_Produkt,@UW_Charge,@UW_Grund,@UW_Gebindeinhalt,@UW_AnzahlGebinde,@UW_Menge,@UW_Abfallart,@UW_Save_Time) ", cn);
            cmd.Parameters.AddWithValue("@UW_Produkt", TextBox1.Text);
            cmd.Parameters.AddWithValue("@UW_Charge", TextBox2.Text);
            cmd.Parameters.AddWithValue("@UW_Grund", TextBox3.Text);
            cmd.Parameters.AddWithValue("@UW_Gebindeinhalt", TextBox4.Text);
            cmd.Parameters.AddWithValue("@UW_AnzahlGebinde", TextBox5.Text);
            cmd.Parameters.AddWithValue("@UW_Menge", TextBox6.Text);
            cmd.Parameters.AddWithValue("@UW_Abfallart", Dropdownlist1.Text);
            cmd.Parameters.AddWithValue("@UW_Save_Time", DateTime.Now);
            cmd.ExecuteNonQuery();
            cn.Close();
            Reset();
            Show_Ueberlagerte_Ware();
        }



        //SqlCommand cmd = new SqlCommand("insert into Reklamationen (R_Produkt,R_Charge,R_Grund,R_Gebindeinhalt,R_AnzahlGebinde,R_Menge,R_Abfallart,R_Save_Time) values (@R_Produkt,@R_Charge,@R_Grund,@R_Gebindeinhalt,@R_AnzahlGebinde,@R_Menge,@R_Abfallart,@R_Save_Time) ", cn);
        //cmd.Parameters.AddWithValue("@R_Produkt", TextBox1.Text);
        //    cmd.Parameters.AddWithValue("@R_Charge", TextBox2.Text);
        //    cmd.Parameters.AddWithValue("@R_Grund", TextBox3.Text);
        //    cmd.Parameters.AddWithValue("@R_Gebindeinhalt", TextBox4.Text);
        //    cmd.Parameters.AddWithValue("@R_AnzahlGebinde", TextBox5.Text);
        //    cmd.Parameters.AddWithValue("@R_Menge", TextBox6.Text);
        //    cmd.Parameters.AddWithValue("@R_Abfallart", Dropdownlist1.Text);
        //    cmd.Parameters.AddWithValue("@R_Save_Time", DateTime.Now);

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            float Gebindeinhalt, AnzahlGebinde, Menge = 0;
            Gebindeinhalt = float.Parse(TextBox4.Text);
            AnzahlGebinde = float.Parse(TextBox5.Text);
            Menge = Gebindeinhalt * AnzahlGebinde;
            TextBox6.Text = Menge.ToString();
        }
    }
}