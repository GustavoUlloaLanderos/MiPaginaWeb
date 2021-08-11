<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMestraSitio.Master" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Gulloa.registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Formulario Registro -->  

     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

    <div class="row">

        <div class="col-2"></div>


        <div class="col-5">

           
     
                <h2 class="titulo" >Formulario Registro</h2>
                

                <div class="form-group">               
                    <label for="TextNombre">Nombre:</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextNombre" ForeColor="Red" ErrorMessage="Ingrese Nombre"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextNombre" class="form-control" runat="server"></asp:TextBox>
                </div>

                

                <div class="form-group">
                    <label for="TextApellido">Apellido:</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextApellido" ForeColor="Red" ErrorMessage="Ingrese Apellido"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextApellido" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="TextEdad">Edad:</label> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextEdad" ForeColor="Red" ErrorMessage="Ingrese Edad"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Edad No Valida" ForeColor="Red" ControlToValidate="TextEdad" Type="Integer" MinimumValue="5" MaximumValue="125"></asp:RangeValidator>
                    <asp:TextBox ID="TextEdad"  class="form-control" runat="server" type="number" ></asp:TextBox>
                </div>


                    

                <div class="form-group">
                    <label for="TextCorreo">Correo:</label>  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextCorreo" ForeColor="Red" ErrorMessage="Ingrese Correo"></asp:RequiredFieldValidator>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextCorreo"  ErrorMessage="Ingrese Un Correo Valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="TextCorreo" class="form-control" runat="server" type="email"></asp:TextBox>
                </div>

                     
                    
         

                <div class="form-group">
                    <label for="TextPassword">Contraseña:</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextPassword" ForeColor="Red" ErrorMessage="Ingrese contraseña"></asp:RequiredFieldValidator>                    
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextPassword" ControlToCompare="TextPassword2" ForeColor="Red" ErrorMessage="Las Contraseñas No Coinciden"></asp:CompareValidator>
                    <asp:TextBox ID="TextPassword" class="form-control" runat="server" type="password"></asp:TextBox>
                </div>

            <div class="form-group">
                    <label for="TextPassword2">Repita Contraseña:</label> 
                    <asp:TextBox ID="TextPassword2" class="form-control" runat="server" type="password"></asp:TextBox>
                </div>

            <div class="divdistacia">
                <asp:Button ID="Button1" runat="server" Text="Registrarse" OnClick="Button1_Click" class="btn btn-secondary btn-lg"/>       

            </div>


                        
                   
                   

       

        


    </div>

     <!-- img registro -->

    <div class="col-2 mx-auto">
        <img src="lib/img/registro.png" alt="Responsive image" width="600" class="img-fluid" style="margin-top: 30px">
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                        <ProgressTemplate>
                            <img src="lib/img/guardando.gif" alt="Responsive image" width="80" class="img-fluid" style="margin-top: 30px">
                            <asp:Label runat="server" Text="Registrando.."></asp:Label>
                        </ProgressTemplate>
                    </asp:UpdateProgress>

        <div class="divdistacia">

            <asp:Label ID="estado" runat="server" Text="" Visible="False"></asp:Label>
         
        </div>

    </div>

             </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
