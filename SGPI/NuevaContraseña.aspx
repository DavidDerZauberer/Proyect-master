<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevaContraseña.aspx.cs" Inherits="SGPI.NuevaContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>

    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container form-inline justify-content-center">
            <div class="form-offline">
                <label for="txtNuevaContraseña">Nueva Contraseña:</label>
                <asp:TextBox id="txtNuevaContraseña" type="password" class="form-control" placeholder="Ingresar contraseña"  runat="server"></asp:TextBox>
            </div>
            <br />
        </div>
        <div class="container form-inline justify-content-center">
            <div class="form-offline">
                <label for="RepetirContraseña">Repetir Nueva Contraseña:</label>
                <asp:TextBox ID="txtRepetirContraseña" type="password" class="form-control" placeholder="Ingresar Contraseña" runat="server"></asp:TextBox>
                <br />
            </div>
        </div>
        <div class="text-center" style="display:grid; justify-content: center;">
            <br />
            <asp:Button ID="btnEnviar" class="btn btn-info" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
            <br />
             <asp:Button ID="btnCancelar" class="btn btn-danger" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
        </div>
    </form>
    <footer class="row d-flex justify-content-center" style="display: flex; justify-content: center;">
        <p>&copy; <%: DateTime.Now.Year %> - FelipeDonosoRuiz_TdeA_2021</p>
    </footer>
</body>
</html>
