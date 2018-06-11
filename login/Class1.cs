using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace login
{
    public class Usuario_DAO
    {
        

        public bool Logar(string txt_login, string txt_password)
        {

            bool verifica = false;

            using (SqlConnection conn = new SqlConnection("Server=tcp:batatadoce.database.windows.net,1433;Initial Catalog=meu;Persist Security Info=False;User ID=batata;Password=Devilmaycry5;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
                conn.Open();
                var sql = "SELECT * FROM usuario where login=@usuario AND senha=@senha";
                // Cria um comando para inserir um novo registro à tabela
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                    cmd.Parameters.AddWithValue("@usuario", txt_login);
                    cmd.Parameters.AddWithValue("@senha", txt_password);

                    var resultado = cmd.ExecuteScalar();


                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        //Obtém os registros, um por vez
                        if (reader.Read() == true)
                        {
                            verifica = true;
                            return verifica;

                        }
                        else
                        {
                            verifica = false;
                            return verifica;
                        }
                    }

                }
            }
        }


        public List<Usuario> Listar_usuario()
        {
            var lista = new List<Usuario>();

            using (SqlConnection conn = new SqlConnection("Server=tcp:batatadoce.database.windows.net,1433;Initial Catalog=meu;Persist Security Info=False;User ID=batata;Password=Devilmaycry5;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
                conn.Open();

                string sql = "SELECT * FROM usuario";

                using (SqlCommand cmd = new SqlCommand(sql,conn))
                {
                    var sqlDataReader = cmd.ExecuteReader();

                    if (sqlDataReader.HasRows)
                    {
                        lista = Preencher_valores(sqlDataReader);
                    }
                }
            }



                return lista;
        }

        public List<Usuario> Preencher_valores(SqlDataReader reader)
        {

            var lista = new List<Usuario>();

            while (reader.Read())
            {
                var usuario = new Usuario();
                usuario.id = Convert.ToInt32(reader["id"].ToString());
                usuario.login = reader["login"].ToString();
                usuario.senha = reader["senha"].ToString();
                lista.Add(usuario);
            }

            return lista;

        }

        public Usuario Consultar_usuario(int id)
        {
            var usuario = new Usuario();

            using (SqlConnection conn = new SqlConnection("Server=tcp:batatadoce.database.windows.net,1433;Initial Catalog=meu;Persist Security Info=False;User ID=batata;Password=Devilmaycry5;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
                conn.Open();

                var select_por_id = "SELECT * FROM usuario WHERE id = @id";

                using (SqlCommand cmd = new SqlCommand(select_por_id,conn))
                {

                    cmd.Parameters.AddWithValue("@id",id);
                    var dataReader = cmd.ExecuteReader();

                    if (dataReader.HasRows)
                    {
                        usuario = Preencher_valores_por_id(dataReader);
                    }
                }
            }
            return usuario;
        }

        public Usuario Preencher_valores_por_id(SqlDataReader reader)
        {
            var usuario = new Usuario();

            while (reader.Read())
            {
                usuario.id = Convert.ToInt32(reader["id"].ToString());
                usuario.login = reader["login"].ToString();
                usuario.senha = reader["senha"].ToString();

            }

            return usuario;
        }

        public bool editar(int id, string login, string senha)
        {
            bool editar = false;

            using (SqlConnection conn = new SqlConnection("Server=tcp:batatadoce.database.windows.net,1433;Initial Catalog=meu;Persist Security Info=False;User ID=batata;Password=Devilmaycry5;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
                conn.Open();

                var sql = "UPDATE usuario SET login=@login,senha=@senha WHERE id=@id";
;
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@login", login);
                    cmd.Parameters.AddWithValue("@senha", senha);

                    if (cmd.ExecuteNonQuery() == 1)
                    {
                        editar = true;
                    }
                    
                }

            }

             return editar;
        }

        public bool apagarUsuario(int id)
        {
            bool apagar = false;

            using (SqlConnection conn = new SqlConnection("Server=tcp:batatadoce.database.windows.net,1433;Initial Catalog=meu;Persist Security Info=False;User ID=batata;Password=Devilmaycry5;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
                conn.Open();

                var sql = "DELETE FROM usuario WHERE id=@id";

                using (SqlCommand cmd = new SqlCommand(sql,conn))
                {
                    cmd.Parameters.AddWithValue("@id", id);

                    if(cmd.ExecuteNonQuery() == 1)
                    {
                        apagar = true;
                    }
                }

            }

            return apagar;
        }
        
    }
}