using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class Detalhe_usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    this.Carregar_usuario(Convert.ToInt32(Request.QueryString["id"]));
                }
            }
        }

        public void Carregar_usuario(int id)
        {
            var dados_usuario = new Usuario_DAO().Consultar_usuario(id);

            if (dados_usuario != null)
            {
                this.txtUsuario.Text = dados_usuario.login;
                this.txtSenha.Text = dados_usuario.senha;
            }

        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            var editar = new Usuario_DAO().editar(Convert.ToInt32(Request.QueryString["id"]), this.txtUsuario.Text, this.txtSenha.Text);

            if (editar)
            {
                ScriptManager.RegisterClientScriptBlock(
                Page,
                Page.GetType(),
                "mensagem",
                "< script type=\"text/javascript\"> alert('Usuario editado com sucesso!');  ",
                false);

                Response.Redirect("~/Teste.aspx");


            }
        }
    }
}