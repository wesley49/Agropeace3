<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verificacao.aspx.cs" Inherits="login.verificacao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="css/style_verificacao.css"/>
    <title> AgroPeace - Verificação de Usuário </title>
</head>
<body>
    <header id="header">

        <div class="menu">
            <img src="img/arrow.svg" alt="Arrow"/>
            <a href="index.html">Voltar ao Início </a>
        </div>

    </header>

    <main>

        <div class="content_verificacao">

            <div class="logo">
                <img src="img/SmallAgro.png" alt="AgroPeace"/>
            </div>

            <form id="form1" runat="server">

                <h4 class="txtH">Verficado com Sucesso! </h4>
                <p class="txtP">Para finalizar o processo de verificação, cadastre uma senha e um e-mail para contato</p>

                <div class="campo">
                    <asp:TextBox ID="txt_usuario" runat="server" type="text" CssClass="campo_asp" name="txt_usuario" placeholder="Usuário"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_email" runat="server" type="text" CssClass="campo_asp" name="txt_email" placeholder="Email"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_senha" runat="server" type="password" CssClass="campo_asp" name="txt_senha" placeholder="Senha"></asp:TextBox>
                </div>

                <div class="campo" style="margin-bottom: 10%;">
                    <asp:TextBox ID="txt_confirm" runat="server" type="password" CssClass="campo_asp" name="txt_confirm" placeholder="Confirme sua senha"></asp:TextBox>
                </div>

                <div class="buttons">

                    <div class="retornar">
                        <asp:Button ID="btn_retornar" CssClass="retornar_asp" type="button" runat="server" Text="Retornar" />
                    </div>

                    <div class="submit">
                        <asp:Button ID="btn_submit" CssClass="submit_asp" type="button" runat="server" Text="Submit" />
                    </div>

                </div>


            </form>


        </div>

    </main>

    <footer style="width: 100%; height: 100%;">

        <div class="information">

            <p class="text">© 2018 | AgroPeace Group </p>
            <p class="text">Alguns direitos reservados </p>

        </div>

    </footer>
</body>
</html>
