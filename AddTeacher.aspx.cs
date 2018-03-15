using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddTeacher : System.Web.UI.Page
{
    BAL ba = new BAL();
    BLL bl = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["master"] == null || Session["role"].ToString() != "admin")
        {
            Response.Write("<script>alert('Access Denied'); window.location.href = 'Signin.aspx'</script>");
        }
        else { };
    }

    protected void btnregteach_Click(object sender, EventArgs e)
    {
        ba.tea_f_name = TextBox1.Text;
        ba.tea_l_name = TextBox2.Text;
        ba.gend = RadioButtonList1.Text;
        ba.phone = TextBox9.Text;
        ba.addre = TextBox8.Text;
        ba.years_of_service = Convert.ToInt32(TextBox3.Text);
        ba.sub_category = RadioButtonList2.SelectedValue;
        ba.salary = int.Parse(TextBox4.Text);
        ba.NIC = TextBox5.Text;
        bl.addteach(ba);
        Response.Write("<script>alert('Teacher Added'); window.location.href = 'AddTeacher.aspx'</script>");
    }
}