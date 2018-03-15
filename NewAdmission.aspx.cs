using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_NewAdmission : System.Web.UI.Page
{
    BLL bl = new BLL();
    BAL b = new BAL();
    protected void Page_Init(Object sender, EventArgs e)
    {
        DropDownList1.DataSource = bl.getlevelinadmisform();
        DropDownList1.DataTextField = "clas_level";
        DropDownList1.DataValueField = "clasid";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Select Class !!!");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //string fpath = Server.MapPath("~/admin/images/");
        //DirectoryInfo di = new DirectoryInfo(fpath);
        //DataList1.DataSource = di.GetFiles();
        //DataList1.DataBind();

        if (Session["master"] == null || Session["role"].ToString() != "admin")
        {
            Response.Write("<script>alert('Access Denied'); window.location.href = 'Signin.aspx'</script>");
        }
        else { };

       
    }

    protected void FileUpload1_PreRender(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    bool Chk(string fl)
    {
        string ext = Path.GetExtension(fl);
        switch (ext)
        {
            case ".jpg":
                return true;
            case ".jpeg":
                return true;
            case ".gif":
                return true;
            case ".png":
                return true;
        }
        return false;
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

        if (Chk(FileUpload1.FileName) && FileUpload1.HasFile)
        {
            string fname = FileUpload1.FileName;
            string fpath = MapPath("~/admin/images/");
            FileUpload1.SaveAs(fpath + fname);
        }
    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (Chk(FileUpload1.FileName))
            {
                string fname = FileUpload1.FileName;
                string fpath = MapPath("~/admin/images/");
                FileUpload1.SaveAs(fpath + fname);
                //DateTime dt = Convert.ToDateTime(TextBox6.Text);
                //string dtr = TextBox6.Text;
                b.stuname = TextBox1.Text;
                b.stufatname = TextBox2.Text;
                b.stumotname = TextBox3.Text;
                b.religion = TextBox4.Text;
                b.nationality = TextBox5.Text;
                b.dob = TextBox6.Text;
                b.pob = TextBox7.Text;
                b.gender = RadioButtonList1.Text;
                b.deformity = rbgender.Text;
                b.address = TextBox8.Text;
                b.mobile = TextBox9.Text;
                b.father_occu = TextBox10.Text;
                b.Monthlyincome = TextBox11.Text;
                b.Pre_sch = TextBox12.Text;
                b.rfl_pre_sch = TextBox13.Text;
                b.adm_ref = RadioButtonList2.Text;
                b.oth_cont_name = TextBox14.Text;
                b.oth_cont_num = TextBox15.Text;
                b.app_for_class = DropDownList1.Text;
                b.id_copy = ICA.Text;
                b.bir_cert_copy = BCA.Text;
                b.sch_lea_cert = SLC.Text;
                b.photos_path = FileUpload1.FileName;
                b.clasid = Convert.ToInt32 (DropDownList1.SelectedValue);
                b.status = "New Admission";
                bl.insstu(b);
                Response.Write("<script>alert('New Student Registered !! Please Process Fees Now'); window.location.href = 'Registrationfee.aspx'</script></script>");

            }
            else
            { Response.Write("<script>alert('Please Upload Image Only !!')</script>"); }
        }
        else
        { }
        
    }
}