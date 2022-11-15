<%@ Page Title="Student Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentRegistration._Default" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding:15px; height: 461px;">
        <table class="nav-justified">
            <tr>
                <td colspan="3" style="height: 31px; font-size: x-large; font-weight: bold; color: #333333;">Student Registration Form</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 358px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Student ID"></asp:Label>
                </td>
                <td style="width: 358px">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnGet" runat="server" BackColor="#333333" ForeColor="White" Height="31px" OnClick="btnGet_Click" Text="Get" Width="100px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Student Name"></asp:Label>
                </td>
                <td style="width: 358px">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnInsert" runat="server" BackColor="#333333" ForeColor="White" Height="31px" OnClick="btnInsert_Click" Text="Insert" Width="100px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Gender"></asp:Label>
                </td>
                <td style="width: 358px">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" BackColor="#333333" ForeColor="White" Height="31px" OnClick="btnUpdate_Click" Text="Update" Width="100px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="DOB"></asp:Label>
                </td>
                <td style="width: 358px">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" BackColor="#333333" ForeColor="White" Height="31px" OnClick="btnDelete_Click" Text="Delete" Width="100px" OnClientClick="return confirm('Are you sure?');" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="City"></asp:Label>
                </td>
                <td style="width: 358px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="200px">
                        <asp:ListItem>Rathnapura</asp:ListItem>
                        <asp:ListItem>Colombo</asp:ListItem>
                        <asp:ListItem>Gampaha</asp:ListItem>
                        <asp:ListItem>Kalutara</asp:ListItem>
                        <asp:ListItem>Galle</asp:ListItem>
                        <asp:ListItem>Matara</asp:ListItem>
                        <asp:ListItem>Puttalam</asp:ListItem>
                        <asp:ListItem>Kurunegala</asp:ListItem>
                        <asp:ListItem>Kandy</asp:ListItem>
                        <asp:ListItem>Vavuniya	</asp:ListItem>
                        <asp:ListItem>Jaffna</asp:ListItem>
                        <asp:ListItem>Trincomalee</asp:ListItem>
                        <asp:ListItem>Matale</asp:ListItem>
                        <asp:ListItem>Badulla</asp:ListItem>
                        <asp:ListItem>Kurunegala</asp:ListItem>
                        <asp:ListItem>Mannar</asp:ListItem>
                        <asp:ListItem>Anuradhapura</asp:ListItem>
                        <asp:ListItem>Polonnaruwa</asp:ListItem>
                        <asp:ListItem>Nuwara Eliya</asp:ListItem>
                        <asp:ListItem>Kegalle</asp:ListItem>
                        <asp:ListItem>Batticaloa</asp:ListItem>
                        <asp:ListItem>Ampara</asp:ListItem>
                        <asp:ListItem>Monaragala</asp:ListItem>
                        <asp:ListItem>Hambantota</asp:ListItem>
                        <asp:ListItem>Kilinochchi</asp:ListItem>
                        <asp:ListItem>Mullaitivu</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnLoad" runat="server" BackColor="#333333" ForeColor="White" Height="31px" OnClick="btnLoad_Click" Text="Load" Width="100px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Number"></asp:Label>
                </td>
                <td style="width: 358px">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 358px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 358px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 358px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" Width="870px">
                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        
    </div>

</asp:Content>
