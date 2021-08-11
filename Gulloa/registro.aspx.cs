using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using  Gulloa.controladores;
using Gulloa.Modelo;

namespace Gulloa
{
    public partial class registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            System.Threading.Thread.Sleep(2000);           

                    int rol = 3;

                    Boolean confirmacion = ControladorPersona.addPersona(TextNombre.Text, TextApellido.Text, TextEdad.Text, TextCorreo.Text, TextPassword.Text, rol);


                    if (confirmacion == true)
                    {
                        Response.Redirect(string.Format("registroExitoso.aspx", TextNombre));

                    }
                    else
                    {
                       
                            estado.Visible = true;
                            estado.ForeColor = System.Drawing.Color.Red;
                            estado.Text = "Correo Ya Registrado";
                            TextCorreo.Text = "";

                                               
                    }

                }
               


            }

            
        }
   

