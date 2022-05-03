<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ueberlagerte Ware.aspx.cs" Inherits="Abfall.Ueberlagerte_Ware" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<!--Mobile Version Meta-->
<meta name="viewport" content="width=device-width" />

<link rel="stylesheet" href="Content/bootstrap.css"/>
<link rel="stylesheet" href="Content/bootstrap.min.css"/>

<script src="Scripts/bootstrap.js"></script>
<script src="Scripts/bootstrap.js"></script>
<script src="Scripts/jquery-3.3.1.js"></script>
<script src="Scripts/jquery-3.3.1.min.js"></script>



    <title>Überlagerte Ware</title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">

            <label for="exampleInputEmail1">Produkt</label>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RFV1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator><br />

            <label for="exampleInputEmail1">Charge</label>
            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RFV2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator><br />

            <label for="exampleInputEmail1">Grund</label>
            <asp:TextBox ID="TextBox3" runat="server" class="form-control" Height="170px" TextMode="MultiLine" Width="1062px"></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RFV3" ControlToValidate="TextBox3" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator><br />

            <label for="exampleInputEmail1">Gebindeinhalt [kg]</label>
            <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RFV4" ControlToValidate="TextBox4" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator><br />

            <label for="exampleInputEmail1">Anzahl Gebinde</label>
            <asp:TextBox ID="TextBox5" runat="server" class="form-control" OnTextChanged="TextBox5_TextChanged" AutoPostBack="True"></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RFV5" ControlToValidate="TextBox5" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator><br />

            <label for="exampleInputEmail1">Menge [kg]</label>
            <asp:TextBox ID="TextBox6" runat="server" class="form-control" ></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RFV6" ControlToValidate="TextBox6" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator><br />

            <label for="exampleInputEmail1">Abfallart</label>
            <asp:DropDownList ID="Dropdownlist1" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Lackabfall lösemittelhaltig</asp:ListItem>
                <asp:ListItem>Lackabfall wässrig</asp:ListItem>
                <asp:ListItem>Rohstoffe</asp:ListItem>
                <asp:ListItem>Isocyanate</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RFV7" runat="server" ControlToValidate="Dropdownlist1" InitialValue="Please select" ErrorMessage="Please select something" /><br />

            <br /><br />

            <asp:Button class="btn btn-default" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

            <br /><br />

            <asp:GridView ID="GridView1" runat="server" Width="90%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" >
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>


        </div>
    </form>
</body>
</html>
