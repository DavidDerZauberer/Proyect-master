<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principalEstudiante.aspx.cs" Inherits="SGPI.principalEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link href="StyleSheet1.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head> 
<body background: black;>
    <!---->
    <div>
        <a href="principalEstudiante.aspx" class="btn-Neon text-white font-weight-bold">Modificar Usuario
        </a>
        <a href="PagoMatriculaEstudiante.aspx" class="btn-Neon text-white">Pago Matricula
        </a>
    </div>
    <div>
        <video autoplay="autoplay" muted="muted" loop="loop" width="100%" height="80%">
            <source src="video/mylivewallpapers.com-Death-Sworn-Katarina-LoL.mp4" />
        </video>
    </div>
    <div class="">
        <form id="form1" runat="server">
            <div class="form1 justify-content-cente">
                <asp:Label ID="lblDocumento" class="modificar font-weight-bold" runat="server" Text="Documento:"></asp:Label>
                <asp:TextBox ID="txtDocumento" type="number" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form2 justify-content-cente">
                <asp:Label ID="lblNombre" class="modificar font-weight-bold" runat="server" Text="Nombre:"></asp:Label>
                <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form3 justify-content-cente">
                <asp:Label ID="lblApellido" class="modificar font-weight-bold" runat="server" Text="Apellido:"></asp:Label>
                <asp:TextBox ID="txtApellido" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form4 justify-content-cente">
                <asp:Label ID="lblEdad" class="modificar font-weight-bold" runat="server" Text="Edad:"></asp:Label>
                <asp:TextBox ID="txtEdad" type="number" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form5 justify-content-cente">
                <asp:Label ID="lblCorreo" class="modificar font-weight-bold" runat="server" Text="Correo:"></asp:Label>
                <asp:TextBox ID="txtCorreo" type="email" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form6 justify-content-cente">
                <asp:Label ID="lblGenero" class="modificar font-weight-bold" runat="server" Text="Genero:"></asp:Label>
                <asp:DropDownList ID="ddlGenero" class="form-control" AutoPostBack="true" runat="server" required="true">
                    <asp:ListItem Text="Seleccione genero" Selected="false"></asp:ListItem>
                    <asp:ListItem Text="Masculino"></asp:ListItem>
                    <asp:ListItem Text="Femenino"></asp:ListItem>
                    <asp:ListItem Text="Otro"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form7 justify-content-cente">
                <asp:Label ID="lblArchivo" class="modificar font-weight-bold" runat="server" Text="Nuevo Archivo:"></asp:Label>
                <br />
                <input ID="txtArchivo" type="file" runat="server" Width="650px"></input>
            </div>
            <div class="form8 justify-content-cente">
                <asp:Button ID="btnModificar" class="btn btn-danger btn-lg btn3d" runat="server" Text="Modificar" />
            </div>
        </form>
    </div>
</body>
</html>
