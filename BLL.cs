using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BLL
/// </summary>
public class BLL
{
    DAL d = new DAL();
    BAL_login bl = new BAL_login();
    BAL bla = new BAL();
    #region Login methods

    public int login(BAL_login bl)
    {
        SqlCommand cmd = new SqlCommand("select * from tbllogin where uname=@acc and upass=@key", d.con);
        cmd.Parameters.AddWithValue("@acc", bl.user_name);
        cmd.Parameters.AddWithValue("@key", bl.uer_pass);
        DataTable dt = d.getfilterdata(cmd);
        if (dt.Rows.Count > 0)
        {
            bl.uer_roll = dt.Rows[0][3].ToString();
            if (dt.Rows[0][3].ToString() == "admin")
            {
                return 1;
            }
            else if (dt.Rows[0][3].ToString() == "accountant")
            {
                return 2;
            }
            else if (dt.Rows[0][3].ToString() == "teacher")
            {
                return 3;
            }
            else
            {
                return 0;
            }
        }
        return 5;
    }
    #endregion

    #region all insert and select methods
    public DataTable viewallsub()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT COUNT(DISTINCT dbo.tblsubject.subjectid) AS 'Number of Subjects Taught', dbo.tblclas.clas_grp AS 'Class Group', dbo.tblclas.no_of_sub AS 'Number of Subjects Allowed', dbo.tblclas.clas_level AS 'Class Level' FROM dbo.tblclas FULL OUTER JOIN dbo.tblsubject ON dbo.tblclas.clasid = dbo.tblsubject.clasid GROUP BY dbo.tblclas.clas_grp, dbo.tblclas.no_of_sub, dbo.tblclas.clas_level", d.con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public object selstuforfee()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tbladmission where status = 'New Admission'", d.con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
    public void insfeetype(BAL b)
    {
        SqlCommand cmd = new SqlCommand("insert into tblfeetype (fee_type, fee_type_amount) values (@ft, @fta)", d.con);
        cmd.Parameters.AddWithValue("@ft", b.fee_type);
        cmd.Parameters.AddWithValue("@fta", b.fee_type_amount);
        d.getall(cmd);
    }

    //public object selfeetype()
    //{
    //    SqlDataAdapter da = new SqlDataAdapter("select * from tblfeetype", d.con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    return dt;
    //    //while (dt.Rows.Count > 0)
    //    //{
    //    //    bla.fee_type_amount = Convert.ToInt32(dt.Rows[0][2]);
    //    //}

    //}




    //public List<BAL> insregfee(List<BAL> bl)//this method ensure status upd in admission form too.
    //{
    //    //List<BAL> blbl = new List<BAL>();
    //    BAL bla = new BAL();
    //    SqlCommand cmd = new SqlCommand("sp_registrationfee_admissionstatusupd", d.con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.AddWithValue("@fm", bla.fee_month);
    //    cmd.Parameters.AddWithValue("@ftd", bla.ftid);
    //    cmd.Parameters.AddWithValue("@std", bla.stuid);
    //    //cmd.Parameters.AddWithValue("@sta", b.status);
    //    bl.Add(bla);
    //    d.getall(cmd);
    //    return bl;
    //}

