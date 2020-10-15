<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SBal.aspx.cs" Inherits="SBal" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        Text="Add Balance"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Balance  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Amount  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Credit Card No  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" MaxLength="16"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;
    <asp:Label ID="Label5" runat="server" Text="CVV No  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" MaxLength="3"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Expiry Date  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox5" runat="server" Width="56px" MaxLength="2"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="54px" MaxLength="2"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    <br />
        <br />
        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
    <br />

</div>
</asp:Content>