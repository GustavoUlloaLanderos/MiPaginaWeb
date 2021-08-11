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
    public partial class perfilUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Persona persona = (Persona)Session["persona"];

            if (persona == null)
            {

                Response.Redirect("inicioSesion.aspx");

            }
            else
            {

                BaseDatosGulloaEntities dbc = new BaseDatosGulloaEntities();

                Persona cargarPersona = dbc.Persona.SingleOrDefault(per => per.correo.Equals(persona.correo));

              if (BoxNombre.Text.Equals(""))
                {
                    BoxNombre.Text = cargarPersona.nombre;
                    BoxApellido.Text = cargarPersona.apellido;
                    BoxEdad.Text = cargarPersona.edad.ToString();
                    BoxCorreo.Text = cargarPersona.correo;
                    BoxIdPersona.Text = cargarPersona.id_persona.ToString();

                }



            }

        }

            protected void GuardarCambios(object sender, EventArgs e)
            {

           
            int id = int.Parse(BoxIdPersona.Text);

            System.Threading.Thread.Sleep(2000);

            string nuevoNombre = BoxNombre.Text;
            System.Diagnostics.Debug.WriteLine(nuevoNombre);



            Boolean resul = ControladorPersona.editarPersona(BoxNombre.Text,BoxApellido.Text,BoxEdad.Text,BoxCorreo.Text,id);

            

            if (resul == true)
            {
                estado.Visible = true;
                estado.ForeColor = System.Drawing.Color.Green;
                estado.Text = "Datos Actualizados";

            }
            else
            {
                estado.Visible = true;
                estado.ForeColor = System.Drawing.Color.Red;
                estado.Text = "Error Al Actualizar";

            }

           
                

        }

  
                

            }

        }
    

