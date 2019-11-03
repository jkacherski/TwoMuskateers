<%@ Page Title="Energy Data Visualization Tool" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataVisualizer.aspx.cs" Inherits="Engie_HackOHIO.DataVisualizer"%>

<asp:Content ID="DataContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="pnlMain" runat="server">
        <asp:Panel ID="pnlHead" runat="server">
            <div style="width: 100%; float: left; margin: 10px 0px;">
                <h3 style="float: left;">tOSU Energy Visualization Tool</h3>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlFilters" runat="server">
            <asp:DropDownList ID="ddlTheme" runat="server" CssClass="theme-list" AutoPostBack="true" OnSelectedIndexChanged="ddlTheme_SelectedIndexChanged">
                <asp:ListItem Text="Select a Theme..." Value="" style="display: none;"></asp:ListItem>
                <asp:ListItem Text="Default" Value="Default"></asp:ListItem>
                <asp:ListItem Text="Fire" Value="Fire"></asp:ListItem>
                <asp:ListItem Text="Earth" Value="EarthTones"></asp:ListItem>
                <asp:ListItem Text="Pastel" Value="Pastel"></asp:ListItem>
                <asp:ListItem Text="Sea Green" Value="SeaGreen"></asp:ListItem>
                <asp:ListItem Text="Chocolate" Value="Chocolate"></asp:ListItem>
                <asp:ListItem Text="Bright" Value="Bright"></asp:ListItem>
                <asp:ListItem Text="Pacific" Value="Pacific"></asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
        <asp:Panel ID="pnlChart" runat="server">
            <div id="mainChart" class="chart">
                <div class="title"></div>
                <div class="chart-container"></div>
            </div>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
