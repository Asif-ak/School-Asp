using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for DAL
/// </summary>
public class DAL
{
    public SqlConnection con;
    public DAL()
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    }

    public void getall(SqlCommand a)
    {
        con.Open();
        a.ExecuteNonQuery();
        con.Close();
    }

    public void gelalltrans(SqlCommand abc, SqlTransaction tran)
    {
        //con.Open();
        //con.BeginTransaction();
        try
        {
            abc.ExecuteNonQuery();
            tran.Commit();
        }
        catch 
        {

            tran.Rollback();
            
        }
        con.Close();
    }

    public DataTable getfilterdata(SqlCommand abc)
    {
        SqlDataAdapter da = new SqlDataAdapter(abc);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}