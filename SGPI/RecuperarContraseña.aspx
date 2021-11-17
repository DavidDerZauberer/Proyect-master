<%@ Page Title="Recuperar Page" Language="C#" AutoEventWireup="true" CodeBehind="RecuperarContraseña.aspx.cs" Inherits="SGPI.RecuperarContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>

    </title>
</head>
<body>
    <div class="container justify-content-center" style="display: grid; justify-content: center;">
        <img src="Imagenes/recover.png" weigth="100"; height="100";/>
    </div>
    <form id="form1" runat="server" >
        <div class="container form-inline justify-content-center">
            <div class="form-offline">
                <label for="txtemail">Email:</label>
                <asp:TextBox id="txtemail" type="email" class="form-control" placeholder="Ingresar email"  runat="server"></asp:TextBox>
            </div>
            <br />
        </div>
        <div class="container form-inline justify-content-center">
            <div class="form-offline">
                <label for="txtIdentidad">Numero Id:</label>
                <asp:TextBox ID="txtIdentidad" type="number" class="form-control" placeholder="Ingresar Id" runat="server"></asp:TextBox>
                <br />
            </div>
        </div>
        <div class="container justify-content-center" style="display: grid; justify-content: center;">
            <br />
            <asp:Button ID="btnRecuperar" class="btn btn-info" runat="server" Text="Recuperar Contraseña" OnClick="btnRecuperar_Click" />
            <br />
        </div>

    </form>
    <footer class="text-center">
        <p>&copy; <%: DateTime.Now.Year %> - FelipeDonosoRuiz_TdeA_2021</p>
    </footer>
</body>

</html>
