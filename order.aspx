<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="WebApplication6.order" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div style="height: 606px">
    <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" 
        >Congratulation!</asp:Label>
    <asp:LoginName ID="LoginName2" runat="server" Font-Size="XX-Large" />
&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="XX-Large" 
        Text="Your Order has been successfully Placed"></asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
        Font-Size="X-Large" ForeColor="#660066" NavigateUrl="~/Default.aspx">Continue Shopping</asp:HyperLink>
    
    
</div>
</asp:Content>
