using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_StudentProfile : System.Web.UI.Page
{
    BAL bl = new BAL();
    BLL n = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!this.IsPostBack)
        //{
        //    ddlclasslvl.DataSource = n.getlevelinadmisform();
        //    ddlclasslvl.DataTextField = "clas_level";
        //    ddlclasslvl.DataValueField = "clas_level";
        //    ddlclasslvl.DataBind();
        //    ddlclasslvl.Items.Insert(0, "Please select class Level");
        //}
        
    }

   

 
    
    

    protected void GridView1_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
    {
        

        Label lbl1 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[2].FindControl("Label2");
        txtstuname.Text = lbl1.Text;

        Label lbl2 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[3].FindControl("Label3");
        txtfatname.Text = lbl2.Text;

        Label lbl3 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[4].FindControl("Label1");
        txtmotname.Text = lbl3.Text;

        Label lbl4 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[5].FindControl("Label4");
        txtrel.Text = lbl4.Text;

        Label lbl5 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[6].FindControl("Label5");
        txtnational.Text = lbl5.Text;

        Label lbl6 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[7].FindControl("Label6");
        Txtdob.Text = lbl6.Text;

        Label lbl7 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[8].FindControl("Label7");
        Txtpob.Text = lbl7.Text;

        Label lbl10 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[9].FindControl("Label10");
        Txtaddres.Text = lbl10.Text;

        Label lbl8 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[10].FindControl("Label8");
        lblgender.Text = lbl8.Text;

        Label lbl11 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[11].FindControl("Label11");
        Txtmbl.Text = lbl11.Text;

        Label lbl12 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[12].FindControl("Label12");
        Txtfatoccu.Text = lbl12.Text;

        Label lbl13 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[13].FindControl("Label13");
        txtmoninc.Text = lbl13.Text;

        Label lbl14 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[14].FindControl("Label14");
        Txtprevsch.Text = lbl14.Text;

        Label lbl15 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[15].FindControl("Label15");
        Txtrfl.Text = lbl15.Text;

        Label lbl16 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[16].FindControl("Label16");
        Lbladmref.Text = lbl16.Text;

        Label lbl9 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[17].FindControl("Label9");
        lbldeformity.Text = lbl9.Text;

        Label lbl17 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[18].FindControl("Label17");
        Txtothconam.Text = lbl17.Text;

        Label lbl18 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[18].FindControl("Label18");
        Txtothconum.Text = lbl18.Text;

        Label lbl19 = (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[1].FindControl("Lblstuid");
        lblstuID.Text = lbl19.Text;

        
        //string value = (GridView1.Rows[0].FindControl("rblgender") as RadioButtonList).SelectedValue;
        //rblgend.Text = value;
        //RadioButtonList rblgen = (RadioButtonList)this.GridView1.Rows[e.NewSelectedIndex].Cells[10].FindControl("rblgender");
        //rblgend.Text = rblgen.SelectedItem.Text;
    }



    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void btnupdstuprofile_Click(object sender, EventArgs e)
    {
        bl.stuname = txtstuname.Text;
        bl.stufatname = txtfatname.Text;
        bl.stumotname = txtmotname.Text;
        bl.religion = txtrel.Text;
        bl.address = Txtaddres.Text;
        bl.mobile = Txtmbl.Text;
        bl.father_occu = Txtfatoccu.Text;
        bl.Monthlyincome = txtmoninc.Text;
        bl.Pre_sch = Txtprevsch.Text;
        bl.rfl_pre_sch = Txtrfl.Text;
        bl.oth_cont_name = Txtothconam.Text;
        bl.oth_cont_num = Txtothconum.Text;
        bl.stuid = int.Parse(lblstuID.Text);
        n.updstu(bl);
        Response.Write("<script>alert('Student Profile Updated'); window.location.href = 'StudentProfile.aspx'</script>");
    }
}