using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Midterm_2012859
{
    public partial class hondaCarSelector : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panFinalInformation.Visible = panPriceResume.Visible = false;

            if (!Page.IsPostBack)
            {
                txtPhoneNumber.Visible = lblPhoneNumber.Visible = false;
                //
                cboModel.Items.Add(new ListItem("Civoc(+$25000)", "25000"));
                cboModel.Items.Add(new ListItem("DR-V(+$30000)", "30000"));
                cboModel.Items.Add(new ListItem("Appord(+$33000)", "33000"));
                cboModel.Items.Add(new ListItem("Cilot(+$45000)", "45000"));
                cboModel.Items.Add(new ListItem("Odyrrey(+$54000)", "54000"));
                //
                lstInteriorColor.Items.Add(new ListItem("White (Free)", "0"));
                lstInteriorColor.Items.Add(new ListItem("Dark (+ $300)", "300"));
                lstInteriorColor.Items.Add(new ListItem("Pearl (+ $900)", "900"));

                lstInteriorColor.SelectedIndex = 0;
                //
                chklstAccessories.Items.Add(new ListItem("AeroKit (+ $1300)", "1300"));
                chklstAccessories.Items.Add(new ListItem("Film (+ $600)", "600"));
                chklstAccessories.Items.Add(new ListItem("Cold Weather (+ $900)", "900"));
                chklstAccessories.Items.Add(new ListItem("Hondi Emblem (+ $150)", "150"));
                chklstAccessories.Items.Add(new ListItem("Snow Tire Package (+ $1.800)", "1800"));
                //
                radlstWarranty.Items.Add(new ListItem("3 Years (Included)", "0"));
                radlstWarranty.Items.Add(new ListItem("5 Years (+ $1000)", "1000"));
                radlstWarranty.Items.Add(new ListItem("7 Years (+ $1500)", "1500"));

                radlstWarranty.SelectedIndex = 0;
            }

            if (cboModel.SelectedIndex > 0)
            {
                calculatePrice();
            }
        }

        private void calculatePrice()
        {
            decimal baseP = 0, interiorP = 0, warranty = 0, total = 0, accessories = 0, subTotal = 0, tax = 0;

            baseP = Convert.ToDecimal(cboModel.SelectedItem.Value);
            interiorP = Convert.ToDecimal(lstInteriorColor.SelectedItem.Value);
            warranty = Convert.ToDecimal(radlstWarranty.SelectedItem.Value);

            foreach (ListItem item in chklstAccessories.Items)
            {
                accessories += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }

            litPriceResume.Text = "<br><b>Car Price: $ </b>" + baseP + "<br/>";

            litPriceResume.Text += "<br><b>Interior Color: $ </b>" + interiorP + "<br/>";

            litPriceResume.Text += "<b>Accessories : $ </b>" + accessories + "<br/>";

            litPriceResume.Text += "<br><b>Warranty: $ </b>" + warranty + "</br></br></br>";

            subTotal = baseP + interiorP + accessories + warranty;
            litPriceResume.Text += "<b>Total Without Taxes: $ </b>" + subTotal + "<br/><br/>";


            tax += Math.Round(subTotal * Convert.ToDecimal(0.15), 2);


            litPriceResume.Text += "<b>Total with taxes (15%): $ </b>" + total + "<br/><br/>";

            panPriceResume.Visible = true;
        }

        protected void chkPhone_CheckedChanged(object sender, EventArgs e)
        {

            txtPhoneNumber.Visible = lblPhoneNumber.Visible = chkPhone.Checked;

        }

        protected void cboModel_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void btnConclude_Click(object sender, EventArgs e)
        {
            panFinalInformation.Visible = true;

            litFinalInformation.Text = "Congratulation in obtain your new Hondi " + cboModel.SelectedItem.Text + " in " + txtCity.Text + ", " + txtZipCode.Text + ". <br/><br/>";

            litFinalInformation.Text += "Your car comes with " + lstInteriorColor.Text + " Interior Color  ";

            foreach (ListItem item in chklstAccessories.Items)
            {

                litFinalInformation.Text += (item.Selected) ? ", " + item.Text : "";
            }

            litFinalInformation.Text += " accessories. <br/><br/>";

            litFinalInformation.Text += "You choosed "+ radlstWarranty.SelectedItem.Text + " of warranty";

            litFinalInformation.Text += (chkPhone.Checked) ? " and our dealer you contact you by the phone number " + txtPhoneNumber.Text + ".<br/>" : ".<br/>";

        

        }
    }
}