using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jiaoxuediaocha
{
    public partial class login : System.Web.UI.Page
    {
        SQLHelper sqlhelper = new SQLHelper();
        static DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void xuehao_submit_Click(object sender, EventArgs e)
        {
            dt = sqlhelper.ExecuteQuery("select * from student where xuehao='" + xuehao.Text + "'", CommandType.Text);

            if (dt.Rows.Count < 1)
            {
                alert("学号错误");
                return;
            }
            else {
                enter.Enabled = true;
                enter.Visible = true;

                name.Text = dt.Rows[0]["name"].ToString();
                Session["xuehao"] = xuehao.Text;
                Session["sex"] = dt.Rows[0]["sex"].ToString();
                Session["grade"] = dt.Rows[0]["grade"].ToString();
                Session["class"] = dt.Rows[0]["class"].ToString();            
            }
        }

        public static void alert(string AlertMessage)
        {
            HttpContext.Current.Response.Write("<script>");
            HttpContext.Current.Response.Write("alert('" + AlertMessage + "');history.back();");
            HttpContext.Current.Response.Write("</script>");
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            xuehao.Text = null;
            name.Text = null;
            enter.Enabled = false;
            enter.Visible = false;
        }

        protected void enter_Click(object sender, EventArgs e)
        {

            if(dt.Rows[0]["finish"].ToString().Equals("1"))
            {
                alert("你已经评价过了！");
                return;
            }
            else if (!Session["xuehao"].ToString().Equals(xuehao.Text))
            {
                alert("请重新确认你的学号和姓名！");
                return;
            }
            else
            {
                Response.Redirect("evaluation.aspx");
            }
        }
        
    }
}