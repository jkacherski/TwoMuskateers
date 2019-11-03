<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Engie_HackOHIO.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>What is a kilowatt hour?</h1>
        <p class="lead">A kilowatt hour is simply a measure of how much energy you are using. That doesn't mean you are using 1kw an hour. It is the amount of energy you are using if you were to use a 1000 watt appliance for one hour.</p>
        <p>Try our calculator to see what a kWh is going to cost you</p>
    </div>
    <div class="jumbotron">
        <h1>What is a BTU?</h1>
        <p class="lead">You may see a BTU number on your heater or air conditioner but what does it mean?</p>
        <p>Formally,it is the amount of energy required to heat 1 pound of water 1 degree farenheit. That doesnt mean much to the average person, but think of it as how much energy it takes to heat or cool something.</p>
        <p>Now that you know what a kilowatt hour means in terms of something that matters to you ($), try converting your BTUs to kWh or even straight to $!</p>
    </div>
    <div class="jumbotron">
        <div class ="row">
            <div style="text-align:center" class ="col-md-4">
                <p style="text-align:center">BTU</p>
                <asp:TextBox ID="input1"  Text="" runat ="server" OnTextChanged ="input_TextChanged"></asp:TextBox>
                <p></p>
                <asp:TextBox ID="output1" style="" Text="" runat ="server" ReadOnly="true"></asp:TextBox>
                <p style="text-align:center">Dollar</p>
            </div>
            <div style="text-align:center" class ="col-md-4">
                <p style="text-align:center">kWh</p>
                <asp:TextBox ID="input2" Text="" runat ="server" OnTextChanged ="input_TextChanged"></asp:TextBox>
                <p></p>
                <asp:TextBox ID="output2" Text="" runat ="server" ReadOnly="true"></asp:TextBox>
                <p style="text-align:center">Dollar</p>
            </div>
            <div style="text-align:center" class ="col-md-4">
                <p style="text-align:center">kWh</p>
                 <asp:TextBox ID="input3" Text="" runat ="server" OnTextChanged ="input_TextChanged"></asp:TextBox>
                <p></p>
                <asp:TextBox ID="output3" Text="" runat ="server" ReadOnly="true"></asp:TextBox>
                <p style="text-align:center">BTU</p>
            </div>
        </div>
     </div>
    <div class="jumbotron">
        <div class="row">
            <asp:DropDownList ID="ddlUnitsTop" runat="server" CssClass="theme-list" AutoPostBack="true" OnSelectedIndexChanged="ddlUnitsTop_SelectedIndexChanged">
                <asp:ListItem Text="kWh" Value="kWh"></asp:ListItem>
                <asp:ListItem Text="kBTU" Value="kBTU"></asp:ListItem>
                <asp:ListItem Text="USD" Value="USD"></asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtCalcTop" Text="1" runat="server" OnTextChanged="txtCalcTop_TextChanged"></asp:TextBox>
        </div>
        <div class="row">
            <asp:DropDownList ID="ddlUnitsBot" runat="server" CssClass="theme-list" AutoPostBack="true" OnSelectedIndexChanged="ddlUnitsBot_SelectedIndexChanged">
                <asp:ListItem Text="USD" Value="USD"></asp:ListItem>
                <asp:ListItem Text="kWh" Value="kWh"></asp:ListItem>
                <asp:ListItem Text="kBTU" Value="kBTU"></asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtCalcBot" Text="0.131" runat="server" OnTextChanged="txtCalcBot_TextChanged"></asp:TextBox>
        </div>
    </div>
</asp:Content>
