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
    public partial class administracion : System.Web.UI.Page
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

                Registro registro = dbc.Registro.SingleOrDefault(reg => reg.fk_persona.Equals(persona.id_persona));

             

                if (registro.fk_rol == 3){

                    Response.Redirect("inicioSesion.aspx");

                }

                cargarGrid();



            }

        }



        protected void BuscarPersona(object sender, EventArgs e)
        {
            Persona persona = new Persona();

          persona = ControladorPersona.findPersona(TxtBuscar.Text);

            if (persona != null)
            {
                Panel1.Visible = true;

                Label1.Text = "Usuario Encontrado";
                Label1.ForeColor = System.Drawing.Color.Green;


                BoxNombre.Text = persona.nombre;
                BoxApellido.Text = persona.apellido;
                BoxEdad.Text = persona.edad.ToString();
                BoxCorreo.Text = persona.correo;
                BoxIdPersona.Text = persona.id_persona.ToString();

            }
            else
            {
                Label1.Text = "Usuario No Encontrado";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }

        protected void EliminarUsuario(object sender, EventArgs e)
        {

            int id = Int32.Parse(BoxIdPersona.Text);

            Boolean resultado = ControladorPersona.eliminarPersona(id);
            

            Label1.Text = "Usuario Eliminado";
            Label1.ForeColor = System.Drawing.Color.Green;
         
            Panel1.Visible = false;


        }

        protected void GuardarCambios(object sender, EventArgs e)
        {

            BaseDatosGulloaEntities dbc = new BaseDatosGulloaEntities();
            int id = int.Parse(BoxIdPersona.Text);
          

            Boolean resul = ControladorPersona.editarPersona(BoxNombre.Text,BoxApellido.Text,BoxEdad.Text,BoxCorreo.Text, id);

            if(resul== true)
            {
                Label1.Text = "Datos Guardados";
                Label1.ForeColor = System.Drawing.Color.Green;
                Panel1.Visible = false;

            }
            else
            {
                Label1.Text = "Error";
                Label1.ForeColor = System.Drawing.Color.Red;
                Panel1.Visible = false;

            }
            


        }

        public void cargarGrid()
        {

            GridSolicitudes.DataSource = from s in ControladorSolicitud.getAll()
                                         select new
                                         {
                                             ID = " " + s.id_solicitud +" " ,
                                             Nombre = " "+ s.nombre + " ",
                                             Correo = " " + s.correo + " ",
                                             Asunto = " " + s.asunto + " ",
                                             Mensaje = " " + s.mensaje + " "


                                         };
            GridSolicitudes.DataBind();
        }





    }



}

