<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMestraSitio.Master" AutoEventWireup="true" CodeBehind="inicioSesion.aspx.cs" Inherits="Gulloa.inicioSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Login -->

    <div class="row">

        <div class="col-4">
            <img src="lib/img/login.png" alt="Responsive image">
        </div>



        <div class="col-4 form-group">

            
                 <h1 class="titulo">Login</h1>
            

           


            <div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextCorreo"  ErrorMessage="Ingrese Un Correo Valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextCorreo" ForeColor="Red" ErrorMessage="Ingrese Un Correo"></asp:RequiredFieldValidator>
                <label for="TextCorreo">Correo:</label> 
                <asp:TextBox ID="TextCorreo" runat="server" type="email " class="form-control"></asp:TextBox>
            </div>

            <div class="divdistacia">
                <label for="TextPassword">Contraseña:</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPassword" ForeColor="Red" ErrorMessage="Ingrese La contraseña"></asp:RequiredFieldValidator>
                
                <asp:TextBox ID="TextPassword" runat="server" type="password" class="form-control"></asp:TextBox>
            </div>



            <div class="divdistacia ">

                <asp:Button ID="Button1" runat="server" Text="Entrar" OnClick="Button1_Click" class="btn btn-secondary btn-lg" />

            </div>



            <div class=" mx-auto " style="text-align: center">

                <asp:Label ID="Label2" runat="server" Style="color: red"></asp:Label>
            </div>



        </div>


         
       

    </div>

    
    
     <footer class="bg-dark text-center text-white col-12 page-footer">
        <div class="text-center p-3 col-12" style="background-color: rgba(0, 0, 0, 0.2);">
    Menu Administracion 
    <a class="text-white" href="administracion.aspx">ENTRAR</a>
  </div>

    </footer>






</asp:Content>
