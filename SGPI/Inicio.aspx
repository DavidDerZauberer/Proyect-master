<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="SGPI.Inicio" %>

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
        <div class="container justify-content-center" style="display: grid; justify-content: center;"">
            <p style="font-family: Times New Roman; color: deepskyblue">Login</p>
        </div>
        <div class="row d-flex justify-content-center" style="display: flex; justify-content: center;">
            <img src="Imagenes/login.png" width="100px" height="100px" />
        </div>
        <div class="row d-flex justify-content-center" style="display: flex; justify-content: center;">
            <div class="col-md-2 form group">
                <asp:Label ID="lblUsuario" runat="server" Text="Usuario: "></asp:Label>
                <br />
                <asp:TextBox ID="txtUsuario" class="form-control" runat="server"></asp:TextBox>
            </div>
            <br />
            <br />
        </div>
        <div class="row d-flex justify-content-center" style="display: flex; justify-content: center;">
            <div class="col-md-2 form-group">
                <asp:Label ID="lblContraseña" runat="server" Text="Contraseña: "></asp:Label>
                <br />
                <asp:TextBox ID="txtContraseña" class="form-control" type="Password" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="container justify-content-center" style="display: grid; justify-content: center;">
            <br />
            <asp:Button ID="btnIngresar" class="btn btn-info" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
        </div>
        <br />
        <div class="container justify-content-center" style="display: grid; justify-content: center;">
            <a href="RecuperarContraseña.aspx">¿Olvidaste tu contraseña?</a>
        </div>
    </form>
        <footer class="row d-flex justify-content-center" style="display: flex; justify-content: center;">
        <p>&copy; <%: DateTime.Now.Year %> - FelipeDonosoRuiz_TdeA_2021</p>
    </footer>
</body>
</html>
