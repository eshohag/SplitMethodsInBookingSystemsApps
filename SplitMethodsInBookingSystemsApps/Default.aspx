<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SplitMethodsInBookingSystemsApps._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-6">
        <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        <asp:TextBox ID="dateTextBox" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" ImageUrl="~/Image/img_fjords.jpg" OnClick="ImageButton1_Click" Width="184px" />
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>

    </div>
    <div class="col-md-6">
        <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
        <asp:TextBox ID="dateOutTextBox1" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="29px" ImageUrl="~/Image/img_fjords.jpg" OnClick="ImageButton2_Click" Width="184px" />
        <asp:Calendar ID="Calendar2" runat="server" Visible="False" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>

    </div>
   </asp:Content>
