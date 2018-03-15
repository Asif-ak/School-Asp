using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddClass : System.Web.UI.Page
{
    BAL bl = new BAL();
    BLL b = new BLL();

    protected void Page_Init(object sender, EventArgs e)
    {
        ddlgrp.DataSource = b.getgrp(bl.getcl);
        ddlgrp.DataTextField = "clas_grp";
        ddlgrp.DataValueField = "clas_grp";
        ddlgrp.DataBind();
        ddlgrp.Items.Insert(0, "Please select group");
    }

    protected void Page_Load(object sender, EventArgs e)
    {



        if (Session["master"] != null && Session["role"].ToString() == "accountant")
        {
            Response.Write("<script>alert('Access Denied'); window.location.href = 'Main.aspx'</script>");
        }
        else { };
    }

    protected void submitclass_Click(object sender, EventArgs e)
    {

    }

    protected void submitclass_Command(object sender, CommandEventArgs e)
    {

    }


    protected void ddlgrp_SelectedIndexChanged(object sender, EventArgs e)
    {


        bl.clas_grp = ddlgrp.SelectedValue;
        ddllevel.DataSource = b.getlvl(bl);
        ddllevel.DataTextField = "clas_level";
        ddllevel.DataValueField = "clasid";
        ddllevel.DataBind();
        ddllevel.Items.Insert(0, "Please select level");

    }

    protected void ddlgrp_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnviewclass_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            if (GridView1.Rows.Count > 0)
            {
                GridView1.HeaderRow.Cells[0].Text = "Student ID";
                GridView1.HeaderRow.Cells[1].Text = "Student Name";
                GridView1.HeaderRow.Cells[2].Text = "Student Father Name";
                //GridView1.RowStyle.CssClass = "control-label col-lg-6";
            }
            else
            {
                //TemplateBuilder tb = new TemplateBuilder();
                //tb.AppendLiteralString("No Student Enrolled in this class!!");
                //GridView1.EmptyDataText = "No Student Enrolled in this class!!"; //"tb.ToString() ;
            }

        }
    }
}