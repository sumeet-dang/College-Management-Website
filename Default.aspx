<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
        <ContentTemplate>
        <asp:AdRotator runat="server" ID="Rotator1" AdvertisementFile="~/App_Data/CollegeAds.xml" Height="300px" Width="690px">            
        </asp:AdRotator>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
            <asp:Timer ID="Timer1" runat="server" Interval="3000"></asp:Timer>
    </ContentTemplate>
            </asp:UpdatePanel>
    <asp:UpdatePanelAnimationExtender ID="UPAE1" TargetControlID="UpdatePanel1" runat="server" BehaviorID="animation">
        <Animations>
           <OnUpdating>
                 <FadeOut Duration="2.5" Fps="20" minimumOpacity=".1" />           
           </OnUpdating>
            
<OnUpdated>          
           <FadeIn Duration="2.5" Fps="20" minimumOpacity=".1" />
    </OnUpdated>
        </Animations>
    </asp:UpdatePanelAnimationExtender>
    
    
</asp:Content>

