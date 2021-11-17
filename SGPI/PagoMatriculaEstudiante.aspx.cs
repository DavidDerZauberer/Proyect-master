using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SGPI
{
    public partial class PagoMatriculaEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[7] {new DataColumn("Documento"), new DataColumn("Nombre"), new DataColumn("Apellido"),
                    new DataColumn("Valor Pago"), new DataColumn("Fecha"), new DataColumn("Opciones"), new DataColumn("Estado") });

                dt.Rows.Add("100", "Giacomo", "Guilizzoni", 1M, "16/10/2021", "ver Archivo" , "sin pagar");
                dt.Rows.Add("100", "Giacomo", "Guilizzoni", "1M", "18 /02/2021", "ver Archivo", "Pago");

                grvPago.DataSource = dt;
                grvPago.DataBind();
                grvPago.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
    }
}