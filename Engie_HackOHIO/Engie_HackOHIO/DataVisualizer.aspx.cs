using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace Engie_HackOHIO
{
    public partial class DataVisualizer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // pl
        }

        protected void ddlTheme_SelectedIndexChanged(object sender, EventArgs e)
        {
            // changing ddl index
        }

        private void ImportCSVToTable(DataTable dt, string file_path)
        {
            string[] csvRows = System.IO.File.ReadAllLines(file_path);
            string[] fields = null;
            string[] fieldstemp = Regex.Split(csvRows[0], ",(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)");
            int i = 0;

            foreach (string col in fieldstemp)
            {
                dt.Columns.Add(col.ToString());
            }

            foreach (string csvRow in csvRows)
            {
                fields = Regex.Split(csvRow, ",(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)");
                DataRow row = dt.NewRow();
                row.ItemArray = fields;
                dt.Rows.Add(row);
            }
        }

        private void CreateDonutChart()
        {
            try
            {
                int[] Data;
                string[] Labels;
                string[] BackgroundColors;
                // string[] HubList;
                // DataTable ChartData = new DataTable();
                /// NOTE: Run ImportCSVToTable on page load; use global table var for chart data

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}