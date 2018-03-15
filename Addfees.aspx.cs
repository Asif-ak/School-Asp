using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Addfees : System.Web.UI.Page
{
    BAL b = new BAL();
    BLL bl = new BLL();

    protected void Page_Init(object sender, EventArgs e)
    {
        ddlfeetype.DataSource = bl.callfeetype();
        ddlfeetype.DataTextField = "fee_type";
        ddlfeetype.DataValueField = "ftid";
        ddlfeetype.DataBind();
        ddlfeetype.Items.Insert(0, "Select Fee type");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["master"] == null || Session["role"].ToString() != "admin")
        {
            Response.Write("<script>alert('Access Denied'); window.location.href = 'Signin.aspx'</script>");
        }
        else { };
    }

    protected void submitclass_Click(object sender, EventArgs e)
    {
        
    }

    protected void submitfeetype_Click(object sender, EventArgs e)
    {
        b.fee_type = Txtfeety.Text;
        b.fee_type_amount = int.Parse(txtfeeamont.Text);
        bl.insfeetype(b);
        Response.Write("<script>alert('New fees type Added'); window.location.href = 'Addfees.aspx'</script>");
    }

    protected void ddlfeetype_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlfeetype.SelectedIndex != 0 && this.IsPostBack)
        {
            b.ftid = Convert.ToInt32(ddlfeetype.SelectedValue);
            bl.callfeetypeamt(b);
            lblamt.Text = b.fee_type_amount.ToString();
        }
        else { }
    }

    protected void btnupdfee_Click(object sender, EventArgs e)
    {
        if(txtamt.Text!=null)
        {
            b.fee_type_amount = int.Parse(txtamt.Text);
            b.ftid = Convert.ToInt32(ddlfeetype.SelectedValue);
            bl.updfeetypeamt(b);
            Response.Write("<script>alert('fees type Updated'); window.location.href = 'Addfees.aspx'</script>"); //
        }
        else
        {
            Response.Write("<script>alert('Please Enter Fee Amount')</script>");
        }
    }
}