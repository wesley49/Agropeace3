<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fale_conosco.aspx.cs" Inherits="login.fale_conosco" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/style_fale_conosco.css">
    <title></title>
</head>
<body>
    
        <header id="header" style="width: 100%; height: 10%;">

            <div class="container_nav">
                        
                <div class="nav_left">
                    <nav class="left">
                        <ul>
                            <a href="empresa.html"><li> A Empresa </li></a>
                            <a href="arduino.html"><li> O Arduino </li></a>
                            <a href="produto.html"><li> Solução </li></a>
                            <a href="#"><li> FAQ </li></a>
                        </ul>
                    </nav>                
                </div>
                        
                <nav class="nav_logo">
                    <a href="index.html"><img src="img/SmallAgro.png"></a>
                </nav>
                        
                <div class="nav_right">
                    <nav class="right">
                        <ul>
                            <a href="fale_conosco.html"><li> Fale Conosco </li></a>
                            <a href="visit.html"><li> Área do Visitante</li></a>
                            <a href="logue.html"><li> Login </li></a>
                        </ul>
                    </nav>
                </div>
        
            </div>
                        
        </header>

        <main id="main" style="width: 100%; height: 100%">

            <div class="block1">

                <img src="img/backs/AgroPeace - Logo.png">

            </div>

            <div class="block2">  
                
                <div class="container_form">

                    <form id="form1" runat="server">

                        <h4 class="text"> Fale Conosco </h4>

                        <div class="campo">
                            <asp:TextBox id="txt_nome" cssClass="campo_asp" placeholder="Nome" runat="server" />
                        </div>

                        <div class="campo">
                            <asp:TextBox id="txt_numero" cssClass="campo_asp" placeholder="Telefone com DDD" runat="server" />
                        </div>

                        <div class="campo">
                            <asp:TextBox id="txt_email" cssClass="campo_asp" placeholder="E-mail" runat="server" />
                        </div>

                        <div class="campo">
                            <asp:DropDownList id="txt_categoria" cssClass="campo_asp" runat="server">
                                <asp:ListItem Text="Categorias" />
                                <asp:ListItem Text="text2" />
                            </asp:DropDownList>
                        </div>

                        <div class="descricao">
                            <asp:TextBox id="TextArea1" cssClass="textarea_asp" TextMode="multiline" Columns="30" Rows="10" placeholder="Mensagem" runat="server" />
                        </div>

                        <div class="enviar">
                        <asp:Button ID="btn_enviar" CssClass="enviar_asp" type="button" runat="server" Text="Enviar" />
                        </div>                    

                    </form>

                </div>

            </div>

        </main>

        <footer>

            <section class="comunication">
    
                <div class="row">
    
                    <div class="about">
                        <h4> Sobre a AgroPeace </h4>
                        <p class="txt_footer"> Somos uma empresa que tem enfoque no oferecimento de uma solução na área do Agronegócio. </p>
                        <p class="txt_footer"> © 2018 | AgroPeace Group </p>
                    </div>
    
                    <div class="help">
                        <h4> Comunicação </h4>
                        <p class="txt_footer"> Dúvidas, curiosidades ou sugestões? <br> Fale Conosco, possuímos uma equipe pronta para atendê-lo. </p>
                        <a href="#"><button type="button"> Fale Conosco </button></a>
                    </div>
    
                    <div class="social">
    
                        <h4> Redes Sociais </h4>
                        <p class="txt_footer"> Siga-nos em nossas Redes Sociais para receber informações de nossa corporação e do ambiente Agro. </p>
    
                            <div class="social_medias">
                                <a href="#"><img src="img/face.png" alt="Facebook" width="25%" height="15%"></a>
                                <a href="#"><img src="img/insta.png" alt="Instagram" width="25%" height="15%"></a>
                                <a href="#"><img src="img/twitter.png" alt="Twiiter" width="25%" height="15%"></a>
                            </div>
    
                    </div>                     
    
                </div>
    
            </section>

        </footer>
</body>
</html>
