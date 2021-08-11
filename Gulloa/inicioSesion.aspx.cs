using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Gulloa.Modelo;
using Gulloa.controladores;

namespace Gulloa
{
    public partial class inicioSesion : System.Web.UI.Page
    {
       
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Persona persona = ControladorPersona.findPersona(TextCorreo.Text);
            
            {
                if (persona == null)
                {
                    Label2.Text = "Correo No Registrado";

                }
                else
                {
                    if (persona.pass.Equals(TextPassword.Text))
                    {
                        Session["persona"] = persona;

                        Response.Redirect("inicio.aspx");

                    }
                    else
                    {
                        Label2.Text = "Contraseña Incorrecta";

                    }

                   

                }

            }

        }


        protected void logOut(object sender, EventArgs e)
        {

            Session["Persona"] = null;
            Session.Clear();
            Response.Cookies.Clear();
            Response.Cache.SetNoStore();
            Response.CacheControl = "no-cache";
            Response.Redirect("login.aspx");



        }


    }
}