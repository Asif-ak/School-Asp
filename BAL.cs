using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BAL
/// </summary>
public class BAL
{
    #region Auto Properties for Adding Class
    string ab = "select distinct clas_grp from tblclas";
    //string ac = "select distinct clas_level from tblclas";
    public string getcl
    {
        get { return ab; }
        set { ab = value; }
    }

    //public string getvll
    //{
    //    get { return ac; }
    //    set { ac = value; }
    //}
    public string clas_level { get; set; }
    public string clas_grp { get; set; }
    public int no_of_sub { get; set; }
    public int strength { get; set; }

    #endregion

    #region Auto Properties for Student Registration
    public string stuname { get; set; }
    public string stufatname { get; set; }
    public string stumotname { get; set; }
    public string religion { get; set; }
    public string nationality { get; set; }
    public string dob { get; set; }
    public string pob { get; set; }
    public string gender { get; set; }
    public string deformity { get; set; }
    public string address { get; set; }
    public string mobile { get; set; }
    public string father_occu { get; set; }
    public string Monthlyincome { get; set; }
    public string Pre_sch { get; set; }
    public string rfl_pre_sch { get; set; }
    public string adm_ref { get; set; }
    public string oth_cont_name { get; set; }
    public string oth_cont_num { get; set; }
    public string app_for_class { get; set; }
    public string id_copy { get; set; }
    public string bir_cert_copy { get; set; }
    public string photos_path { get; set; }
    public string sch_lea_cert { get; set; }
    public int clasid { get; set; }
    //public int clasida { get; set; }
    public string status { get; set; }
    #endregion

    #region Auto Properties for Teacher Registration
    public string tea_f_name { get; set; }
    public string tea_l_name { get; set; }
    public string gend { get; set; }
    public string phone { get; set; }
    public string addre { get; set; }
    public int years_of_service { get; set; }
    public string sub_category { get; set; }
    public int salary { get; set; }
    public string NIC { get; set; }

    #endregion

    #region Auto Properties for Subject and subject grades
    public string subjectname { get; set; }
    public int subjectid { get; set; }
    public int subid { get; set; }
    public string subjectacr { get; set; }
    //public int clasid { get; set; }
    public int teaid { get; set; }
    public int mid_term_marks { get; set; }
    public int fin_term_marks { get; set; }
    public int total_marks { get; set; }
    //public int status { get; set; }

    //public string sub_category { get; set; }

    #endregion

    #region Auto Properties for Login
    public string uname { get; set; }
    public string upass { get; set; }
    public string role { get; set; }
    #endregion

    #region Auto Properties for fee Type
    public string fee_type { get; set; }
    public int fee_type_amount { get; set; }
    #endregion

    #region Auto Properties for Registration Fee 
    public string fee_month { get; set; }
    public int ftid { get; set; }
    public int stuid { get; set; }
    public int fee_challan_No { get; set; }
    static int fcno;
    public static int fcn { get; set; }
    

    public List<int> abc
    { get; set; }
    #endregion
    public BAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}