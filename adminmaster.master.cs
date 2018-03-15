using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminmaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
        //Response.Cache.SetNoStore();

        if (Session["master"] != null && (Session["role"].ToString() == "admin"))
        {
            lblsess.Text = Session["role"].ToString();
            lblsessmas.Text = Session["master"].ToString();
            MultiView1.ActiveViewIndex = 0;
        }
        else if (Session["master"] != null && (Session["role"].ToString() == "accountant"))
        {
            lblsess.Text = Session["role"].ToString();
            Lblsessmas2.Text = Session["master"].ToString();
            MultiView1.ActiveViewIndex = 1;
        }
        else if (Session["master"] != null && (Session["role"].ToString() == "teacher"))
        {
            lblsess.Text = Session["role"].ToString();
            lblsessmas3.Text = Session["master"].ToString();
            MultiView1.ActiveViewIndex = 2;
        }
        else
        {
            Response.Write("<script>alert('Please Log In'); window.location.href = 'Signin.aspx'</script>");
            
        }
    }

    protected void lnkSignout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Write("<script>alert('Signed Out!! '); window.location.href = 'Signin.aspx'</script>");
    }
}
