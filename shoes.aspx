<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true"
 CodeBehind="shoes.aspx.cs" Inherits="WebApplication6.shoes" %>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Both" Height="282px" onitemcommand="DataList1_ItemCommand" 
        RepeatColumns="5" RepeatDirection="Horizontal" Width="1293px">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
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
                        <asp:Image ID="Image1" runat="server" Height="150px" 
                            ImageUrl='<%# Eval("prodimage") %>' Width="100px" />
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
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" 
                            CommandArgument='<%# Eval("prodid")%>' CommandName="addtocart" 
                            Text="Add To Cart"  />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [shoesdb]"></asp:SqlDataSource>

</asp:Content>



