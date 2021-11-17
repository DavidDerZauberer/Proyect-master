using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SGPI
{
    public partial class HomologacionCoordinador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[10] {new DataColumn("N"), new DataColumn("Code"), new DataColumn("Asignatura"),
                    new DataColumn("Creditos"), new DataColumn("Nivel"), new DataColumn("Programa"), new DataColumn("Cod. homologar"),
                    new DataColumn("Asignatura Homologar"),
                    new DataColumn("Creditos Homologar"), new DataColumn("Nota Definitiva")});

                dt.Rows.Add(1, 654321, "Desarrollo C#", 3, 2, "Ing. Sistemas", 1234567, "Construccion de Software", 3, "4.3");

                grvHomologar.DataSource = dt;
                grvHomologar.DataBind();
                grvHomologar.HeaderRow.TableSection = TableRowSection.TableHeader;
            }*/

        }
    }
}