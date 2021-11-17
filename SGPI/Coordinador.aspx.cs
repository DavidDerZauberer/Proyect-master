using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace SGPI
{
    public partial class Coordinador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[10] {new DataColumn("Documento"), new DataColumn("Nombre"), new DataColumn("Apellido"),
                    new DataColumn("Valor Pago"), new DataColumn("Fecha"), new DataColumn("Opciones"), new DataColumn("Estado"),
                    new DataColumn("Programa"), new DataColumn("Genero"), new DataColumn("Email") });

                dt.Rows.Add("100", "Giacomo", "Guilizzoni", "1m", "16/2021", "Ver Archivo", "Sin Pago", "Tecnologia", "Masculino", "@example.com");
                dt.Rows.Add(101, "juan", "Pelaes", "1.5m", "16/2021", "Ver Archivo", "Pago", "Tecnologia", "Masculino", "@example.com");

                grvConsulta.DataSource = dt;
                grvConsulta.DataBind();
                grvConsulta.HeaderRow.TableSection = TableRowSection.TableHeader;
            }

        }
    }
}