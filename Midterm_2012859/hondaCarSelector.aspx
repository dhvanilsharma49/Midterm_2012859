<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hondaCarSelector.aspx.cs" Inherits="Midterm_2012859.hondaCarSelector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hondi Car Selector</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            
        }
        .auto-style2 {
            width: 417px;
        }
        .auto-style3 {
            width: 400px;
        }
        .auto-style4 {
            height: 55px;
            width: 97px;
        }
        .auto-style6 {
            width: 273px;
          
        }
        .auto-style7 {
            height: 55px;
            width: 273px;
        }
        .auto-style8 {
            margin-top: 0px;
             border-radius:50px;
            margin-left: 30px;
        }
        .auto-style10 {
            width: 130px;
        }
        .auto-style11 {
            width: 500px;
            background-color: #EED971FF;
        }
        .auto-style12 {
            height: 116px;
        }
        .stylePanel {
            border-radius:50px;
        }
        .tecboc {
           border-radius:10px;
        }
        .auto-style15 {
            margin-top: 15px;
             border-radius:50px;
            margin-left: 29px;
        }
        .auto-style16 {
            height: 42px;
            width: 97px;
        }
        .auto-style17 {
            height: 35px;
            width: 273px;
        }
        .auto-style18 {
            margin-left: 155px;
        }
    </style>

</head>
<body style="background-color:#FFA351FF;">


    <form id="form1" runat="server">
        <div>

            <h1 class="auto-style1">Hondi Build & Price</h1>

        </div>
        <hr class="auto-style2" />
        
        <br />
        <table class="auto-style11">
            <tr style="vertical-align:top;">
                <td class="auto-style12">
        
        <asp:Panel ID="panBuild" runat="server" CssClass="stylePanel" style="background-color:#A2A2A1FF;" GroupingText="Car Informations"  Width="400px" Height="480px">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblCity" runat="server" AccessKey="c" AssociatedControlID="txtCity" Text="Your City "></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="tecboc" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblZipCode" runat="server" AccessKey="t" AssociatedControlID="txtZipCode" Text="Zip Code "></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtZipCode" runat="server" CssClass="tecboc" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblModel" runat="server" Text="Select Car Model "></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="cboModel" runat="server" CssClass="tecboc" AutoPostBack="True" OnSelectedIndexChanged="cboModel_SelectedIndexChanged" Width="207px">
                            <asp:ListItem>Select a Car</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="lblInteriorColor" runat="server" Text="Interior Color "></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:ListBox ID="lstInteriorColor" runat="server" CssClass="tecboc" AutoPostBack="True" Height ="70px" Width="207px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblAccessories" runat="server" Text="Accessories "></asp:Label>
                    </td>
                    <td class="auto-style6">
                        
                        <asp:CheckBoxList ID="chklstAccessories" runat="server" AutoPostBack="True">
                        </asp:CheckBoxList>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblWarranty" runat="server" Text="Warranty "></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButtonList ID="radlstWarranty" runat="server" AutoPostBack="True">
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblPhone" runat="server" Text="Dealer Contact you by Phone ?"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:CheckBox ID="chkPhone" runat="server" AutoPostBack="True" OnCheckedChanged="chkPhone_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number "></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPhoneNumber" runat="server" Height="25px" CssClass="tecboc"  Width="200px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </asp:Panel>
                </td>
                <td class="auto-style12">
            <asp:Panel ID="panPriceResume" runat="server"  GroupingText="Price Resume" style="background-color:#A2A2A1FF;" Height="300px" Width="269px" CssClass="auto-style8">
                <asp:Literal ID="litPriceResume" runat="server"></asp:Literal>
                <asp:Button ID="btnConclude" runat="server" Text="Conclude" OnClick="btnConclude_Click" CssClass="auto-style18" />
            </asp:Panel>
                    <br />
                    <asp:Panel ID="panFinalInformation" runat="server" CssClass="auto-style15" GroupingText="Final Information" style="background-color:#A2A2A1FF;" Height="183px" Width="269px">
                        <asp:Literal ID="litFinalInformation" runat="server"></asp:Literal>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
