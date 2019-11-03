using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Engie_HackOHIO
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void input_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlUnitsTop_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get new value field
            // units[0] = from --> units[1] = to
            string[] units = { ddlUnitsBot.SelectedValue, ddlUnitsTop.SelectedValue };
            if (isValid(txtCalcTop.Text.ToString()) && isValid(txtCalcBot.Text.ToString()))
            {
                // invoke calc
                double calculated = calculateResult(Double.Parse(txtCalcBot.Text.ToString()), units);
                txtCalcTop.Text = calculated.ToString();
            }

        }

        protected void ddlUnitsBot_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get new value field and invoke the calculator
            // string[] units = { ddlUnitsTop.SelectedValue, ddlUnitsBot.SelectedValue };
            Guid id = new Guid();
            ScriptManager.RegisterStartupScript(this, GetType(),id.ToString(), "calculate()", false);

            //if (isValid(txtCalcTop.Text.ToString()) && isValid(txtCalcBot.Text.ToString()))
            //{
            //    // invoke calc
            //    double calculated = calculateResult(Double.Parse(txtCalcTop.Text.ToString()), units);
            //    // txtCalcBot.Text = calculated.ToString();
            //    ScriptManager.RegisterStartupScript(this, GetType(), (, "calculate()", false);
            //}

        }

        protected void txtCalcTop_TextChanged(object sender, EventArgs e)
        {
            string[] units = { ddlUnitsTop.SelectedValue, ddlUnitsBot.SelectedValue };
            if (isValid(txtCalcTop.Text.ToString()))
            {
                double calculated = calculateResult(Double.Parse(txtCalcTop.Text.ToString()), units);
                // txtCalcBot.Text = calculated.ToString();
                ScriptManager.RegisterStartupScript(this, GetType(), "cool", "calculate()", false); 
            }
        }

        private double calculateResult(double arg, string[] units)
        {
            if (units[0].Equals(units[1]))
            {
                return arg;
            }
            // units[0] to units[1]

            if (units[0] == "kWh")
            {
                return (units[1] == "kBTU") ? arg * 3.412 : arg * 0.131;
            }

            if (units[0] == "kBTU")
            {
                return (units[1] == "kWh") ? arg * 0.293071 : arg * 0.0383;
            }

            if (units[0] == "USD")
            {
                return (units[1] == "kWh") ? arg * 7.634 : arg * 26.046;
            }

            return -1;

        }

        private bool isValid(string input)
        {
            double result;
            return Double.TryParse(input, out result) ;
        }

        protected void txtCalcBot_TextChanged(object sender, EventArgs e)
        {
            string[] units = { ddlUnitsBot.SelectedValue, ddlUnitsTop.SelectedValue };
            if (isValid(txtCalcBot.Text.ToString()))
            {
                double calculated = calculateResult(Double.Parse(txtCalcBot.Text.ToString()), units);
                txtCalcTop.Text = calculated.ToString();
            }
        }
    }
}