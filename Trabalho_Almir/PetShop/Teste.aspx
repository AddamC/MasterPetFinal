<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Teste.aspx.cs" Inherits="Teste" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style13 {
        width: 662px;
        height: 261px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<img class="auto-style13" src="Imagens/Dados_banner.png" /><br />
    <br />
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PETSHOPConnectionString %>" SelectCommand="SELECT [nome], [nascimento], [endereco] FROM [Clientes] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="3" DataSourceID="SqlDataSource4" Height="50px" Width="131px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="nome" HeaderText="Nome:" SortExpression="nome" />
            <asp:BoundField DataField="endereco" HeaderText="Endereço:" SortExpression="endereco" />
            <asp:BoundField DataField="nascimento" HeaderText="Nascimento:" SortExpression="nascimento" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:PETSHOPConnectionString %>" SelectCommand="SELECT * FROM [Animais] WHERE ([idClientes] = @idClientes2)">
        <SelectParameters>
            <asp:QueryStringParameter Name="idClientes2" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource5" Height="50px" Width="125px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="ID:" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nome" HeaderText="Nome:" SortExpression="nome" />
            <asp:BoundField DataField="raca" HeaderText="Raça:" SortExpression="raca" />
            <asp:BoundField DataField="especie" HeaderText="Espécie:" SortExpression="especie" />
            <asp:BoundField DataField="cor" HeaderText="Cor:" SortExpression="cor" />
            <asp:BoundField DataField="sexo" HeaderText="Sexo:" SortExpression="sexo" />
            <asp:BoundField DataField="nascimento" HeaderText="Nascimento:" SortExpression="nascimento" />
            <asp:BoundField DataField="idClientes" HeaderText="idClientes" SortExpression="idClientes" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <br />
<asp:Button ID="btnRetornar" runat="server" OnClick="btnRetornar_Click" Text="Retornar" />
    <br />
</asp:Content>

