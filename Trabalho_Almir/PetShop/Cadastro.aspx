<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        text-align: center;
        font-size: xx-large;
    }
    .auto-style6 {
        width: 54%;
    }
    .auto-style7 {
        width: 750px;
    }
    .auto-style9 {
        width: 750px;
        height: 26px;
    }
    .auto-style11 {
        text-align: center;
    }
    .auto-style12 {
        font-weight: bold;
    }
    .auto-style13 {
        width: 164px;
        height: 26px;
    }
    .auto-style14 {
        width: 164px;
    }
        .auto-style15 {
            height: 146px;
            text-align: center;
        }
        .auto-style16 {
        width: 374px;
        height: 125px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="1" class="auto-style6">
    <tr>
        <td class="auto-style15" style="background-color: #C0C0C0" colspan="2">
            <img class="auto-style16" src="Imagens/login_banner.png" /></td>
    </tr>
    <tr>
        <td class="auto-style13" style="background-color: #C0C0C0"><strong>
            <asp:Label ID="Label1" runat="server" Text="Login:"></asp:Label>
            </strong></td>
        <td class="auto-style9" style="background-color: #C0C0C0">
            <asp:TextBox ID="txtLogin" runat="server" Width="160px"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLogin" ErrorMessage="(*) Campo Obrigatório."></asp:RequiredFieldValidator>
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="background-color: #C0C0C0"><strong>
            <asp:Label ID="Label2" runat="server" Text="Senha:"></asp:Label>
            </strong></td>
        <td class="auto-style7" style="background-color: #C0C0C0">
            <asp:TextBox ID="txtSenha" runat="server" Width="166px"></asp:TextBox>
            <strong>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtLogin" ControlToValidate="txtSenha" ErrorMessage="Falha: Login Igual a Senha." Operator="NotEqual">(*) Login diferente de Senha.</asp:CompareValidator>
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="background-color: #C0C0C0"><strong>
            <asp:Label ID="Label3" runat="server" Text="Confirmar Senha:"></asp:Label>
            </strong></td>
        <td class="auto-style7" style="background-color: #C0C0C0">
            <asp:TextBox ID="txtConfirma" runat="server" Width="167px"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtConfirma" Display="Dynamic" ErrorMessage="(*) Necessario a confirmação."></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="(*) Senhas devem que ser Iguais." ControlToCompare="txtSenha" ControlToValidate="txtConfirma"></asp:CompareValidator>
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="background-color: #C0C0C0"><strong>
            <asp:Label ID="Label4" runat="server" Text="Nome:"></asp:Label>
            </strong></td>
        <td class="auto-style7" style="background-color: #C0C0C0">
            <asp:TextBox ID="txtNome" runat="server" Width="249px"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNome" ErrorMessage="(*) Campo Obrigatório"></asp:RequiredFieldValidator>
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="background-color: #C0C0C0"><strong>
            <asp:Label ID="Label5" runat="server" Text="Nascimento:"></asp:Label>
            </strong></td>
        <td class="auto-style7" style="background-color: #C0C0C0">
            <asp:TextBox ID="txtNascimento" runat="server"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNascimento" Display="Dynamic" ErrorMessage="(*) Campo Obrigatório."></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtNascimento" Display="Dynamic" ErrorMessage="(*) Data Invalida." Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="background-color: #C0C0C0"><strong>
            <asp:Label ID="Label6" runat="server" Text="E-Mail:"></asp:Label>
            </strong></td>
        <td class="auto-style7" style="background-color: #C0C0C0">
            <asp:TextBox ID="txtEmail" runat="server" Width="247px"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="(*) Campo Obrigatório."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="(*) Email Invalido." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style11" colspan="2" style="background-color: #C0C0C0"><strong>
            <asp:Button ID="btnCadastro" runat="server" CssClass="auto-style12" Text="Cadastrar" />
            </strong></td>
    </tr>
</table>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

