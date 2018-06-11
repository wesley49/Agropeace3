<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro_empresa.aspx.cs" Inherits="login.cadastro_empresa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/style_cadastro_empresa.css">
</head>
<body>
    <header id="header">

        <div class="menu">
            <img src="img/arrow.svg" alt="Arrow">
            <a href="index.html">Voltar ao Início </a>
        </div>

    </header>

    <main style="width: 100%; height: 100%;">

        <div class="content_cadastro">

            <div class="logo">
                <img src="img/SmallAgro.png" alt="AgroPeace">
            </div>

            <form id="form1" runat="server">

                <h4 class="txtH">Cadastre-se </h4>
                <p class="txtP">Cadastro somente para empresas </p>

                <div class="campo">
                    <asp:TextBox ID="txt_razao_social" runat="server" type="text" CssClass="campo_asp" name="txt_razao_social" placeholder="Razão Social"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_nome_fantasia" runat="server" type="text" CssClass="campo_asp" name="txt_nome_fantasia" placeholder="Nome Fantasia"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_cnpj" runat="server" type="text" CssClass="campo_asp" name="txt_cnpj" placeholder="CNPJ (XX.XXX.XXX/YYYY-ZZ)"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_email" runat="server" type="text" CssClass="campo_asp" name="txt_email" placeholder="Email"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_telefone" runat="server" type="text" CssClass="campo_asp" name="txt_telefone" placeholder="Telefone com DDD"></asp:TextBox>
                </div>

                <div class="buttons">

                    <div class="retornar">
                        <asp:Button ID="btn_retornar" CssClass="retornar_asp" type="button" runat="server" Text="Retornar" />
                    </div>

                    <div class="proximo">
                        <asp:Button ID="btn_proximo" CssClass="proximo_asp" type="button" runat="server" Text="Proximo" />
                    </div>

                </div>

            </form>


        </div>

    </main>
</body>
</html>
