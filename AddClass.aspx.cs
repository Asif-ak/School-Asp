using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ViewClass : System.Web.UI.Page
{
    BAL bl = new BAL();
    BLL b = new BLL();

    public void Page_Init(object sender, EventArgs e)
    {
        abc();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["master"] != null && Session["role"].ToString() == "accountant")
        {
            Response.Write("<script>alert('Access Denied'); window.location.href = 'Main.aspx'</script>");

        }
        else { btnrem.Visible = false; };
    }

    protected void submitclass_Click(object sender, EventArgs e)
    {
        if (ddlgrpselec.SelectedIndex != 0)
        {
            string z = Txtlevel.Text + " - " + txtsec.Text;
            bl.clas_level = z;
            bl.clas_grp = ddlgrpselec.Text;
            bl.no_of_sub = int.Parse(txtcoursenum.Text);
            bl.strength = int.Parse(Txtstrength.Text);
            b.addclass(bl);
            Response.Write("<script>alert('New Class Added'); window.location.href = 'AddClass.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('Please select a group before adding a class')</script>");
            ddlgrpselec.Focus();
        }
    }

    protected void chk1_CheckedChanged(object sender, EventArgs e)
    {
        //    if (!this.IsPostBack)
        //    {
        //        if (chk1.Checked)
        //        {
        //            p1.Enabled = true;
        //        }
        //        else if (!chk1.Checked)
        //        {
        //            p1.Enabled = false;
        //        }
        //        else { }
        //    }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex != 0)
        {
            bl.clasid = Convert.ToInt32(DropDownList1.SelectedValue);
            b.getclassdetails(bl);
            lblstc.Text = bl.subjectid.ToString();
            lblallstu.Text = bl.stuid.ToString();
            lblstr.Text = bl.strength.ToString();
            Lblsuball.Text = bl.no_of_sub.ToString();
            if (lblstc.Text == "0" && lblallstu.Text == "0") { btnrem.Visible = true; }
            else { btnrem.Visible = false; }

        }
        else
        {
            Response.Write("<script>alert('Please select a class')</script>");
            DropDownList1.Focus();
        }
    }

    protected void btnrem_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            bl.clasid = Convert.ToInt32(DropDownList1.SelectedValue);
            b.delclas(bl);
            Response.Write("<script>alert('Class deleted Successfully'); windows.location.href='AddClass.aspx'</script>");
            abc();
        }
        else { }
    }


    protected void clupd_Click(object sender, EventArgs e)
    {
        int x = int.Parse(txtclupd1.Text);
        int y = int.Parse(txtclupd2.Text);
        bl.no_of_sub = x;
        bl.strength = y;
        bl.clasid = Convert.ToInt32(DropDownList1.SelectedValue);
        b.updclas(bl);
        Response.Write("<script>alert('Class Updated Successfully'); windows.location.href='AddClass.aspx'</script>");
    }


    #region material
    void abc()
    {
        DropDownList1.DataSource = b.getlvlonsub();
        DropDownList1.DataTextField = "clas_level";
        DropDownList1.DataValueField = "clasid";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Please select clas level");
    }
    #endregion
}
