<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="MobilePhone.aspx.cs" Inherits="WebApplication6.MobilePhone" %>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
   
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatColumns="6" RepeatDirection="Horizontal" Height="313px" 
    onitemcommand="DataList1_ItemCommand" Width="1289px" style="margin-left: 43px" 
      >
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label2" runat="server" style="text-align: center" 
                            Text='<%# Eval("prodid") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("prodname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Image ID="Image1" runat="server" Height="150px" Width="100px" ImageUrl='<%# Eval("prodimage") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Price:<asp:Label ID="Label4" runat="server" Text='<%# Eval("prodprice") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Qty:<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Add To Cart" 
                            CommandArgument='<%# Eval("prodid")%>' CommandName="addtocart" />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [mobiledb]"></asp:SqlDataSource>
</asp:Content>

