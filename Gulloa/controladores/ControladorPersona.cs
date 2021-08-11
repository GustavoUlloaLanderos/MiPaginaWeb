using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Gulloa.Modelo;
namespace Gulloa.controladores

{


    public class ControladorPersona

    {
        //instancia del contexto

        public static BaseDatosGulloaEntities dbc = new BaseDatosGulloaEntities();

        //Agregar Persona


        public static Boolean addPersona(string nombre, string apellido, string edad, string correo, string password, int rol)

        {
            try
            {

                Persona persona = dbc.Persona.SingleOrDefault(per => per.correo.Equals(correo));

                if (persona == null)
                {

                    Persona nuevaPersona = new Persona();

                    Registro nuevoRegistro = new Registro();

                    nuevaPersona.nombre = nombre;
                    nuevaPersona.apellido = apellido;
                    nuevaPersona.edad = Int32.Parse(edad);
                    nuevaPersona.correo = correo;
                    nuevaPersona.pass = password;

                    dbc.Persona.Add(nuevaPersona);

                    nuevoRegistro.fk_persona = nuevaPersona.id_persona;
                    nuevoRegistro.fk_rol = rol;

                    
                    dbc.Registro.Add(nuevoRegistro);


                    dbc.SaveChanges();
                    return true;
                }
                else
                {
                    return false;
                }

            }

            catch (Exception e)

            {
                Console.WriteLine(e);
                return false;
            }
        }
    

        //Buscar Persona por correo

        public static Persona findPersona(string correo)
        {
            return dbc.Persona.SingleOrDefault(per => per.correo.Equals(correo));
        }


        //modificar Persona

        public static Boolean editarPersona(string nombre, string apellido, string edad, string correo, int id_persona)
        {
           
            Persona persona = dbc.Persona.SingleOrDefault(per => per.id_persona.Equals(id_persona));
            persona.nombre = nombre;
            persona.apellido = apellido;
            persona.edad = Int32.Parse(edad);
            persona.correo = correo;
            
            dbc.SaveChanges();            
            return true;

        }


        //Eliminar Persona

        public static Boolean eliminarPersona(int id_persona)
        {

            Registro registro = dbc.Registro.SingleOrDefault(reg => reg.fk_persona.Equals(id_persona));
            Persona persona = dbc.Persona.Find(id_persona);
            dbc.Registro.Remove(registro);
            dbc.Persona.Remove(persona);
           
            dbc.SaveChanges();
            return true;

        }






    }




}






