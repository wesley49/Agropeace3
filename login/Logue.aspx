<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logue.aspx.cs" Inherits="login.Logue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="css/style_logue.css"/>
    <title> AgroPeace - Login </title>
</head>
<body>
    
        <header id="header">

            <div class="menu">
                <img src="img/arrow.svg" alt="Arrow"/>
                <a href="index.html"> Voltar ao Início </a>
            </div>

        </header>

        <main>

            <form id="form1" runat="server" style="width:100%;height:100%;">

            <div class="content_login">

                <img src="img/SmallAgro.png" class="logo" alt="AgroPeace"/>

                <div class="campo">
                    <asp:TextBox ID="txt_login" style="padding-left: 10%;
                    border-radius: 14px;
                    border: none;
                    background: transparent;
                    background-position-x: -45%;
                    background-position-y: 42%;
                    background-size: 55% 55%;
                    background-repeat: no-repeat;
                    background: rgba(255, 255, 255, 0.6);
                    width: 60%;
                    height: 40px;" 
                    runat="server" class="usuario" name="txt_login" placeholder="Usuario"></asp:TextBox>

                    
                </div>

                <div class="campo">
                    <asp:TextBox ID="txt_password" style="padding-left: 10%;
                    border-radius: 14px;
                    border: none;
                    background-position-x: -45%;
                    background-position-y: 42%;
                    background-size: 55% 55%;
                    background-repeat: no-repeat;
                    background: rgba(255, 255, 255, 0.6);
                    width: 60%;
                    height: 40px;" 
                    runat="server" type="password" class="senha" name="txt_senha" placeholder="Senha"></asp:TextBox>
                </div>
                
                <div class="enviar">
                    <asp:Button ID="Logar" cssClass="button"  
                    type="button" runat="server" Text="Iniciar Acesso" OnClick="Logar_Click"/>
                </div>

                <p class="text"> Ainda não é usuário? <a href="#"> <spam> Cadastre-se </spam></a> </p>
                <p class="text"> ou <a href="empresa.html"> <spam> Saiba Mais </spam></a> sobre nossa Corporação </p>

            </div>

            </form>

        </main>

        <footer id="footer">

            <div class="information">

                <p class="text"> © 2018 | AgroPeace Group </p>
                <p class="text"> Alguns direitos reservados </p>

            </div>

        </footer>
    
</body>

</html>