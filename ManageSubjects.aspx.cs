using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class admin_ManageSubjects : System.Web.UI.Page
{
    BAL bl = new BAL();
    BLL b = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddllevel_SelectedIndexChanged(object sender, EventArgs e)
    {
        Txtsa.Text = "";
        Txtsn.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    static int a;
    protected void gvsubjects_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Label sbid = (Label)this.gvsubjects.Rows[e.NewSelectedIndex].Cells[1].FindControl("Label1");
        bl.subjectid = int.Parse(sbid.Text);
        a = int.Parse(sbid.Text);
        if (b.getsubngradesinsubupd(bl) == 1)
        {
            Txtsn.Text = bl.subjectname;
            Txtsa.Text = bl.subjectacr;
            TextBox3.Text = bl.mid_term_marks.ToString();
            TextBox4.Text = bl.fin_term_marks.ToString();
            lblteach.Text = bl.tea_f_name;
            Lblsubcat.Text = bl.sub_category;
            lblteachid.Text = bl.teaid.ToString();
            //ddlteach.DataSource=bl.tea     FIND A WAY TO MANAGE TEACHER  (one option is to update it without fetching it like inserting)

            //(We have total marks in reader. It can be used while updating for cross checking)
        }
        else if (b.getsubngradesinsubupd(bl) == 2)
        {
            Response.Write("<script>alert('Something Went Wrong'); window.location.href = 'ManageSubjects.aspx'</script>");
        }
        else
        { }

    }

    protected void updsub_Click(object sender, EventArgs e)
    {

        int x = int.Parse(TextBox3.Text);
        int y = int.Parse(TextBox4.Text);
        int z = x + y;
        if (z != 100)
        {
            Response.Write("<script>alert('Total Marks should be equals to 100')</script>");
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        else
        {
            bl.subjectname = Txtsn.Text;
            bl.subjectacr = Txtsa.Text;
            bl.mid_term_marks = x;
            bl.fin_term_marks = y;
            bl.total_marks = z;
            bl.subjectid = a;
            bl.subid = a;
            b.updsub(bl);
            Response.Write("<script>alert('Subject Updated')</script>");
            bl.sub_category = Lblsubcat.Text;
            ddlteachupd.DataSource = b.getteach(bl);
            ddlteachupd.DataTextField = "tea_f_name";
            ddlteachupd.DataValueField = "teaid";
            ddlteachupd.DataBind();
            ddlteachupd.Items.Insert(0, "Please select new teacher");

        }
    }

    protected void updteacehr_Click(object sender, EventArgs e)
    {
        bl.teaid = Convert.ToInt32(ddlteachupd.SelectedValue);
        bl.subjectid = a;
        b.subreassign(bl);
        Response.Write("<script>alert('Subject Re-assigned'); window.location.href = 'ManageSubjects.aspx'</script>");

    }

    protected void btnremovesub_Click(object sender, EventArgs e)
    {
        try
        {
            if (a > 0)
            {
                
                bl.subid = a;
                bl.subjectid = a;
                b.delsubngrade(bl);
                Response.Write("<script>alert('Subject Removed'); window.location.href = 'ManageSubjects.aspx'</script>");
            }
            else
            { Response.Write("<script>alert('Please select a subject')</script>"); }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + Server.HtmlEncode(ex.Message) + "')</script>");

        }
    }
}