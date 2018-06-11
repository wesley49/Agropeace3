<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro_empresa_login.aspx.cs" Inherits="login.cadastro_empresa_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/style_cadastro_empresa_login.css" />
    <title>AgroPeace - Cadastre-se </title>
</head>
<body>
    <header id="header">

        <div class="menu">
            <img src="img/arrow.svg" alt="Arrow" />
            <a href="index.html">Voltar ao Início </a>
        </div>

    </header>

    <main>

        <div class="content_login">

            <div class="logo">
                <img src="img/SmallAgro.png" alt="AgroPeace" />
            </div>

            <form id="form1" runat="server">

                <h4 class="txtH">Verificado com Sucesso! </h4>
                <p class="txtP">Defina, agora, seu acesso ao Sistema de Gerenciamento  </p>

                <div class="campo">
                    <asp:TextBox ID="txt_usuario" runat="server" type="text" CssClass="campo_asp" name="txt_usuario" placeholder="Usuário"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_senha" runat="server" type="password" CssClass="campo_asp" name="txt_senha" placeholder="Senha"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_confirm" runat="server" type="password" CssClass="campo_asp" name="txt_confirm" placeholder="Confirme sua senha"></asp:TextBox>
                </div>

                <div class="buttons">

                    <div class="retornar">
                        <asp:Button ID="btn_retornar" CssClass="retornar_asp" type="button" runat="server" Text="Retornar" />
                    </div>

                    <div class="enviar">
                        <asp:Button ID="btn_enviar" CssClass="enviar_asp" type="button" runat="server" Text="Enviar" />
                    </div>

                </div>

            </form>
    </main>

    <footer style="width: 100%; height: 100%;">

        <div class="information">

            <p class="text">© 2018 | AgroPeace Group </p>
            <p class="text">Alguns direitos reservados </p>

        </div>

    </footer>

</body>

</html>
