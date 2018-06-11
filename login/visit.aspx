<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="visit.aspx.cs" Inherits="login.visit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="css/normalize.css"/>
<link rel="stylesheet" type="text/css" href="css/animate.css"/>
<link rel="stylesheet" type="text/css" href="css/style_visit.css"/>
<title> AgroPeace - Visitante </title>
</head>
<body>
    <form id="form1" runat="server">
        <header id="header">

            <div class="container_nav">

                <div class="content_left">

                    <img src="img/SmallAgro.png"/>

                </div>

                <div class="content_right">

                    <nav class="menu">
                        <ul>
                            <a href="bindex.html"><li> Voltar à Home </li></a>
                        </ul>
                    </nav>

                </div>

            </div>

        </header>

        <main style="width:100%;height:100%;display: flex;
    flex-direction: row;">

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

            <div class="content_all">

                <div class="conteudo">

                    <asp:GridView ID="grdDados" runat="server" AutoGenerateColumns="false" OnRowCommand="grdDados_RowCommand">

                        <Columns>    

                            <asp:BoundField DataField="id" HeaderText="Id" />
                            <asp:BoundField DataField="login" HeaderText="Usuario" />
                            <asp:BoundField DataField="senha" HeaderText="Senha" />
              
                            <asp:TemplateField>

                                <ItemTemplate>

                                    <asp:Button ID="btnEditar" CssClass="btnConteudo" runat="server" CommandName="Editar" Text="Editar" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "id")%>' />

                                    <asp:Button ID="btnExcluir" CssClass="btnConteudo" runat="server" CommandName="Excluir" Text="Excluir" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "id")%>' />
                                
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>

            </div>

        </main>

    </form>

</body>

</html>