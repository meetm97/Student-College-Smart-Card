<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddMarks.aspx.cs" Inherits="AddMarks" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Add Documents"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Student Id  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
            Width="79px" onselectedindexchanged="DropDownList3_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Panel ID="Panel4" runat="server" Height="253px" Visible="False">
            <asp:Label ID="Label18" runat="server" Text="Photo  :- "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox14" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button12" runat="server" onclick="Button12_Click" Text="Add" 
                Width="41px" />
            &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<br />
            <asp:Label ID="Label10" runat="server" Text="Birth Certificate  :- "></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Add" 
                onclick="Button2_Click" />
            &nbsp;<asp:FileUpload ID="FileUpload2" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Cast Certificate  :- "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="Add" 
                onclick="Button3_Click" />
            &nbsp;<asp:FileUpload ID="FileUpload3" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="SSC Passing  :- "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="100px" ReadOnly="True" 
                Height="22px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="Add" 
                onclick="Button4_Click" />
            &nbsp;<asp:FileUpload ID="FileUpload4" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="SSC Leaving  :- "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" Text="Add" 
                onclick="Button5_Click" />
            &nbsp;<asp:FileUpload ID="FileUpload5" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel5" runat="server" Height="83px" Visible="False">
            <asp:Label ID="Label12" runat="server" Text="HSC Passing  :- "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button6" runat="server" Text="Add" 
                onclick="Button6_Click" />
            &nbsp;<asp:FileUpload ID="FileUpload6" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label13" runat="server" Text="HSC Leaving  :- "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox8" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button7" runat="server" Text="Add" 
                onclick="Button7_Click" />
            &nbsp;<asp:FileUpload ID="FileUpload7" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel6" runat="server" Height="80px" Visible="False">
            <asp:Label ID="Label14" runat="server" Text="Graduation Passing  :-"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox13" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" Text="Add" 
                onclick="Button8_Click" />
            &nbsp;<asp:FileUpload ID="FileUpload8" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label15" runat="server" Text="Graduation Leaving  :- "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox10" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button9" runat="server" Text="Add" 
                onclick="Button9_Click" />
            &nbsp;<asp:FileUpload ID="FileUpload9" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel7" runat="server" Height="83px" Visible="False">
            <asp:Label ID="Label16" runat="server" 
    Text="Post-Graduation Passing  :- "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox11" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button10" runat="server" Text="Add" 
                onclick="Button10_Click" />
            &nbsp;<asp:FileUpload ID="FileUpload10" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label17" runat="server" 
    Text="Post-Graduation Leaving  :- "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox12" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button11" runat="server" Text="Add" 
                onclick="Button11_Click" />
            &nbsp;<asp:FileUpload ID="FileUpload11" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>
