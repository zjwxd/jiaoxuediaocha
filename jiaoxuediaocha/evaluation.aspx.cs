using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jiaoxuediaocha
{
    public partial class evaluation : System.Web.UI.Page
    {
        Button submit = new Button();//初始化提交按钮
        SQLHelper sqlhelper = new SQLHelper();
        DataTable dt = new DataTable();


        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["xuehao"]==null)
            {
                Response.Redirect("login.aspx");
            }
            submit.Text = "提交";
            this.submit.Click += new System.EventHandler(this.submit_Click);//注册单击事件

            form1.Controls.Add(submit);//添加到页面上

            dt = sqlhelper.ExecuteQuery("select * from course where grade='" + Session["grade"] + "' and class='"+Session["class"]+"'", CommandType.Text);
            foreach (DataRow dr in dt.Rows)
            {
                //作业量
                TableRow row = new TableRow();
                TableCell cellHead = new TableCell();
                TableCell cellContent = new TableCell();
                Label subject = new Label();
                subject.Text=dr["subject"].ToString();

                
                TextBox homework = new TextBox();
                homework.ID = "homework" + dr["sequence"];
                cellContent.Controls.Add(subject);
                cellContent.Controls.Add(homework);
                row.Cells.Add(cellHead);
                row.Cells.Add(cellContent);

                this.homework.Rows.Add(row);

                //满意度
                TableRow row2 = new TableRow();
                TableCell cellHead2 = new TableCell();
                TableCell cellContent2 = new TableCell();
                Label subject2 = new Label();
                subject2.Text = dr["subject"].ToString();

                
                TextBox total = new TextBox();
                total.ID = "total" + dr["sequence"];
                cellContent2.Controls.Add(subject2);
                cellContent2.Controls.Add(total);
                row2.Cells.Add(cellHead2);
                row2.Cells.Add(cellContent2);

                this.total.Rows.Add(row2);

            }          
        }

        private void submit_Click(object sender, System.EventArgs e)
        {

            foreach (DataRow dr in dt.Rows)
            {
                String homework_result=((TextBox)this.FindControl("homework" + dr["sequence"].ToString())).Text;
                String total_result=((TextBox)this.FindControl("total" + dr["sequence"].ToString())).Text;
                String xuehao=Session["xuehao"].ToString();
                String grade=Session["grade"].ToString();
                String stuclass=Session["class"].ToString();
                String subject=dr["subject"].ToString();

                sqlhelper.ExecuteNonQuery("insert into homework values('" + xuehao + "','" + grade + "','" + stuclass + "','" + subject + "','" + homework_result + "')", CommandType.Text);
                sqlhelper.ExecuteNonQuery("insert into total values('" + xuehao + "','" + grade + "','" + stuclass + "','" + subject + "','" + total_result + "')", CommandType.Text);
            }

            sqlhelper.ExecuteNonQuery("update student set finish='1' where xuehao='"+Session["xuehao"].ToString()+"'",CommandType.Text);
            HttpContext.Current.Response.Write("<Script Language=JavaScript>alert('评价完成！');window.location.href='login.aspx';</Script>"); 
        }              
    }
}