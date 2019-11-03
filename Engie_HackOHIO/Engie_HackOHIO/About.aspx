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
            <div class ="col-md-4">
                <p>BTU</p>
                <asp:TextBox ID="input1" Text="" runat ="server" OnTextChanged ="input_TextChanged"></asp:TextBox>
                <p></p>
                <asp:TextBox ID="output1" Text="" runat ="server" ReadOnly="true"></asp:TextBox>
                <p>Dollar</p>
            </div>
            <div class ="col-md-4">
                <p>kWh</p>
                <asp:TextBox ID="input2" Text="" runat ="server" OnTextChanged ="input_TextChanged"></asp:TextBox>
                <p></p>
                <asp:TextBox ID="output2" Text="" runat ="server" ReadOnly="true"></asp:TextBox>
                <p>Dollar</p>
            </div>
            <div class ="col-md-4">
                <p>kWh</p>
                 <asp:TextBox ID="input3" Text="" runat ="server" OnTextChanged ="input_TextChanged"></asp:TextBox>
                <p></p>
                <asp:TextBox ID="output3" Text="" runat ="server" ReadOnly="true"></asp:TextBox>
                <p>BTU</p>
            </div>
        </div>
     </div>
</asp:Content>
