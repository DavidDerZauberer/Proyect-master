<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportesAdministrador.aspx.cs" Inherits="SGPI.ReportesAdministrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <ul class="nav nav-pills  bg-dark">
        <li class="nav-item">
            <a class="nav-link active bg-info text-white font-weight-bold" href="PrincipalAdministrador.aspx">Modulo Usuario</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active bg-dark font-weight-bold" href="ReportesAdministrador.aspx">Modulo Reporte</a>
        </li>
    </ul>
    <div>
                <br />
                <br />
            </div>
    <div class="container tab-pane">
        <form id="form" runat="server">
        <div class="form-control">
            <div class="col-12 form-inline justify-content-center">
                <asp:Label ID="lblBuscar" class="font-weight-bold" runat="server" Text="Buscar: &nbsp &nbsp"></asp:Label>
                <asp:TextBox ID="txtBuscar" class="form-control" runat="server" placeholder="Ingrese Num. Documento" Width="700px"></asp:TextBox>
                <br />
                <img src="Imagenes/search.png" />
                <br />
                <asp:Button ID="btnBuscar" class="btn btn-danger" runat="server" Text="Buscar" />
                <br />
            </div>
            <div>
                <br />
            </div>
            <div>
                <div class="col-12 form-inline justify-content-center">
                    <asp:Label ID="lblCarrera" class="font-weight-bold" runat="server" Text="Buscar por Programa: &nbsp &nbsp"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DDLCurso" class="form-control" AutoPostBack="true" runat="server" required="true" Width="650px">
                        <asp:ListItem Text="Seleccione Curso" Selected="false"></asp:ListItem>
                        <asp:ListItem Text="Especializacion en seguridad de la informacion"></asp:ListItem>
                        <asp:ListItem Text="Maestria en gestion TI"></asp:ListItem>
                        <asp:ListItem Text="Maestria en Gestion Ambiental"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                </div>
            <div>
                <br />
                <br />
            </div>
        <div class="row justify-content-center position-relative text-left">
                <asp:GridView ID="gvrReportar" class="table table-dark table-hover" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField HeaderText="Documento" DataField="Documento" />
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                        <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                        <asp:BoundField HeaderText="Rol" DataField="Rol" />
                        <asp:BoundField HeaderText="Programa" DataField="Programa" />
                        <asp:CommandField HeaderText="Reporte" ShowHeader="true" ShowDeleteButton="true"/>
                    </Columns>
                </asp:GridView>
            </div>
            </div>
        
    </form>
    </div>
</body>
</html>
