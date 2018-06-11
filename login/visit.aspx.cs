using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class visit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var listar_usuario = new Usuario_DAO().Listar_usuario();

                if (listar_usuario != null && listar_usuario.Count > 0)
                {
                    //grdRow.Columns(0).ItemStyle.Width = 100;
                    this.grdDados.DataSource = listar_usuario;
                    this.grdDados.DataBind();
                }
            }

        }

        

        public void grdDados_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName.Equals("Editar"))
            {
                string id = e.CommandArgument.ToString();
                if (!String.IsNullOrEmpty(id))
                {
                    this.Response.Redirect("Detalhe_usuario.aspx?id=" + id);
                }
            }

            if (e.CommandName.Equals("Excluir"))
            {
                string id = e.CommandArgument.ToString();
                var excluir = new Usuario_DAO().apagarUsuario(Convert.ToInt32(id));

                if (excluir)
                {
                    this.Response.Redirect("~/visit.aspx");
                }

            }

        }
    }
}