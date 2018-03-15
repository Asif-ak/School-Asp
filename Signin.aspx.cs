using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signin : System.Web.UI.Page
{
    BAL_login bal = new BAL_login();
    BLL bl = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        bal.user_name = txtuname.Text;
        bal.uer_pass = txtpass.Text;
        if (bl.login(bal) == 1)
        {
            Session["master"] = txtuname.Text;
            Session["role"] = bal.uer_roll;
            Response.Write("<script>alert('Loged In!'); window.location.href = 'Main.aspx'</script>");
        }
        else if (bl.login(bal) == 2)
        {
            Session["master"] = txtuname.Text;
            Session["role"] = bal.uer_roll;
            Response.Write("<script>alert('Loged In!'); window.location.href = 'Main.aspx'</script>");
        }
        else if (bl.login(bal) == 3)
        {
            Session["master"] = txtuname.Text;
            Session["role"] = bal.uer_roll;
            Response.Write("<script>alert('Loged In!'); window.location.href = 'Main.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('Wrong Credentials!')</script>");
        }

    }
}