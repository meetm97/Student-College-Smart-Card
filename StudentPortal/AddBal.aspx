<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddBal.aspx.cs" Inherits="AddBal" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <div>
    

        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        Text="Add Balance"></asp:Label>
    <br />
        <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Student ID  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
    <br />
    <br />
    <asp:Panel ID="Panel4" runat="server" Height="200px" Visible="False">
        <br />
        <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Balance  :-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Rs  :-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
    </asp:Panel>
    <br />
    <br />
    

</div>

</asp:Content>