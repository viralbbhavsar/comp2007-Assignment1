using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gameCalculator_Assignment1
{
    public partial class _default : System.Web.UI.Page
    {
        //Variable Declaration
        int win;
        int loss;
        Decimal winnings;
        int ptsScored;
        int ptsAllowed;
        int ptsDifferential;
        int attendance;
        Decimal avgAttendance;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //Get the all Control Values from gameCalculator1
            RadioButtonList gameCalculatorResult1 = gameCalculator1.FindControl("rblResult") as RadioButtonList;
            TextBox gameCalculatorScored1 = gameCalculator1.FindControl("txtScored") as TextBox;
            TextBox gameCalculatorAllowed1 = gameCalculator1.FindControl("txtAllowed") as TextBox;
            TextBox gameCalculatorSpectator1 = gameCalculator1.FindControl("txtSpectator") as TextBox;
            
            //Get the all Control Values from gameCalculator2
            RadioButtonList gameCalculatorResult2 = gameCalculator2.FindControl("rblResult") as RadioButtonList;
            TextBox gameCalculatorScored2 = gameCalculator2.FindControl("txtScored") as TextBox;
            TextBox gameCalculatorAllowed2 = gameCalculator2.FindControl("txtAllowed") as TextBox;
            TextBox gameCalculatorSpectator2 = gameCalculator2.FindControl("txtSpectator") as TextBox;

            //Get the all Control Values from gameCalculator3
            RadioButtonList gameCalculatorResult3 = gameCalculator3.FindControl("rblResult") as RadioButtonList;
            TextBox gameCalculatorScored3 = gameCalculator3.FindControl("txtScored") as TextBox;
            TextBox gameCalculatorAllowed3 = gameCalculator3.FindControl("txtAllowed") as TextBox;
            TextBox gameCalculatorSpectator3 = gameCalculator3.FindControl("txtSpectator") as TextBox;

            //Get the all Control Values from gameCalculator4
            RadioButtonList gameCalculatorResult4 = gameCalculator4.FindControl("rblResult") as RadioButtonList;
            TextBox gameCalculatorScored4 = gameCalculator4.FindControl("txtScored") as TextBox;
            TextBox gameCalculatorAllowed4 = gameCalculator4.FindControl("txtAllowed") as TextBox;
            TextBox gameCalculatorSpectator4 = gameCalculator4.FindControl("txtSpectator") as TextBox;

            //Calculate wins
            if (gameCalculatorResult1.SelectedItem.Text == "Win"){
                win++;
            }
            else{
                loss++;
            }

            if (gameCalculatorResult2.SelectedItem.Text == "Win"){
                win++;
            }
            else{
                loss++;
            }

            if (gameCalculatorResult3.SelectedItem.Text == "Win"){
                win++;
            }
            else{
                loss++;
            }

            if (gameCalculatorResult4.SelectedItem.Text == "Win"){
                win++;
            }
            else{
                loss++;
            }

            //Calculate Winnings
            winnings = (win * 100) / 4;

            //Calculate Scored
            ptsScored = int.Parse(gameCalculatorScored1.Text) + int.Parse(gameCalculatorScored2.Text) + int.Parse(gameCalculatorScored3.Text) + int.Parse(gameCalculatorScored4.Text);

            //Calculate Allowed
            ptsAllowed = int.Parse(gameCalculatorAllowed1.Text) + int.Parse(gameCalculatorAllowed2.Text) + int.Parse(gameCalculatorAllowed3.Text) + int.Parse(gameCalculatorAllowed4.Text);

            //Calculate Points Differentials
            ptsDifferential = ptsScored - ptsAllowed;

            //Calculate Attendance
            attendance = int.Parse(gameCalculatorSpectator1.Text) + int.Parse(gameCalculatorSpectator2.Text) + int.Parse(gameCalculatorSpectator3.Text) + int.Parse(gameCalculatorSpectator4.Text);

            //Calculate Average Attendance
            avgAttendance = attendance / 4;
            

            ///Set All the results in Labels
            lblWin.Text = win.ToString();
            lblLoss.Text = loss.ToString();
            lblWinning.Text = winnings.ToString();
            lblPtsScored.Text = ptsScored.ToString();
            lblPtsAllowed.Text = ptsAllowed.ToString();
            lblPtsDifferential.Text = ptsDifferential.ToString();
            lblAttendance.Text = attendance.ToString();
            lblAvgAttendance.Text = avgAttendance.ToString();

        }
    }
}