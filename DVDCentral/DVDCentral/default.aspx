<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DVDCentral._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    
    <div class="DefaultSize" id="GumBallList">
        <div class="GumBallcontainer">
            <img alt="dvd case" src="/images/TMNT.jpg" height="60" width="60" />
            <a href="details.aspx">Teenage Mutant Ninja Turtles</a>
            <p class="discription">A quartet of mutated humanoid turtles clash with an uprising criminal gang of ninjas.</p>
            <p class="spacer"></p>
            <hr />
        </div>

        <div class="GumBallcontainer">
            <img alt="dvd case" src="/images/HowardTheDuck.jpg" height="60" width="60" />
            <a href="details.aspx">Howard The Duck</a>
            <p class="discription">A sarcastic humanoid duck is pulled from his homeworld to Earth where he must stop an alien invader.</p>
            <p class="spacer"></p>
            <hr />
        </div>

        <div class="GumBallcontainer">
            <img alt="dvd case" src="/images/SuperMarioBros.jpg" height="60" width="60" />
            <a href="details.aspx">Super Mario Bros</a>
            <p class="discription">The Marios rush to save a princess from Koopa.</p>
            <p class="spacer"></p>
            <hr />
        </div>
    </div>
</asp:Content>
