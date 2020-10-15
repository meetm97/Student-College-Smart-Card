<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="New_Transaction.aspx.cs" Inherits="New_Transaction" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        Text="New Transaction"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Student ID :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
    <br />
    <br />
    <asp:Panel ID="Panel4" runat="server" Height="242px" Visible="False">
        <br />
        <asp:Label ID="Label4" runat="server" Text="Balance  :-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;<asp:Label ID="Label3" runat="server" Text="Rs  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Note  :-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Height="39px" TextMode="MultiLine" 
            Width="148px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Pay" 
            Width="60px" />
        &nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Clear" 
            Width="54px" />
    </asp:Panel>
    <br />

</div>
</asp:Content>