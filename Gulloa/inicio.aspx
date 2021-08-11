<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMestraSitio.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Gulloa.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- video inicio -->


    <div class="col-md-8 mx-auto" style="margin-top: 20px">
        <video src="lib/video/videoniños.mp4" playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
        </video>

    </div>


    <!--Titulo -->

    <div class="col-md-4 mx-auto titulo" style="margin-top: 5px; text-align: center">

        <h2 class="titulo">Nuestro Proposito </h2>

    </div>




    <section class="my-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">

                    <p>En un escenario de cambios trascendentales para la sociedad, como la digitalización, la migración y los desafíos medioambientales, buscamos que los profesionales de la educación puedan alcanzar las transformaciones que la educación requiere.</p>

                    <p>Desarrollamos en los actores del sistema educativo habilidades que les permitan expandir su potencial y crear valor social para la sociedad de conocimiento.</p>

                    <p>Llevamos más de 20 años creando soluciones de avanzada y de alto impacto en la enseñanza y aprendizaje de niños, niñas y jóvenes, preparando hoy el país del futuro.</p>


                </div>
            </div>
        </div>
    </section>



</asp:Content>
