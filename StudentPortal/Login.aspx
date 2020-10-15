<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
        
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="146px" 
            ImageUrl="~/images/admin.png" Width="147px" onclick="ImageButton1_Click" />
&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton6" runat="server" Height="146px" 
            ImageUrl="~/images/Office.png" Width="147px" 
            onclick="ImageButton6_Click" />
        &nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="146px" 
            ImageUrl="~/images/lib.png" Width="147px" onclick="ImageButton2_Click" />
&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton3" runat="server" Height="146px" 
            ImageUrl="~/images/Canteen.bmp" Width="176px" 
            onclick="ImageButton3_Click" />
&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton4" runat="server" Height="150px" 
            ImageUrl="~/images/stationeryae.png" Width="168px" 
            onclick="ImageButton4_Click" />
&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton5" runat="server" Height="146px" 
            ImageUrl="~/images/student.png" Width="147px" 
            onclick="ImageButton5_Click" />
        <br />
        <br />
        
    </div>
</asp:Content>