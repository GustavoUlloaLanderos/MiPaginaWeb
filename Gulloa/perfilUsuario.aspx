<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMestraSitio.Master" AutoEventWireup="true" CodeBehind="perfilUsuario.aspx.cs" Inherits="Gulloa.perfilUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <!-- Formulario Registro -->

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div class="row mx-auto">

                 <!-- img datos -->

                <div class="col-4 centrardiv">

                      <img src="lib/img/user.png" alt="Responsive image" width="300" class="img-fluid" >

                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                        <ProgressTemplate>
                            <img src="lib/img/guardando.gif" alt="Responsive image" width="80" class="img-fluid" >
                            <asp:Label runat="server" Text="Guardando Datos..."></asp:Label>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    

                    <div class="divdistacia">

                        <asp:Label ID="estado" runat="server" Text="" Visible="False"></asp:Label>
                        

                    </div>

                </div>



                <div class="col-6">

                    <h2 class="titulo">Estos Son Tus Datos</h2>


                     <asp:Panel ID="Panel1" runat="server" Height="150px">
                    
                    <div class="form-group">
                        <div class="form-group">
                            <label for="BoxNombre">Nombre:</label>
                            <asp:TextBox ID="BoxNombre" runat="server" class="form-control"></asp:TextBox>
                        </div>



                        <div class="form-group">
                            <label for="BoxApellido">Apellido:</label>
                            <asp:TextBox ID="BoxApellido" runat="server" class="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="BoxEdad">Edad:</label>
                            <asp:TextBox ID="BoxEdad" runat="server" type="number" class="form-control"></asp:TextBox>
                        </div>


                        <div class="form-group">
                            <label for="BoxCorreo">Correo:</label>
                            <asp:TextBox ID="BoxCorreo" runat="server" type="email" class="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="BoxIdPersona">ID:</label>
                            <asp:TextBox ID="BoxIdPersona" runat="server" type="text" Enabled="False" Visible="True" class="form-control"></asp:TextBox>
                        </div>


                         <!-- Botones de modificar usuario o eliminar usuario -->

                        <div class="form-group">

                            <asp:Button class="btn btn-secondary btn-sm" ID="Button2" runat="server" Text="Guardar Cambios" OnClick="GuardarCambios" style="margin-top:20px; margin-bottom:20px"/> 
                              

                        </div>


                </asp:Panel>




                </div>

               

              

                </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    

</asp:Content>
