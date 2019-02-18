<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" 
CodeBehind="search.aspx.cs" Inherits="WebApplication6.search" %>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" Height="235px" 
        RepeatDirection="Horizontal" Width="1043px" 
        onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("prodid") %>'></asp:Label>
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qty:<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("prodid")%>' CommandName="addtocart" Text="Add To Cart"  />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
        }
    </style>
</asp:Content>

