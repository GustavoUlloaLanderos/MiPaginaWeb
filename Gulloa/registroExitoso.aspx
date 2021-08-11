<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registroExitoso.aspx.cs" Inherits="Gulloa.confirmacionDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="lib/twitter-bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>



    <div class="row" style="margin-top:150px">

          
        <div class="col-1"></div>

        <div class="col-5 mx-auto" >
            <h1 style="text-align:center; margin-left:25px";  >¡Gracias Por Registrarte!</h1>
            <asp:Label ID="LabelNombre" runat="server" Text=""></asp:Label>
            <h3 style="text-align:center; margin-left:25px";  >Ahora ya puedes iniciar sesion</h3>
              <asp:Label ID="LabelCorreo" runat="server" Text=""></asp:Label>

                     
            <a href="inicio.aspx" class="btn btn-dark btn-lg active" role="button" aria-pressed="true" style="margin-left:200px; margin-top:60px">Volver Al Menu</a>
        </div>

        
       <!-- Imagen gracias -->

        <div class="col-6 mx-auto">
          
            <img src="lib/img/gracias.png" alt="Responsive image" width="500" height="600" class="img-fluid">

        </div>
    </div>


    

   



</body>
</html>
