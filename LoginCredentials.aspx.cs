using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_LoginCredentials : System.Web.UI.Page
{
    BAL bl = new BAL();
    BLL b = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["master"] == null || Session["role"].ToString() != "admin")
        {
            Response.Write("<script>alert('Access Denied'); window.location.href = 'Signin.aspx'</script>");
        }
        else { };
    }

    protected void submitlogin_Click(object sender, EventArgs e)
    {
        if (txtupass.Text != txtupasscn.Text)
        {
            Response.Write("<script>alert('Please enter same password')</script>");
            txtupass.Focus();
        }
        else
        {
            bl.uname = txtuname.Text;
            bl.upass = txtupasscn.Text;
            bl.role = ddlroll.Text;
            b.inslogin(bl);
            Response.Write("<script>alert('New Credentials Added'); window.location.href = 'LoginCredentials.aspx'</script>");
        }
    }
}