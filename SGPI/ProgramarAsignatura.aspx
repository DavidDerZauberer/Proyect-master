<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgramarAsignatura.aspx.cs" Inherits="SGPI.ProgramarAsignatura" %>

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
            <div>
                <br />
            </div>
            <div class="form-inline text-dark font-weight-bold justify-content-center">
                <div class="col-sm-5">
                    <asp:Label ID="lblPeriodoAcademico" runat="server" Text="Periodo Academico:"></asp:Label>
                    <br />
                    <asp:Label ID="lblSemAcademico" runat="server" Text="2021-2"></asp:Label>
                </div>
                <div class="col-sm-5">
                    <asp:Label ID="lblPrograma" runat="server" Text="Programa:"></asp:Label>
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
            </div>
            <div class="row justify-content-center">
                <asp:GridView ID="grvPrograma" class="table table-borderless table-dark" runat="server" AutoGenerateColumns="false" Width="1000px">
                    <Columns>
                        <asp:BoundField HeaderText="Fecha" DataField="Fecha"></asp:BoundField>
                        <asp:BoundField HeaderText="Aula" DataField="Aula" />
                        <asp:BoundField HeaderText="Asignatura" DataField="Asignatura" />
                        <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                    </Columns>
                </asp:GridView>
            </div>
        </form>
    </div>
</body>
</html>
