<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true"
 CodeBehind="Login.aspx.cs" Inherits="WebApplication6.login1" %>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    
        <asp:Login ID="LoginPage"  CreateUserText="register" OnAuthenticate="login_Authenticate" 
            CreateUserUrl="Register.aspx" runat="server" BackColor="#EFF3FB" 
            BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="181px" 
            Width="339px" style="margin-left: 471px"  >
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LayoutTemplate>
        <asp:Label
        id="FailureText" EnableViewState="false" Font-Size="Large" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblUserName" Text="Username" Font-Size="Large" runat="server" AssociatedControlID="UserName"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="UserName" runat="server" Height="23px" Width="140px" />
            <br />
            <br />
            <br />
        <asp:Label ID="lblPassword" Font-Size="Large" Text="Password" runat="server" AssociatedControlID="Password"></asp:Label>
            &nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;<asp:TextBox ID="Password" TextMode="Password"  runat="server" Height="23px" 
                Width="140px" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Login" Text="Login" CommandName="Login" runat="server" 
                Height="26px" Width="91px" Font-Bold="True" Font-Size="Large" />
        </LayoutTemplate>
            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#284E98" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:Login>

    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        New User? Ckick Here For&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
            Font-Size="X-Large" NavigateUrl="~/register.aspx">Register</asp:HyperLink>

    
        <br />

    
    </div>
   
</asp:Content>
