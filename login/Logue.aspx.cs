using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class Logue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Logar_Click(object sender, EventArgs e)
        {
            var login = new Usuario_DAO().Logar(txt_login.Text,txt_password.Text);

            if (login)
            {
                this.Response.Redirect("~/visit.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(
                Page,
                Page.GetType(),
                "mensagem",
                "<script type=\"text/javascript\"> alert('Usuario e senha incorretos');</script>  ",
                false);
            }
        }
    }
}