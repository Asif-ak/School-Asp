using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_TeacherSubjects : System.Web.UI.Page
{
    BLL b = new BLL();
    BAL bl = new BAL();
    protected void Page_Init(object sender, EventArgs e)
    {
        ddlteachsel.DataSource = b.getteachinteachsub();
        ddlteachsel.DataTextField = "tea_f_name";
        ddlteachsel.DataValueField = "teaid";
        ddlteachsel.DataBind();
        ddlteachsel.Items.Insert(0, "Select Teacher");
    }

    protected void ddlteachsel_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            bl.teaid = int.Parse(ddlteachsel.SelectedValue);
            GridView1.DataSource= b.getsubjectdetailsjoin(bl);
            GridView1.DataBind();
            if (GridView1.Rows.Count > 0)
            {
                GridView1.HeaderRow.Cells[0].Text = "Class Level";
                GridView1.HeaderRow.Cells[1].Text = "Subject Name";
                GridView1.HeaderRow.Cells[2].Text = "Subject Acronym";
                GridView1.HeaderRow.Cells[3].Text = "Subject Category";
                GridView1.HeaderRow.Cells[4].Text = "Teacher Full Name";
                GridView1.HeaderRow.Cells[5].Text = "Mid Term Marks";
                GridView1.HeaderRow.Cells[6].Text = "Final Ternm Marks";
                GridView1.HeaderRow.Cells[7].Text = "Total Marks";
            }
            else
            { }
            
        }
    }
}