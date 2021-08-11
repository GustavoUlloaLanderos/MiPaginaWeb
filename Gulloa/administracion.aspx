<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administracion.aspx.cs" Inherits="Gulloa.administracion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="lib/twitter-bootstrap/css/bootstrap.rtl.min.css" rel="stylesheet" />
    <link href="lib/css/estilos.css" rel="stylesheet" />
    <title></title>
</head>
<body>


    <div class="centrardiv">

         <h2 class="titulo">Menu Administraicion</h2>
         <a class="btn btn-dark" href="inicio.aspx">Volver Al Inicio</a>

    </div>



    <div class="row">

         <form id="form1" runat="server">

        <div class="col-4"  style="float:right ">



            <h2 class="titulo">Solicitudes</h2>

            <div class="divdistancia">

                <asp:GridView ID="GridSolicitudes" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>

        </div>

                 
    <div class="col-5 centrardiv">
       
                   
            
       

        <!-- buscar persona -->

                        
            <div>
               

                <h2 class="titulo" >Buscar a persona por correo</h2>

                <div class="divdistacia titulo">

                <asp:TextBox ID="TxtBuscar" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="BuscarPersona" />

                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>

                    </div>

            </div>



            <div class="divdistacia titulo">

                <asp:Panel ID="Panel1" runat="server"  Visible="False">
                    
                    <div class="form-group">

                        <div class="form-group">
                            <label for="BoxNombre">Nombre:</label>
                            <asp:TextBox ID="BoxNombre" runat="server"></asp:TextBox>
                        </div>



                        <div class="form-group">
                            <label for="BoxApellido">Apellido:</label>
                            <asp:TextBox ID="BoxApellido" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="BoxEdad">Edad:</label>
                            <asp:TextBox ID="BoxEdad" runat="server" type="number"></asp:TextBox>
                        </div>


                        <div class="form-group">
                            <label for="BoxCorreo">Correo:</label>
                            <asp:TextBox ID="BoxCorreo" runat="server" type="email" ></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="BoxIdPersona">ID:</label>
                            <asp:TextBox ID="BoxIdPersona" runat="server" type="text" Enabled="False" Visible="True"></asp:TextBox>
                        </div>


                         <!-- Botones de modificar usuario o eliminar usuario -->

                        <div class ="divdistacia">

                            <asp:Button ID="Button2" runat="server" Text="Guardar Cambios" OnClick="GuardarCambios" /> 
                              <asp:Button ID="Button3" runat="server" Text="Eliminar Usuario" OnClick="EliminarUsuario" /> 

                        </div>


                </asp:Panel>
                               
            </div>

        </form>



          </div>



  
                
 

    </div>  


    


   
</body>


</html>


