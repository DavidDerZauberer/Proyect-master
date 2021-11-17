using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SGPI
{
    public partial class ReportesAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[6] {new DataColumn("Documento"), new DataColumn("Nombre"), new DataColumn("Apellido"),
                new DataColumn("Rol"), new DataColumn("Programa"), new DataColumn("Reporte") });
                dt.Rows.Add("123", "mauricio", "amariles", "Coordinador", "Sistemas", "Generar Reporte");

                gvrReportar.DataSource = dt;
                gvrReportar.DataBind();
                gvrReportar.HeaderRow.TableSection = TableRowSection.TableHeader;

            }
        }
    }
}