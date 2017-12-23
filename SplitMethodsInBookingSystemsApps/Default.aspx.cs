using System;
using System.Web.UI;

namespace SplitMethodsInBookingSystemsApps
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            dateTextBox.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            dateOutTextBox1.Text = Calendar2.SelectedDate.ToString("dd-MM-yyyy");

        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

    }
}