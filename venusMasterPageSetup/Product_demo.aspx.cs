using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace venusMasterPageSetup
{
    public partial class Product_demo : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ToString();
        string ImagePath, i1, i2, i3;
        string[] type = new string[3];
        int id;

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            Connection();
            UploadImg();
            hobbies();

            if (BtnSubmit.Text == "Submit")
            {
                for (int i = 0; i < 1; i++)
                {
                    if (type[i] == "Food")
                    {
                        i1 = "Food";
                        i++;
                    }
                    else
                    {
                        i1 = "NULL";
                        i++;
                    }
                    if (type[i] == "Goods")
                    {
                        i2 = "Goods";
                        i++;
                    }
                    else
                    {
                        i2 = "NULL";
                        i++;
                    }
                    if (type[i] == "Device")
                    {
                        i3 = "Device";
                    }
                    else
                    {
                        i3 = "NULL";
                    }
                }

                cmd = new SqlCommand($"insert into Product_tbl (Name,Code,Sale_Mode,Qty,Food,Goods,Device,Headquarter,Image) values ('{txtproductname.Text}','{txtcode.Text}','{rbsalemode.SelectedValue}','{Convert.ToInt32(txtqty.Text)}','{i1}','{i2}','{i3}','{ddlheadquarter.SelectedValue}','{ImagePath}')", con);

                cmd.ExecuteNonQuery();

                fillg();

                clear();
            }
            else
            {
                for (int i = 0; i < 1; i++)
                {
                    if (type[i] == "Food")
                    {
                        i1 = "Food";
                        i++;
                    }
                    else
                    {
                        i1 = "NULL";
                        i++;
                    }
                    if (type[i] == "Goods")
                    {
                        i2 = "Goods";
                        i++;
                    }
                    else
                    {
                        i2 = "NULL";
                        i++;
                    }
                    if (type[i] == "Device")
                    {
                        i3 = "Device";
                    }
                    else
                    {
                        i3 = "NULL";
                    }
                }

                cmd = new SqlCommand($"update Product_tbl set Name='{txtproductname.Text}',Code='{txtcode.Text}',Sale_Mode='{rbsalemode.SelectedValue}',Qty='{txtqty.Text}',Food='{i1}',Goods='{i2}',Device='{i3}',Headquarter='{ddlheadquarter.SelectedValue}' where Id='{ViewState["id"]}'", con);

                cmd.ExecuteNonQuery();

                fillg();

                clear();

                BtnSubmit.Text = "Submit";
            }
        }

        void Connection()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        public DataSet Select(int id)
        {
            da = new SqlDataAdapter($"select * from Product_tbl where Id = '{id}'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        void Filltext()
        {
            ds = new DataSet();
            ds = Select(Convert.ToInt16(ViewState["id"]));

            txtproductname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtcode.Text = ds.Tables[0].Rows[0][2].ToString();
            txtqty.Text = ds.Tables[0].Rows[0][4].ToString();
            ddlheadquarter.SelectedValue = ds.Tables[0].Rows[0][8].ToString();
            rbsalemode.SelectedValue = ds.Tables[0].Rows[0][3].ToString();

            if (ds.Tables[0].Rows[0][5].ToString() == "Food")
            {
                chktype.Items[0].Selected = true;
            }
            else
            {
                chktype.Items[0].Selected = false;
            }
            if (ds.Tables[0].Rows[0][6].ToString() == "Goods")
            {
                chktype.Items[1].Selected = true;
            }
            else
            {
                chktype.Items[1].Selected = false;
            }
            if (ds.Tables[0].Rows[0][7].ToString() == "Device")
            {
                chktype.Items[2].Selected = true;
            }
            else
            {
                chktype.Items[2].Selected = false;
            }

            BtnSubmit.Text = "Update";
        }
        void UploadImg()
        {
            if (fldimg.HasFile)
            {
                ImagePath = "Images1/" + fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(ImagePath));
            }
        }

        void hobbies()
        {
            for (int i = 0; i < type.Length; i++)
            {
                if (chktype.Items[i].Selected)
                {
                    type[i] = chktype.Items[i].Text;
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_update")
            {
                id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                Filltext();
            }
            else
            {
                id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;

                cmd = new SqlCommand($"delete from Product_tbl where Id = '{ViewState["id"]}'", con);

                cmd.ExecuteNonQuery();

                fillg();
            }
        }

        void fillg()
        {

            Connection();

            da = new SqlDataAdapter("select * from Product_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            fillg();
        }

        void clear()
        {
            txtproductname.Text = "";
            txtcode.Text = "";
            txtqty.Text = "";
            ddlheadquarter.ClearSelection();
            rbsalemode.ClearSelection();
            chktype.ClearSelection();
        }
    }
}