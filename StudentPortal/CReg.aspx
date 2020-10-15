<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CReg.aspx.cs" Inherits="CReg" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
        <asp:Label ID="Label2" runat="server" Text="User ID  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Address  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="61px" TextMode="MultiLine" 
            Width="293px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Mobile No  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Email  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label7" runat="server" Text="Max Qualification  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>SSC</asp:ListItem>
            <asp:ListItem>HSC</asp:ListItem>
            <asp:ListItem>Graduate</asp:ListItem>
            <asp:ListItem>Post Graduate</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Add Documents" Visible="False" />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>