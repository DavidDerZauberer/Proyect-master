using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SGPI
{
    public partial class ProgramarAsignatura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[4] {new DataColumn("Fecha"), new DataColumn("Aula"), new DataColumn("Asignatura"),
                    new DataColumn("Codigo") });

                dt.Rows.Add("16/10/2021",302, "Construccion Sftw 4", 4567);
                dt.Rows.Add("16/10/2021",402, "Matematicas", 7654);

                grvPrograma.DataSource = dt;
                grvPrograma.DataBind();
                grvPrograma.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
    }
}