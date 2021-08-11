<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMestraSitio.Master" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="Gulloa.contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h2 class="titulo">Solicitud De Contacto</h2>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

        <div class="mx-auto col-4">

            

                <div class="form-group">
                    <label for="TextNombre">Nombre:</label>   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextNombre" ForeColor="Red" ErrorMessage="Ingrese Nombre"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextNombre" runat="server" class="form-control"></asp:TextBox>
                </div>
                                                       
          

                <div class="form-group">
                    <label for="TextCorreo">Correo:</label>  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextCorreo" ForeColor="Red" ErrorMessage="Ingrese Un Correo"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextCorreo"  ErrorMessage="Ingrese Un Correo Valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="TextCorreo" runat="server" type="email" class="form-control"></asp:TextBox>
                </div>

                  <div class="form-group">
                    <label for="TextAsunto">Asunto:</label>  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextAsunto" ForeColor="Red" ErrorMessage="Ingrese Asunto"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextAsunto" runat="server" class="form-control"></asp:TextBox>
                </div>
                                    
         

                <div class="form-group">
                    <label for="TextMensaje">Mensaje:</label>  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextMensaje" ForeColor="Red" ErrorMessage="Ingrese mensaje"></asp:RequiredFieldValidator>
                   <asp:TextBox id="TextMensaje" TextMode="multiline" Columns="50" Rows="5"  class="form-control" runat="server" />
                </div>


                <div class="mx-auto">
                    <asp:Button ID="Button1" runat="server" Text="Enviar" Onclick="enviarSolicitud" Style="margin-top: 20px; margin-bottom: 20px; margin-left: 180px" /> 
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </div>

               

                      

        </div>

                       </ContentTemplate>
            </asp:UpdatePanel>
</asp:Content>
