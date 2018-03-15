using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddSubject : System.Web.UI.Page
{
    BAL bl = new BAL();
    BLL b = new BLL();
    protected void page_Init(object sender, EventArgs e)
    {
        ddlgrpfil.DataSource = b.getlvlonsub();
        ddlgrpfil.DataTextField = "clas_level";
        ddlgrpfil.DataValueField = "clasid";
        ddlgrpfil.DataBind();
        ddlgrpfil.Items.Insert(0, "Please select Class Level");



    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["master"] == null || Session["role"].ToString() != "admin")
        {
            Response.Write("<script>alert('Access Denied'); window.location.href = 'Signin.aspx'</script>");
        }
        else { };
    }

    protected void ddlgrpfil_SelectedIndexChanged(object sender, EventArgs e)
    {
        subcat.Visible = true;
        rblsubcat.Visible = true;
    }

    protected void rblsubcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblteach.Visible = true;
        ddlteach.Visible = true;

        if (Page.IsPostBack)
        {
            bl.sub_category = rblsubcat.Text;
            ddlteach.DataSource = b.getteach(bl);
            ddlteach.DataTextField = "tea_f_name";
            ddlteach.DataValueField = "teaid";
            ddlteach.DataBind();
            ddlteach.Items.Insert(0, "Please select Teacher");
        }




    }

    protected void ddlteach_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    int x;
    int y;
    int z;
    protected void btnregsub_Click(object sender, EventArgs e)
    {
        //try
        //{

        //}
        //catch (Exception ex)
        //{
        //    Response.Write("<script>alert('Error !! Please Try Again'); window.location.href = 'AddSubject.aspx'</script>"+ex.Message);

        //}
        x = int.Parse(TextBox3.Text);
        y = int.Parse(TextBox4.Text);
        z = x + y;
        if (z != 100 )
        {
            Response.Write("<script>alert('Total Marks should be equals to 100')</script>");
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        else
        {
            
            bl.subjectname = TextBox1.Text;
            bl.subjectacr = TextBox2.Text;
            bl.clasid = Convert.ToInt32(ddlgrpfil.SelectedValue);
            bl.teaid = Convert.ToInt32(ddlteach.SelectedValue);
            bl.sub_category = rblsubcat.Text;
            bl.mid_term_marks = x;
            bl.fin_term_marks = y;
            bl.total_marks = z;
            b.inssubjectandgrade(bl);
            Response.Write("<script>alert('New Subject Added'); window.location.href = 'AddSubject.aspx'</script>");
        }
    }

    protected void chk_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void btncan_Click(object sender, EventArgs e)
    {
        // the below does not work
       // Response.Redirect("<script> window.location.href = 'AddSubject.aspx'</script>");
    }
}