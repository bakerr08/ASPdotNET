<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="DVDCentral.details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="DefaultSize" id="GumBallDetails">
        <div class="LogoContainer">
            <img alt="dvd case" src="/images/TMNT.jpg" height="150" width="150" />
        </div>

        <div class="DetailsContainer">
            <h3>Teenage Mutant Ninja Turtles</h3>
            <p>
                <br />
                Format: DVD<br />
                Rating: PG<br />
                Price: $19.99<br />
                Description: A quartet of mutated humanoid turtles clash with an uprising criminal gang of ninjas.<br />
            </p>
            <br />
            <input type="button" value="Add To Cart" />
        </div>
        <p></p>
    </div>
</asp:Content>
