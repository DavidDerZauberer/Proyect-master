<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagoMatriculaEstudiante.aspx.cs" Inherits="SGPI.PagoMatriculaEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link href="Formato.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <div>
        <a href="principalEstudiante.aspx" class="btn-Neon text-white font-weight-bold">Modificar Usuario
        </a>
        <a href="PagoMatriculaEstudiante.aspx" class="btn-Neon text-white">Pago Matricula
        </a>
    </div>
    <div>
        <img id="imagenSkull" src="Imagenes/skull.jpg" width="1500px" height="670px" />
        <div>
            <form id="form" runat="server">
            <div class="form0">
                <asp:GridView ID="grvPago" class="table table-borderless text-light form0" runat="server" AutoGenerateColumns="false" Width="900px">
                    <Columns>
                        <asp:BoundField HeaderText="Documento" DataField="Documento"></asp:BoundField>
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                        <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                        <asp:BoundField HeaderText="Valor Pago" DataField="Valor Pago" />
                        <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                        <asp:BoundField HeaderText="Opciones" DataField="Opciones" ShowHeader="true" />
                        <asp:BoundField HeaderText="Estado" DataField="Estado"/>
                    </Columns>
                </asp:GridView>
            </div>
        </form>
        </div>
    </div>
</body>
</html>
