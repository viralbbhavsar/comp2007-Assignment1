<%@ Page Title="" Language="C#" MasterPageFile="~/gameCalculator.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="gameCalculator_Assignment1._default" %>
<%@ Register Src="~/gameCalculator.ascx" TagPrefix="uc" TagName="gameCalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="form-group">
        <h4>Game 1</h4>
        <uc:gameCalculator id="gameCalculator1" runat="server" />

    </div>

    <div class="form-group">
        <h4>Game 2</h4>
        <uc:gameCalculator id="gameCalculator2" runat="server" />
    </div>

    <div class="form-group">
        <h4>Game 3</h4>
        <uc:gameCalculator id="gameCalculator3" runat="server" />
    </div>

    <div class="form-group">
        <h4>Game 4</h4>
        <uc:gameCalculator id="gameCalculator4" runat="server" />
    </div>

    <div></div>
    <div></div>
    <br />
    <div>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Totals" CssClass="btn" OnClick="btnCalculate_Click"/>
    </div>

    <div>
        <h2>Result:</h2>
    </div>

    <div>
        Wins:<asp:Label ID="lblWin" runat="server"> </asp:Label>
    </div>
    <div>
        Losses:<asp:Label ID="lblLoss" runat="server"> </asp:Label>
    </div>
    <div>
        Winning (%):<asp:Label ID="lblWinning" runat="server"> </asp:Label>
    </div>
    <div>
        Points Scored:<asp:Label ID="lblPtsScored" runat="server"> </asp:Label>
    </div>
    <div>
        Points Allowed:<asp:Label ID="lblPtsAllowed" runat="server"> </asp:Label>
    </div>
    <div>
        Point Differential:<asp:Label ID="lblPtsDifferential" runat="server"> </asp:Label>
    </div>
    <div>
        Total Attendance:<asp:Label ID="lblAttendance" runat="server"> </asp:Label>
    </div>
    <div>
        Average Attendance:<asp:Label ID="lblAvgAttendance" runat="server"> </asp:Label>
    </div>

</asp:Content>
