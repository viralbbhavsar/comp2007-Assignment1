<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="gameCalculator.ascx.cs" Inherits="gameCalculator_Assignment1.gameCalculator1" %>

<div class="form-group">

    <div>
        <label for="rblResult" class="control-label">Result:</label>

        <asp:RadioButtonList ID="rblResult" runat="server">
            <asp:ListItem Text="Win"></asp:ListItem>
            <asp:ListItem Text="Loss"></asp:ListItem >
        </asp:RadioButtonList>
    </div>

    <div>
        <label for="txtScored" class="control-label">Scored:</label>    
        <asp:TextBox ID="txtScored" runat="server" TextMode="Number" CssClass="txtbox" required/>
    </div>

    <div>
        <label for="txtAllowed" class="control-label">Allowed:</label>    
        <asp:TextBox ID="txtAllowed" runat="server" TextMode="Number" CssClass="txtbox" required/>
    </div>

    <div>
        <label for="txtSpectator" class="control-label">Spectators:</label>    
        <asp:TextBox ID="txtSpectator" runat="server" TextMode="Number" CssClass="txtbox" required/>
    </div>
    <div></div>
    <div></div>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Result must be Selected" CssClass="alert alert-danger" ControlToValidate="rblResult" Display="Dynamic" ></asp:RequiredFieldValidator>

        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="Scored must be 0 or Higher" MinimumValue="0" MaximumValue="999999999"
            CssClass="alert alert-danger" ControlToValidate="txtScored" Type="Double" Display="Dynamic"></asp:RangeValidator>

        <asp:RangeValidator ID="RangeValidator2" runat="server" 
            ErrorMessage="Allowed must be 0 or Higher" MinimumValue="0" MaximumValue="999999999"
            CssClass="alert alert-danger" ControlToValidate="txtAllowed" Type="Double" Display="Dynamic"></asp:RangeValidator>


        <asp:RangeValidator ID="RangeValidator3" runat="server" 
            ErrorMessage="Spectator must be 0 or Higher" MinimumValue="0" MaximumValue="999999999"
            CssClass="alert alert-danger" ControlToValidate="txtSpectator" Type="Double" Display="Dynamic"></asp:RangeValidator>

        <asp:CompareValidator ID="CompareValidator1" runat="server"
            ErrorMessage="For and Against must be different" Operator="NotEqual" type="Integer" 
            CssClass="alert alert-danger" ControlToValidate="txtAllowed" ControlToCompare="txtScored" Display="Dynamic"></asp:CompareValidator>
    </div>

</div>