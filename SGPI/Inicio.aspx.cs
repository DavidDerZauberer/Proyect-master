using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace SGPI
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = string.Empty;
            using (SGPI_BDEntities dBEntities = new SGPI_BDEntities())
            {
                Criptografia criptografia = new Criptografia();
                string hashpass = criptografia.CodigoHash(txtContraseña.Text);


                UsuarioAdmin usr = new UsuarioAdmin();
                try
                {
                    UsuarioAdmin usuario = dBEntities.UsuarioAdmin.FirstOrDefault(a => a.Usuario == txtUsuario.Text && a.Contraseña == txtContraseña.Text);
                    if (usuario != null)
                    {
                        Session["IDUsuario"] = usr.ID;
                        switch (usuario.Rol)
                        {
                            case 1:
                                Response.Redirect("~/PrincipalAdministrador.aspx");
                                break;
                            case 2:
                                Response.Redirect("~/principalEstudiante.aspx");
                                break;
                            case 3:
                                Response.Redirect("~/Coordinador.aspx");
                                break;
                            default:
                                break;
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Usuario o contraseña invalida')</script>");
                    }
                }
                catch (Exception ex)
                {

                }
            }
                
        }
    }
}