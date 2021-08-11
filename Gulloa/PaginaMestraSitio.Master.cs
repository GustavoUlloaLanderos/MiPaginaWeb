using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Gulloa.controladores;
using Gulloa.Modelo;

namespace Gulloa
{
    public partial class PaginaMestraSitio : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                Persona persona = (Persona)Session["persona"];

                if (persona != null)
                {
                    Label1.Text = persona.nombre + " " + persona.apellido;

                    PanellogOut.Visible = true;

                }
                else
                {
                    Label1.Text = "Inicie sesion";
                    PanellogOut.Visible = false;
                }


            }
            catch (Exception)
            {
                Label1.Text = "Inicie sesion";

            }

        }


        protected void verPerfil (object sender, EventArgs e)
        {

            Response.Redirect("perfilUsuario.aspx");

        }

        protected void logOut(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Redirect("inicio.aspx");
            



    }


    }
}