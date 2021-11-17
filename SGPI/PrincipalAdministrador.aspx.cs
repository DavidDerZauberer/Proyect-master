using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Linq;

namespace SGPI
{
    public partial class PrincipalAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[6] {new DataColumn("Documento"), new DataColumn("Nombre"), new DataColumn("Apellido"),
                new DataColumn("Rol"), new DataColumn("Programa"), new DataColumn("Seleccionar") });
                dt.Rows.Add("123","mauricio","amariles","Coordinador","Sistemas","Eliminar");

                gvrEliminar.DataSource = dt;
                gvrEliminar.DataBind();
                gvrEliminar.HeaderRow.TableSection = TableRowSection.TableHeader;

            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            using (SGPI_BDEntities sGPI_BDEntities = new SGPI_BDEntities())
            {
                UsuarioAdmin usuario = new UsuarioAdmin();
                usuario.Documento = txtDocumento.Text;
                usuario.Nombre = txtNombre.Text;
                usuario.Apellido = txtApellido.Text;
                usuario.Usuario = txtNombreUsuario.Text;
                usuario.Contraseña = txtContraseña.Text;
                usuario.Correo = txtCorreo.Text;
                usuario.Genero = Convert.ToInt32(ddlGenero.SelectedValue);
                usuario.Rol = Convert.ToInt32(rblRol.SelectedValue);
                usuario.Programa = Convert.ToInt32(DDLCurso.SelectedValue);

            }
            /*sGPI_BDEntities.UsuarioAdmin.Add();*/

        }
    }
}