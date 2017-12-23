<%@ Page Title="Booking" Language="C#" MasterPageFile="Site.Master" %>
<script runat="server">

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        checkInTextBox.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
        Calendar1.Visible = false;
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        checkOutTextBox.Text = Calendar2.SelectedDate.ToString("dd-MM-yyyy");
        Calendar2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string checkInDate = checkInTextBox.Text.ToString();
        char[] seprator = new char[] { '-' };
        string[] startSplitArray = checkInDate.Split(seprator);
        int date = Convert.ToInt32(startSplitArray[0]);
        int month = Convert.ToInt32(startSplitArray[1]);
        int year = Convert.ToInt32(startSplitArray[2]);



        string checkOutDate = checkOutTextBox.Text.ToString();
        char[] sepratorCheckOut = new char[] { '-' };
        string[] startSplitArrayCheckOut = checkOutDate.Split(sepratorCheckOut);
        int dateOut = Convert.ToInt32(startSplitArrayCheckOut[0]);
        int monthOut = Convert.ToInt32(startSplitArrayCheckOut[1]);
        int yearOut = Convert.ToInt32(startSplitArrayCheckOut[2]);


       
        if (yearOut > year)
        {
            if (month > monthOut)
            {
                if (date == dateOut || date > dateOut || dateOut > date)
                {
                    Response.Write("<div class='alert alert-success'align='center' ><h3><strong>Success!</strong> Now Booking your Hotel.</h3></div>");
                }
                else
                {
                    Response.Write("<div class='alert alert-danger'align='center' ><h3><strong>Invalid Date!</strong> Failed to booking hotel.</h3></div>");
                }
            }
            else if (monthOut > month)
            {
                if (dateOut == date || dateOut > date || date > dateOut)
                {
                    Response.Write("<div class='alert alert-success'align='center' ><h3><strong>Success!</strong> Now Booking your Hotel.</h3></div>");
                }
                else
                {
                    Response.Write("<div class='alert alert-danger'align='center' ><h3><strong>Invalid Date!</strong> Failed to booking hotel.</h3></div>");
                }
            }
            else if (month == monthOut)
            {
                if (date == dateOut)
                {
                    Response.Write("<div class='alert alert-success'align='center' ><h3><strong>Success!</strong> Now Booking your Hotel for few hours.</h3></div>");                }
                else if (dateOut > date || date > dateOut)
                {
                    Response.Write("<div class='alert alert-success'align='center' ><h3><strong>Success!</strong> Now Booking your Hotel.</h3></div>");
                }
                else
                {
                    Response.Write("<div class='alert alert-danger'align='center' ><h3><strong>Invalid!</strong> Now Booking your Hotel.</h3></div>");
                }
            }
            else
            {
                Response.Write("<div class='alert alert-danger'align='center' ><h3><strong>Invalid Date!</strong> Failed to booking hotel.</h3></div>");
            }
        }
        else if (yearOut == year)
        {
            if (month == monthOut)
            {
                if (date == dateOut)
                {
                    Response.Write("<div class='alert alert-success'align='center' ><h3><strong>Success!</strong> Now Booking your Hotel for few hours.</h3></div>");
                }
                else if (dateOut > date)
                {
                    Response.Write("<div class='alert alert-success'align='center' ><h3><strong>Success!</strong> Now Booking your Hotel.</h3></div>");

                }
                else
                {
                    Response.Write("<div class='alert alert-danger'align='center' ><h3><strong>Invalid Date!</strong> Failed to booking hotel.</h3></div>");
                }
            }
            else if (month > monthOut)
            {
                Response.Write("<div class='alert alert-danger'align='center' ><h3><strong>Invalid Date!</strong> Failed to booking hotel.</h3></div>");
            }
            else if (monthOut > month)
            {
                if (date == dateOut)
                {
                    Response.Write("<div class='alert alert-success'align='center' ><h3><strong>Success!</strong> Now Booking your Hotel.</h3></div>");
                }
                else if (dateOut > date || date > dateOut)
                {
                    Response.Write("<div class='alert alert-success'align='center' ><h3><strong>Success!</strong> Now Booking your Hotel.</h3></div>");
                }
                else
                {
                    Response.Write("<div class='alert alert-danger'align='center' ><h3><strong>Invalid Date!</strong> Failed to booking hotel.</h3></div>");
                }
            }
            else
            {
                Response.Write("<div class='alert alert-danger'align='center' ><h3><strong>Invalid Date!</strong> Failed to booking hotel.</h3></div>");
            }
        }
        else
        {
            Response.Write("<div class='alert alert-danger'align='center' ><h3><strong>Invalid Date!</strong> Failed to booking hotel.</h3></div>");
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = true;
    }
</script>

<asp:Content runat="server" ID="Main" ContentPlaceHolderID="MainContent">
    <table border="1px;" align="center" class="table">
        <tr>
            <td colspan="2" align="center" style="background-color: pink;">
                <h2>Online Hotel Booking Systems...</h2>
            </td>
        </tr>
        <tr>
            <td class="form-horizontal">
                <asp:Label ID="checkInLabel" runat="server" Text="Check-In"></asp:Label><asp:TextBox ID="checkInTextBox" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="21px" ImageUrl="~/Image/img_fjords.jpg" Width="113px" OnClick="ImageButton1_Click" />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </td>
            <td>
                <asp:Label ID="checkOutLabel2" runat="server" Text="Check-Out"></asp:Label><asp:TextBox ID="checkOutTextBox" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="21px" ImageUrl="~/Image/img_fjords.jpg" Width="113px" OnClick="ImageButton2_Click" />
                <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="background-color: pink">
                <asp:Button ID="Button1" runat="server" Text="Booked" CssClass="btn btn-danger" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
