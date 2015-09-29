using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var table1 = new DataTable("table1");
        table1.Columns.Add("VerifyOpt");
        table1.Columns.Add("IsGroupShoppingShow");
        table1.Columns.Add("SoSysNoName");
        table1.Columns.Add("GCSysNoShow");
        table1.Columns.Add("SOID");
        table1.Columns.Add("PayTypeName");
        table1.Columns.Add("PayAmount");
        table1.Columns.Add("SourceName");
        table1.Columns.Add("ApproveUserName");
        table1.Columns.Add("ApproveTime");
        table1.Columns.Add("InputUserName");
        table1.Columns.Add("InputTime");
        table1.Columns.Add("StatusName");
        table1.Columns.Add("AlipayTradeNo");
        table1.Columns.Add("MPSysNo");

        table1.Rows.Add(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15);
        var ds = new DataSet("test");
        ds.Tables.Add(table1);
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();
        var titles = new List<string>();
        var rtv = new DataTable("result");
        foreach (BoundColumn col in DataGrid1.Columns)
        {
            titles.Add(col.HeaderText);
            rtv.Columns.Add(col.HeaderText);
        }
        
        for (int i = 0; i < DataGrid1.Items.Count; i++)
        {
            DataRow oneRow = rtv.NewRow();
            Int32 oneRowIndex = 0;
            for (int j = 0; j < DataGrid1.Items[i].Cells.Count; j++)
            {
                oneRow[oneRowIndex] = DataGrid1.Items[i].Cells[j].Text.Replace("&nbsp;", "");
                oneRowIndex++;

            }
            rtv.Rows.Add(oneRow);
        }
        DataSet set = new DataSet("office");
        set.Tables.Add(rtv);
        TextBox1.Text = set.GetXml();
    }
}