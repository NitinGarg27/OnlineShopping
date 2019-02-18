<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication6.register" %>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="style2" style="height: 571px">   
         <br style="text-align: left" />
         <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="XX-Large" 
             Text="Registeration "></asp:Label>
         <br />
         <br />
         <br />
         <asp:Label ID="ErrorMessage" ForeColor="Red" Runat="server"/>
                <br />
                <asp:Label ID="lblusername" Text="Username" runat="server" 
             Font-Size="Larger"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="UserName" runat="server" Height="23px" Width="178px"></asp:TextBox>
                    <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="UserName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
               <asp:Label ID="lblpassword" Text="Password" runat="server" 
             Font-Size="Larger"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Password" TextMode="Password" runat="server" 
            Height="23px" Width="178px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ControlToValidate="Password" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
         <br />
               <asp:Label ID="lblpassword1" Text="Repeat Password" runat="server" 
             Font-Size="Larger"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ConfirmPassword" TextMode="Password" runat="server" 
          Height="23px" Width="178px"></asp:TextBox>
                    <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
             ControlToValidate="ConfirmPassword" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
         <asp:CompareValidator ID="CompareValidator1" runat="server" 
             ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
             ErrorMessage="CompareValidator"></asp:CompareValidator>
         <br />
              <asp:Label ID="lblemail" Text="Email:" runat="server" Font-Size="Larger"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Email" runat="server" Height="23px" Width="178px"></asp:TextBox>
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
             ControlToValidate="Email" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
&nbsp;
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
             ControlToValidate="Email" ErrorMessage="RegularExpressionValidator" 
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         <br />
                <asp:Label ID="lblmobile" Text="Phone No" runat="server" 
             Font-Size="Larger"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="mobile" runat="server" Height="23px" Width="178px"></asp:TextBox>
              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
             ControlToValidate="mobile" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
         <br />
         <br />
              <asp:Button ID="createuser" Text="Register" runat="server" CommandName="CreateUser" 
                        onclick="createuser_Click" Font-Bold="True" Font-Size="X-Large" 
             Height="33px" style="margin-left: 37px" Width="146px" />
               
    
    </div> 
   </asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="head">
</asp:Content>
