<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="visit_cadastro_funcionario.aspx.cs" Inherits="login.visit_cadastro_funcionario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="css/style_visit_cadastro_funcionario.css"/>
    <title> AgroPeace - Sistema de Gerenciamento</title>
</head>
<body>
        <header id="header">

            <div class="container_nav">

                <div class="content_left">

                    <img src="img/SmallAgro.png"/>

                </div>

                <div class="content_right">

                    <nav class="menu">
                        <ul>
                            <a href="index.html"><li> Voltar à Home </li></a>
                        </ul>
                    </nav>

                </div>

            </div>

        </header>

        <main>

            <div class="menu_lateral">

                <div class="icons">
                    <img src="img/profile.svg" alt="Perfil"/>
                    <p> Perfil </p>
                </div>

                <div class="icons">
                    <img src="img/graph.svg" alt="Gráfico"/>
                    <p> Gráfico </p>
                </div>

                <div class="icons">
                    <img src="img/manager.svg" alt="Gerentes"/>
                    <p> Gerentes </p>
                </div>

                <div class="icons">
                    <img src="img/employee.svg" alt="Empregados"/>
                    <p> Empregados </p>
                </div>

                <div class="icons">
                    <img src="img/temperature.svg" alt="Previsão"/>
                    <p> Previsão do Tempo </p>
                </div>

            </div>

            <div class="general_left">

                

            </div>

            <div class="general_right">

                <div class="content_cadastro">

                    <h4 class="txtH"> Cadastro de Funcionários </h4>
                    <p class="txtP"> Cadastre os colaboradores de sua empresa </p>

                    <form id="form1" runat="server">

                        <div class="general">

                            <p class="txtCadastro"> Informações Gerais </p>
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_nome" runat="server" type="text" cssClass="campo_asp" name="txt_nome" placeholder="Nome"></asp:TextBox>
                            </div>
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_rg" runat="server" type="text" cssClass="campo_asp" name="txt_rg" placeholder="RG"></asp:TextBox>
                            </div>
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_cpf" runat="server" type="text" cssClass="campo_asp" name="txt_cpf" placeholder="CPF"></asp:TextBox>
                            </div>
                            
                        </div>
                        
                        <div class="contato">

                            <p class="txtCadastro"> Informações de Contato </p> 
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_telefone1" runat="server" type="text" cssClass="campo_asp" name="txt_telefone1" placeholder="Telefone Residencial com DDD"></asp:TextBox>
                            </div>
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_telefone2" runat="server" type="text" cssClass="campo_asp" name="txt_telefone2" placeholder="Telefone Pessoal com DDD"></asp:TextBox>
                            </div>

                        </div>

                        <div class="endereco">

                            <p class="txtCadastro"> Informações de Localização </p>
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_logradouro" runat="server" type="text" cssClass="campo_asp" name="txt_logradouro" placeholder="Logradouro"></asp:TextBox>
                            </div>
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_bairro" runat="server" type="text" cssClass="campo_asp" name="txt_bairro" placeholder="Bairro"></asp:TextBox>
                            </div>
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_cidade" runat="server" type="text" cssClass="campo_asp" name="txt_cidade" placeholder="Cidade"></asp:TextBox>
                            </div>
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_estado" runat="server" type="text" cssClass="campo_asp" name="txt_estado" placeholder="Estado"></asp:TextBox>
                            </div>
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_pais" runat="server" type="text" cssClass="campo_asp" name="txt_pais" placeholder="País"></asp:TextBox>
                            </div>
                            
                        </div>


                        <div class="nivel">

                            <p class="txtCadastro"> Informações de Nível </p>
                            
                            <div class="campo">
                                <asp:TextBox ID="txt_nivel" runat="server" type="text" cssClass="campo_asp" name="txt_nivel" placeholder="Nivel do Funcionário"></asp:TextBox>
                            </div>

                        </div>

                        <div class="botoes">

                            <div class="limpar">
                                <asp:Button ID="btn_limpar" cssClass="limpar_asp" type="button" runat="server" Text="Limpar"/>
                            </div>

                            <div class="enviar">
                                <asp:Button ID="btn_adicionar" cssClass="enviar_asp" type="button" runat="server" Text="Adicionar"/>
                            </div>

                        </div>

                    </form>

                </div>

            </div>

        </main>

</body>

</html>