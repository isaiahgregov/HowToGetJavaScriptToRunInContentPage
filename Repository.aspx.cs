using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2.Pages
{
    public partial class Repository : System.Web.UI.Page
    {
        private int test = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            DataSet ds = new DataSet();

            DataTable dt = new DataTable();
            dt.Columns.Add("Name");
            dt.Columns.Add("Branch");
            dt.Columns.Add("Officer");
            dt.Columns.Add("CustAcct");
            dt.Columns.Add("Grade");
            dt.Columns.Add("Rate");
            dt.Columns.Add("OrigBal");
            dt.Columns.Add("BookBal");
            dt.Columns.Add("Available");
            dt.Columns.Add("Effective");
            dt.Columns.Add("Maturity");
            dt.Columns.Add("Collateral");
            dt.Columns.Add("LoanSource");
            dt.Columns.Add("RBCCode");

            for (int i = 0; i < 50; i++)
            {
                dt.Rows.Add(new object[] { "James Bond, LLC", i, "Garrison Neely", "123 3428749020", 35, "6.000", "$24,590", "$13,432", "$12,659", "12/13/21", "1/30/27", 55, "ILS", "R" });
            }

            ds.Tables.Add(dt);

            gvLineDisplay.DataSourceID = null;
            gvLineDisplay.DataSource = ds.Tables[0].DefaultView;
            gvLineDisplay.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            test++;

            lblTest.Text = test.ToString();
        }

        //protected void btn2_onClick(object sender, EventArgs e)
        //{
        //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Script1", "<script type='text/javascript'>doOK();</script>");
        //}
    }
}