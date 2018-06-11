<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro_empresa_endereco.aspx.cs" Inherits="login.cadastro_empresa_endereco" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/style_cadastro_empresa_endereco.css" />
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

        <div class="content_endereco">

            <div class="logo">
                <img src="img/SmallAgro.png" alt="AgroPeace" />
            </div>

            <form id="form1" runat="server">

                <h4 class="txtH">Verificado com Sucesso! </h4>
                <p class="txtP">Defina a localização da sua Empresa </p>

                <div class="campo">
                    <asp:TextBox ID="txt_cep" runat="server" type="text" CssClass="campo_asp" name="txt_cep" placeholder="Razão Social"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_logradouro" runat="server" type="text" CssClass="campo_asp" name="txt_logradouro" placeholder="Logradouro"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_bairro" runat="server" type="text" CssClass="campo_asp" name="txt_bairro" placeholder="Bairro"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_cidade" runat="server" type="text" CssClass="campo_asp" name="txt_cidade" placeholder="Cidade"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_ddl" runat="server" type="text" CssClass="campo_asp" name="txt_estado" placeholder="Estado"></asp:TextBox>
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_pais" runat="server" type="text" CssClass="campo_asp" name="txt_pais" placeholder="País"></asp:TextBox>
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
