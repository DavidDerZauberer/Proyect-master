<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Coordinador.aspx.cs" Inherits="SGPI.Coordinador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link href="StyleCoordinador.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div>
        <a href="Coordinador.aspx" class="btn-Neon text-dark font-weight-bold">Consultar
        </a>
        <a href="ProgramarAsignatura.aspx" class="btn-Neon text-dark">Programar Asignatura
        </a>
        <a href="HomologacionCoordinador.aspx" class="btn-Neon text-dark">Homologacion
        </a>
        <a class="btn-Neon text-dark">Entrevista y Admiciones
        </a>
    </div>
    <div>
        <form id="form" runat="server">
        <img src="Imagenes/wallhaven-3k2qk9.jpg" class="imagenSkull" width="1600px" height="684px"/>
        <div>
                <br />
            </div>
        <div>
            <div class="col-12 form-inline justify-content-center text-light">
                <asp:Label ID="Label1" class="font-weight-bold" runat="server" Text="Buscar: &nbsp; &nbsp;" ></asp:Label>
                <br />
                <asp:TextBox ID="txtBuscar" class="form-control" runat="server" placeholder="Ingrese Num. Documento" Width="700px"></asp:TextBox>
                <img src="Imagenes/search.png" />
                <asp:Button ID="btnBuscar" class="btn btn-danger" runat="server" Text="Buscar" />
                <br />
            </div>
            <div>
                <br />
            </div>
            <div>
                <asp:GridView ID="grvConsulta" class="table table-borderless text-light" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField HeaderText="Documento" DataField="Documento"></asp:BoundField>
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                        <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                        <asp:BoundField HeaderText="Valor Pago" DataField="Valor Pago" />
                        <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                        <asp:BoundField HeaderText="Opciones" DataField="Opciones" />
                        <asp:BoundField HeaderText="Estado" DataField="Estado" />
                        <asp:BoundField HeaderText="Programa" DataField="Programa" />
                        <asp:BoundField HeaderText="Genero" DataField="Genero" />
                        <asp:BoundField HeaderText="Email" DataField="Email" />
                    </Columns>
                </asp:GridView>
            </div>

        </div>
    </form>
    </div>
</body>
</html>
