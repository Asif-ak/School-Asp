using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Registrationfee : System.Web.UI.Page
{
    BLL b = new BLL();
    BAL bl = new BAL();

    protected void Page_Init(Object sender, EventArgs e)
    {
        DropDownList1.DataSource = b.selstuforfee();
        DropDownList1.DataTextField = "stuname";
        DropDownList1.DataValueField = "stuid";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "please select student");



    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["master"] == null || Session["role"].ToString() != "admin")
        {
            Response.Write("<script>alert('Access Denied'); window.location.href = 'Signin.aspx'</script>");
        }
        else { };


    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        CheckBoxList1.Visible = true;
        CheckBoxList1.DataSource = b.callfeetype();
        CheckBoxList1.DataTextField = "fee_type";
        CheckBoxList1.DataValueField = "ftid";
        CheckBoxList1.DataBind();


    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //foreach (ListItem li in CheckBoxList1.Items)
        //{
        //   if(li.Selected)
        //    {
        //        bl.fee_month = DateTime.Now.ToString("MMM");
        //        bl.ftid = int.Parse(CheckBoxList1.SelectedValue);
        //        bl.stuid = int.Parse(DropDownList1.SelectedValue);
        //        b.insregfee(bl);
        //        Response.Write("<script>alert('Registration Successfull')</script>");
        //    }
        //}
        //if (CheckBoxList1.SelectedValue == "2")
        //{
        //    Label1.Visible = true;
        //    DropDownList2.Visible = true;
        //}
        //else
        //{
        //    Label1.Visible = true;
        //    DropDownList2.Visible = true;
        //}
    }
    //static int sta;
    protected void Savefees_Click(object sender, EventArgs e)
    {
        b.getchallansta();
        //sta = BAL.fcn;
        foreach (ListItem li in CheckBoxList1.Items)
        {
            if (li.Selected)
            {
                bl.fee_month = DateTime.Now.ToString("MMM");
                bl.ftid = int.Parse(li.Value);
                bl.stuid = int.Parse(DropDownList1.SelectedValue);
                bl.fee_challan_No = BAL.fcn ;
                b.insregfee(bl);
                Response.Write("<script>alert('Fee Voucher Recorder'); window.location.href = 'Registrationfee.aspx'</script>");

            }
            
            else{ }



        }
        

        //using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand())
        //{
        //    cmd.CommandText = "sp_registrationfee_admissionstatusupd";
        //    cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //    DAL d = new DAL();
        //    cmd.Connection = d.con;
        //    d.con.Open();
        //    foreach (ListItem li in CheckBoxList1.Items)
        //    {

        //        cmd.Parameters.AddWithValue("@fm", DateTime.Now.ToString("MMM"));
        //        cmd.Parameters.AddWithValue("@ftd", int.Parse(li.Value));
        //        cmd.Parameters.AddWithValue("@std", int.Parse(DropDownList1.SelectedValue));
        //        cmd.ExecuteNonQuery();
        //        cmd.Parameters.Clear();
        //    }
        //    d.con.Close();
        //    Response.Write("<script>alert('Registration Successfull')</script>");
        //}

        //foreach (ListItem li in CheckBoxList1.Items)
        //{

        //    List<BAL> l = new List<BAL>();
        //    bl.fee_month = DateTime.Now.ToString("MMM");
        //    bl.ftid = int.Parse(li.Value);
        //    bl.stuid = int.Parse(DropDownList1.SelectedValue);
        //    l.Add(bl);
        //    b.insregfee(l);

        //}
        //Response.Write("<script>alert('Registration Successfull')</script>");
    }

    protected void btnchallan_Click(object sender, EventArgs e)
    {
        bl.fee_challan_No = int.Parse(txtchallan.Text);
        GridView1.DataSource= b.getfeechallan(bl);
        GridView1.DataBind();
        GridView1.EmptyDataText = "No record Found";
        //foreach(ListItem lv in bl.abc)
        //{

        //}
        ListBox1.DataSource = bl.abc;
        //ListBox1.DataTextField = "abc";
        //ListBox1.DataValueField = "abc";
        ListBox1.DataBind();
        

        //ListBox1.DataBind();

    }
}