    public void insregfee(BAL b)//this method ensure status upd in admission form too.
    {
        SqlCommand cmd = new SqlCommand("sp_registrationfee_admissionstatusupd", d.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@fm", b.fee_month);
        cmd.Parameters.AddWithValue("@ftd", b.ftid);
        cmd.Parameters.AddWithValue("@std", b.stuid);
        cmd.Parameters.AddWithValue("@fcnnn", b.fee_challan_No);

        d.getall(cmd);
    }

    public void getchallansta()
    {
        SqlCommand cmd = new SqlCommand("select count(distinct fee_challan_No) from tblfee", d.con);
        d.getall(cmd);
        d.con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        //while (dr.Read())
        if (dr.Read())
        {
            int count = int.Parse(dr[0].ToString());
            int b = count + 1;
            if (count <= 0)
            {
                BAL.fcn = 1;
            }
            else
            {
                BAL.fcn = b;
            }
        }
        else { }
        d.con.Close();
        //dr.Close();

    }
    public object callfeetype()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblfeetype", d.con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }

    public void callfeetypeamt(BAL b)
    {
        SqlCommand cmd = new SqlCommand("select fee_type_amount from tblfeetype where ftid=@ftid", d.con);
        cmd.Parameters.AddWithValue("@ftid", b.ftid);
        d.getall(cmd);
        d.con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows)
            {
                b.fee_type_amount = Convert.ToInt32(dr[0]);
            }
        }
        d.con.Close();
        //DataTable dt= d.getfilterdata(cmd);
        //while (dt.Rows.Count > 0)
        //{
        //    b.fee_type_amount = Convert.ToInt16(dt.Rows[0][0]);
        //}
        //return dt;
    }
    public object getfeechallan(BAL b)
    {
        SqlCommand cmd = new SqlCommand("select * from tblfee where fee_challan_No like @abc", d.con);
        cmd.Parameters.AddWithValue("@abc", "%" + b.fee_challan_No + "%");
        DataTable dt = d.getfilterdata(cmd);
        List<int> lstftid = new List<int>();
        foreach (DataRow dr in dt.Rows)
        { lstftid.Add(int.Parse(dr["ftid"].ToString()));  }
        b.abc = lstftid;
       // return dt;
        
    
        //foreach (DataColumn dd in dt.Columns)
        //{
        //    if (dd.ColumnName == "ftid")
        //    {

            //        //DataTable dt1 = new DataTable();
            //        //dt1.Columns.Add(dd);
            //        //b.abc = dt1;
            //        //dd.Container.Components
            //        List<DataColumn> dc = new List<DataColumn>();
            //       // List<DataTable> db=new List<DataTable>()
            //        dc.Add(dd);
            //        b.abc = dc;  //this method only gets column name do something here or create loop while binding list box.
            //    }
            //}

        return dt;
    }
    public void inslogin(BAL b)
    {
        SqlCommand cmd = new SqlCommand("insert into tbllogin(uname, upass, role) values (@un, @up, @ur)", d.con);
        cmd.Parameters.AddWithValue("@un", b.uname);
        cmd.Parameters.AddWithValue("@up", b.upass);
        cmd.Parameters.AddWithValue("@ur", b.role);
        d.getall(cmd);
    }

    public void addclass(BAL b)
    {
        SqlCommand cmd = new SqlCommand("insert into tblclas (clas_level, clas_grp, no_of_sub, strength) values (@cll, @clg, @nos, @stren)", d.con);
        cmd.Parameters.AddWithValue("@cll", b.clas_level);
        cmd.Parameters.AddWithValue("@clg", b.clas_grp);
        cmd.Parameters.AddWithValue("@nos", b.no_of_sub);
        cmd.Parameters.AddWithValue("@stren", b.strength);
        d.getall(cmd);
    }

    public object callstudentinview(BAL b)
    {

        SqlCommand cmd = new SqlCommand("SELECT * from FROM dbo.tbladmission WHERE stuid = @stid", d.con);
        cmd.Parameters.AddWithValue("@cid", b.stuid);
        object oo = d.getfilterdata(cmd);
        return oo;
    }

    public void insstu(BAL b)
    {
        SqlCommand cmd = new SqlCommand("insert into tbladmission (stuname, stufatname, stumotname, religion, nationality, dob, pob, gender, deformity, address, mobile, father_occu, Monthlyincome, Pre_sch, rfl_pre_sch, adm_ref, oth_cont_name, oth_cont_num, app_for_class, id_copy, bir_cert_copy, photos_path, sch_lea_cert, clasid, status) values (@stn,@stfn,@stmn,@rel,@nat,@db,@pb,@gn,@df,@add,@mb,@fo,@fmi,@prsh,@rflps,@adre,@ocn,@ocnn,@afc,@idc,@bcc,@pp,@slc,@cid,@sta)", d.con);
        cmd.Parameters.AddWithValue("@stn", b.stuname);
        cmd.Parameters.AddWithValue("@stfn", b.stufatname);
        cmd.Parameters.AddWithValue("@stmn", b.stumotname);
        cmd.Parameters.AddWithValue("@rel", b.religion);
        cmd.Parameters.AddWithValue("@nat", b.nationality);
        cmd.Parameters.AddWithValue("@db", b.dob);
        cmd.Parameters.AddWithValue("@pb", b.pob);
        cmd.Parameters.AddWithValue("@gn", b.gender);
        cmd.Parameters.AddWithValue("@df", b.deformity);
        cmd.Parameters.AddWithValue("@add", b.address);
        cmd.Parameters.AddWithValue("@mb", b.mobile);
        cmd.Parameters.AddWithValue("@fo", b.father_occu);
        cmd.Parameters.AddWithValue("@fmi", b.Monthlyincome);
        cmd.Parameters.AddWithValue("@prsh", b.Pre_sch);
        cmd.Parameters.AddWithValue("@rflps", b.rfl_pre_sch);
        cmd.Parameters.AddWithValue("@adre", b.adm_ref);
        cmd.Parameters.AddWithValue("@ocn", b.oth_cont_name);
        cmd.Parameters.AddWithValue("@ocnn", b.oth_cont_num);
        cmd.Parameters.AddWithValue("@afc", b.app_for_class);
        cmd.Parameters.AddWithValue("@idc", b.id_copy);
        cmd.Parameters.AddWithValue("@bcc", b.bir_cert_copy);
        cmd.Parameters.AddWithValue("@pp", b.photos_path);
        cmd.Parameters.AddWithValue("@slc", b.sch_lea_cert);
        cmd.Parameters.AddWithValue("@cid", b.clasid);
        cmd.Parameters.AddWithValue("@sta", b.status);
        d.getall(cmd);


    }
    public void addteach(BAL b)
    {
        SqlCommand cmd = new SqlCommand("Insert into tblteacher (tea_f_name, tea_l_name, gend, phone, addre, years_of_service, sub_category, salary, NIC) values (@tfn, @tln, @gen, @ph, @add, @yos, @sc, @sal, @nc)", d.con);
        cmd.Parameters.AddWithValue("@tfn", b.tea_f_name);
        cmd.Parameters.AddWithValue("@tln", b.tea_l_name);
        cmd.Parameters.AddWithValue("@gen", b.gend);
        cmd.Parameters.AddWithValue("@ph", b.phone);
        cmd.Parameters.AddWithValue("@add", b.addre);
        cmd.Parameters.AddWithValue("@yos", b.years_of_service);
        cmd.Parameters.AddWithValue("@sc", b.sub_category);
        cmd.Parameters.AddWithValue("@sal", b.salary);
        cmd.Parameters.AddWithValue("@nc", b.NIC);
        d.getall(cmd);

    }
    public void inssubjectandgrade(BAL b)
    {
        SqlCommand cmd = new SqlCommand("sp_SUB_to_SUBGRADES", d.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@subn", b.subjectname);
        cmd.Parameters.AddWithValue("@suba", b.subjectacr);
        cmd.Parameters.AddWithValue("@clid", b.clasid);
        cmd.Parameters.AddWithValue("@tid", b.teaid);
        cmd.Parameters.AddWithValue("@subcat", b.sub_category);
        //cmd.Parameters.AddWithValue("@subjectid");
        cmd.Parameters.AddWithValue("@mtm", b.mid_term_marks);
        cmd.Parameters.AddWithValue("@ftm", b.fin_term_marks);
        cmd.Parameters.AddWithValue("@tm", b.total_marks);
        //cmd.Parameters.AddWithValue("@sta", b.status);
        d.getall(cmd);
    }

    public DataTable getgrp(string a)
    {
        SqlDataAdapter da = new SqlDataAdapter(bla.getcl, d.con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable getlevelinadmisform()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from tblclas", d.con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        //bla.clasida = Convert.ToInt16(dt.Rows[0][0].ToString());
        return dt;
    }
    public object getlvl(BAL b)
    {
        SqlCommand cmd = new SqlCommand("select * from tblclas where clas_grp = @clg", d.con);
        cmd.Parameters.AddWithValue("@clg", b.clas_grp);
        DataTable dt = d.getfilterdata(cmd);
        return dt;
    }

    public object getlvlonsub()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblclas", d.con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public object getteach(BAL b)
    {

        SqlCommand cmd = new SqlCommand("select * from tblteacher where sub_category = @sc", d.con);
        cmd.Parameters.AddWithValue("@sc", b.sub_category);
        DataTable dt = d.getfilterdata(cmd);
        return dt;
    }

    public object getteachinteachsub()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblteacher", d.con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public object getsubjectdetailsjoin(BAL b)
    {
        SqlCommand cmd = new SqlCommand("SELECT dbo.tblclas.clas_level, dbo.tblsubject.subjectname, dbo.tblsubject.subjectacr, dbo.tblsubject.sub_category, { fn CONCAT(dbo.tblteacher.tea_f_name, dbo.tblteacher.tea_l_name) } AS Name, dbo.tblsubjectgrade.mid_term_marks, dbo.tblsubjectgrade.fin_term_marks, dbo.tblsubjectgrade.total_marks FROM dbo.tblclas FULL OUTER JOIN dbo.tblsubject ON dbo.tblclas.clasid = dbo.tblsubject.clasid FULL OUTER JOIN dbo.tblsubjectgrade ON dbo.tblsubject.subjectid = dbo.tblsubjectgrade.subjectid FULL OUTER JOIN dbo.tblteacher ON dbo.tblsubject.teaid = dbo.tblteacher.teaid WHERE dbo.tblsubject.teaid = @tid", d.con);
        cmd.Parameters.AddWithValue("@tid", b.teaid);
        DataTable dt = d.getfilterdata(cmd);
        return dt;
    }

    public void getclassdetails(BAL c)
    {
        SqlCommand cmd = new SqlCommand("SELECT COUNT(DISTINCT dbo.tblsubject.subjectid) AS SubTaught, dbo.tblclas.no_of_sub, dbo.tblclas.strength, COUNT(dbo.tbladmission.stuid) AS TotStudts, dbo.tblclas.clas_level, dbo.tblclas.clasid FROM dbo.tblclas FULL OUTER JOIN dbo.tbladmission ON dbo.tblclas.clasid = dbo.tbladmission.clasid FULL OUTER JOIN dbo.tblsubject ON dbo.tblclas.clasid = dbo.tblsubject.clasid WHERE dbo.tblclas.clasid = @clid GROUP BY dbo.tblclas.no_of_sub, dbo.tblclas.strength, dbo.tblclas.clas_level, dbo.tblclas.clasid", d.con);
        cmd.Parameters.AddWithValue("@clid", c.clasid);
        d.getall(cmd);
        //DataTable dt = d.getfilterdata(cmd);
        d.con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (!dr.IsClosed)
        {
            while (dr.Read())

            {
                c.subjectid = int.Parse(dr[0].ToString());
                c.no_of_sub = int.Parse(dr[1].ToString());
                c.strength = int.Parse(dr[2].ToString());
                c.stuid = int.Parse(dr[3].ToString());
            }
        }
        else
        {
            dr.Close();
            //d.con.Close();
        }
        //dr.Close();
        d.con.Close();
        //return dt;
    }


    #endregion

    #region Update / Delete Methods
    public void updstu(BAL b)
    {
        SqlCommand cmd = new SqlCommand("update tbladmission set stuname = @stn, stufatname=@stfn, stumotname=@stmn, religion=@rel, address=@add, mobile=@mob, father_occu=@fo, Monthlyincome=@mi, Pre_sch=@ps, rfl_pre_sch=@rfl, oth_cont_name=@ocn, oth_cont_num=@ocnm where stuid = @stid", d.con);
        cmd.Parameters.AddWithValue("@stn", b.stuname);
        cmd.Parameters.AddWithValue("@stfn", b.stufatname);
        cmd.Parameters.AddWithValue("@stmn", b.stumotname);
        cmd.Parameters.AddWithValue("@rel", b.religion);
        cmd.Parameters.AddWithValue("@add", b.address);
        cmd.Parameters.AddWithValue("@mob", b.mobile);
        cmd.Parameters.AddWithValue("@fo", b.father_occu);
        cmd.Parameters.AddWithValue("@mi", b.Monthlyincome);
        cmd.Parameters.AddWithValue("@ps", b.Pre_sch);
        cmd.Parameters.AddWithValue("@rfl", b.rfl_pre_sch);
        cmd.Parameters.AddWithValue("@ocn", b.oth_cont_name);
        cmd.Parameters.AddWithValue("@ocnm", b.oth_cont_num);
        cmd.Parameters.AddWithValue("@stid", b.stuid);
        d.getall(cmd);
    }

    public int getsubngradesinsubupd(BAL b)
    {
        SqlCommand cmd = new SqlCommand("SELECT dbo.tblsubject.subjectname, dbo.tblsubject.subjectacr, dbo.tblsubject.sub_category, dbo.tblsubjectgrade.mid_term_marks, dbo.tblsubjectgrade.fin_term_marks, dbo.tblsubjectgrade.total_marks, dbo.tblteacher.tea_f_name, dbo.tblteacher.teaid FROM dbo.tblsubject INNER JOIN dbo.tblsubjectgrade ON dbo.tblsubject.subjectid = dbo.tblsubjectgrade.subjectid INNER JOIN dbo.tblteacher ON dbo.tblsubject.teaid = dbo.tblteacher.teaid WHERE(dbo.tblsubject.subjectid = @subid)", d.con);

        cmd.Parameters.AddWithValue("@subid", b.subjectid);
        d.getall(cmd);
        d.con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            b.subjectname = dr[0].ToString();
            b.subjectacr = dr[1].ToString();
            b.sub_category = dr[2].ToString();
            b.mid_term_marks = int.Parse(dr[3].ToString());
            b.fin_term_marks = int.Parse(dr[4].ToString());
            b.total_marks = int.Parse(dr[5].ToString());
            b.tea_f_name = dr[6].ToString();
            b.teaid = int.Parse(dr[7].ToString());

            dr.Close();
            return 1;
        }
        else
        {


            d.con.Close();
            return 2;
        }

    }
    public void updsub(BAL b)
    {
        SqlCommand cmd = new SqlCommand("sp_sub_subgrade_upd", d.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@subn", b.subjectname);
        cmd.Parameters.AddWithValue("@suba", b.subjectacr);
        cmd.Parameters.AddWithValue("@mtm", b.mid_term_marks);
        cmd.Parameters.AddWithValue("@ftm", b.fin_term_marks);
        cmd.Parameters.AddWithValue("@tm", b.total_marks);
        cmd.Parameters.AddWithValue("@subjectid", b.subjectid);
        cmd.Parameters.AddWithValue("@subid", b.subid);
        //cmd.Parameters.AddWithValue("@subid", b.subjectid);
        d.getall(cmd);
    }

    public void subreassign(BAL b)
    {
        SqlCommand cmd = new SqlCommand("update tblsubject set teaid=@tid where subjectid=@sid", d.con);
        cmd.Parameters.AddWithValue("@tid", b.teaid);
        cmd.Parameters.AddWithValue("@sid", b.subjectid);
        d.getall(cmd);
    }

    public void delsubngrade(BAL b)
    {
        SqlCommand cmd = new SqlCommand("sp_rem_sub_subgrades", d.con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@subid", b.subid);
        cmd.Parameters.AddWithValue("@subjectid", b.subjectid);
        d.getall(cmd);
    }
    public void delclas(BAL b)
    {
        SqlCommand cmd = new SqlCommand("sp_rem_class", d.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@clid", b.clasid);
        d.getall(cmd);
    }
    SqlTransaction tran;
    public void updclas(BAL b)
    {
        d.con.Open();
        tran = d.con.BeginTransaction();

        SqlCommand cmd = new SqlCommand("update tblclas set no_of_sub=@nos, strength=@str where clasid=@clid", d.con, tran);
        cmd.Parameters.AddWithValue("@nos", b.no_of_sub);
        cmd.Parameters.AddWithValue("@str", b.strength);
        cmd.Parameters.AddWithValue("@clid", b.clasid);
        d.gelalltrans(cmd, tran);

    }

    public void updfeetypeamt(BAL v)
    {
        d.con.Open();
        tran = d.con.BeginTransaction();
        SqlCommand cmd = new SqlCommand("update tblfeetype set fee_type_amount=@fta where ftid=@ftid", d.con, tran);
        cmd.Parameters.AddWithValue("@fta", v.fee_type_amount);
        cmd.Parameters.AddWithValue("@ftid", v.ftid);
        d.gelalltrans(cmd, tran);
    }
    #endregion
    public BLL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}