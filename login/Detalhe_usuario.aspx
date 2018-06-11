<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhe_usuario.aspx.cs" Inherits="login.Detalhe_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 
        <asp:TextBox ID="txtUsuario" runat="server" /><br />
        <asp:TextBox ID="txtSenha" runat="server" /><br /><br />
        <asp:LinkButton ID="lnkVoltar" runat="server" PostBackUrl="~/Teste.aspx" Text="Voltar" />
        <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" />
    </form>
</body>
</html>
