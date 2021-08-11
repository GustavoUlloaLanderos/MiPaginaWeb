<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMestraSitio.Master" AutoEventWireup="true" CodeBehind="quienes.aspx.cs" Inherits="Gulloa.quienes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!--Cuadros con informacion -->



    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <img
                        src="lib/img/who.png"
                        class="card-img-top"
                        alt="..." />
                    <div class="card-body">
                        <h5 class="card-title">Quienes Somos</h5>
                        <p class="card-text">
                            <p>Somos una organización público-privada cuyo propósito es impulsar la transformación de Chile hacia el desarrollo sostenible.</p>

                            <p>Por más de 40 años hemos creado colaborativamente soluciones innovadoras de alto impacto para el país, abordando desafíos locales de alcance global.</p>

                            <p>
                                Hemos sido pioneros potenciando y habilitando distintos sectores productivos, como la industria acuícola, el sector agroindustrial, el movimiento hacia
                                energías renovables como la solar, los primeros fondos de capital de riesgo en Latinoamérica, entre otros.
                            </p>


                        </p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 d-none d-lg-block">
                <div class="card">
                    <img
                        src="lib/img/propo.png"
                        class="card-img-top"
                        alt="..." />
                    <div class="card-body">
                        <h5 class="card-title">Nuestro Proposito</h5>
                        <p class="card-text">
                            Somos una organización público-privada cuyo propósito es innovar en soluciones de alto impacto que impulsen el desarrollo sostenible en Chile.
                        </p>

                    </div>
                </div>
            </div>

            <div class="col-lg-4 d-none d-lg-block">
                <div class="card">
                    <img
                        src="lib/img/movi.png"
                        class="card-img-top"
                        alt="..." />
                    <div class="card-body">
                        <h5 class="card-title">Formacion En Movimiento</h5>
                        <p class="card-text">
                            Hoy más que nunca se vuelve imprescindible para los líderes educativos gestionar el cambio y la incertidumbre que éste trae consigo.
                            En nuestros cursos además de conocimientos, promovemos las habilidades del siglo XXI; la comunicación, la reflexión y el proceso analítico,
                            la búsqueda de soluciones a desafíos relevantes, el trabajo colaborativo.
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </div>




</asp:Content>
