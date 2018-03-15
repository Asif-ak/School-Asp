using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BAL_login
/// </summary>
public class BAL_login
{
    string un;
    string up;
    string rl;

    public string user_name
    {
        get { return un; }
        set { un=value; }
    }
    public string uer_pass
    {
        get { return up; }
        set {  up= value; }
    }
    public string uer_roll
    {
        get { return rl; }
        set { rl= value; }
    }
    public BAL_login()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}