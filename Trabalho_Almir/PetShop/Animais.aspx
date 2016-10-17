<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Animais.aspx.cs" Inherits="Animais" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 280px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
        width: 356px;
        height: 127px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p class="auto-style14">
        <img class="auto-style15" src="Imagens/animais_banner.png" /></p>
<p>
        &nbsp;</p>
<p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
                <asp:BoundField DataField="raca" HeaderText="Raça" SortExpression="raca" />
                <asp:BoundField DataField="especie" HeaderText="Espécie" SortExpression="especie" />
                <asp:BoundField DataField="cor" HeaderText="Cor" SortExpression="cor" />
                <asp:BoundField DataField="sexo" HeaderText="Sexo" SortExpression="sexo" />
                <asp:BoundField DataField="nascimento" HeaderText="Nascimento" SortExpression="nascimento" />
                <asp:BoundField DataField="idClientes" HeaderText="idClientes" SortExpression="idClientes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=PETSHOP;Integrated Security=True" DeleteCommand="DELETE FROM [Animais] WHERE [id] = @id" InsertCommand="INSERT INTO [Animais] ([nome], [raca], [especie], [cor], [sexo], [nascimento], [idClientes]) VALUES (@nome, @raca, @especie, @cor, @sexo, @nascimento, @idClientes)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Animais]" UpdateCommand="UPDATE [Animais] SET [nome] = @nome, [raca] = @raca, [especie] = @especie, [cor] = @cor, [sexo] = @sexo, [nascimento] = @nascimento, [idClientes] = @idClientes WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="raca" Type="String" />
                <asp:Parameter Name="especie" Type="String" />
                <asp:Parameter Name="cor" Type="String" />
                <asp:Parameter Name="sexo" Type="String" />
                <asp:Parameter Name="nascimento" Type="DateTime" />
                <asp:Parameter Name="idClientes" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="raca" Type="String" />
                <asp:Parameter Name="especie" Type="String" />
                <asp:Parameter Name="cor" Type="String" />
                <asp:Parameter Name="sexo" Type="String" />
                <asp:Parameter Name="nascimento" Type="DateTime" />
                <asp:Parameter Name="idClientes" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" HorizontalAlign="Center" Width="125px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
            <asp:BoundField DataField="raca" HeaderText="Raça" SortExpression="raca" />
            <asp:BoundField DataField="especie" HeaderText="Espécie" SortExpression="especie" />
            <asp:BoundField DataField="cor" HeaderText="Cor" SortExpression="cor" />
            <asp:BoundField DataField="sexo" HeaderText="Sexo" SortExpression="sexo" />
            <asp:BoundField DataField="nascimento" HeaderText="Nascimento" SortExpression="nascimento" />
            <asp:BoundField DataField="idClientes" HeaderText="idClientes" SortExpression="idClientes" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <p>
    </p>
</asp:Content>

