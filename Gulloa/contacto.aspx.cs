using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Gulloa.controladores;

namespace Gulloa
{
    public partial class contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviarSolicitud(object sender, EventArgs e)
        {


            Boolean confirmacion = ControladorSolicitud.addSolicitud(TextNombre.Text, TextCorreo.Text, TextAsunto.Text, TextMensaje.Text);


                Label2.Text = "Solicitud Enviada";
                Label2.ForeColor = System.Drawing.Color.Green;
                Label2.Visible = true;

                TextNombre.Text = "";
                TextCorreo.Text = "";
                TextAsunto.Text = "";
                TextMensaje.Text = "";

            }



        }

    }
