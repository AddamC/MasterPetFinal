<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Carrinho.aspx.cs" Inherits="Carrinho" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            width: 162px;
        }
    .auto-style15 {
        width: 380px;
        height: 116px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
<img class="auto-style15" src="Imagens/Carrinho_banner.png" /><br />
<br />
    <table class="auto-style13">
        <tr>
            <td>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
        <asp:BoundField DataField="raca" HeaderText="raca" SortExpression="raca" />
        <asp:BoundField DataField="especie" HeaderText="especie" SortExpression="especie" />
        <asp:BoundField DataField="cor" HeaderText="cor" SortExpression="cor" />
        <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
        <asp:BoundField DataField="nascimento" HeaderText="nascimento" SortExpression="nascimento" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
            </td>
            <td class="auto-style14">
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
        <asp:BoundField DataField="endereco" HeaderText="endereco" SortExpression="endereco" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
            </td>
            <td>
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
        <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
            </td>
        </tr>
    </table>
    <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PETSHOPConnectionString %>" SelectCommand="SELECT * FROM [Animais]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PETSHOPConnectionString %>" SelectCommand="SELECT [nome], [endereco] FROM [Clientes]"></asp:SqlDataSource>
<br />
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PETSHOPConnectionString %>" SelectCommand="SELECT [descricao], [preco] FROM [Tipo_Tratamentos]"></asp:SqlDataSource>
    <br />
    <table border="1" class="auto-style13" style="background-color: #F2CD5E; font-family: Consolas; font-size: large; font-weight: normal;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Animal: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblAnimal" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Cliente: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblCliente" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Tratamentos: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTratamentos" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Valor: "></asp:Label>
&nbsp;R$<asp:TextBox ID="txtPreco" runat="server"></asp:TextBox>
    <br />
<asp:Label ID="lblErro" runat="server"></asp:Label>
<br />
    <br />
    <asp:Button ID="btnConfirmar" runat="server" OnClick="btnConfirmar_Click" Text="Confirmar" />
    <br />
    <br />
    <br />
    <br />
    <br />
<br />
<br />
</asp:Content>

