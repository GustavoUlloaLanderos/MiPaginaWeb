using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Gulloa.Modelo;

namespace Gulloa.controladores
{
    public class loginControlador


    {
        public static BaseDatosGulloaEntities dbc = new BaseDatosGulloaEntities();       

        public static Persona Login(string correo, string password) {

            
            Persona persona = dbc.Persona.SingleOrDefault(per => per.correo.Equals(correo));

            if (persona!=null)
                {
                    if (persona.pass.Equals(password))
                    {
                        return persona;

                    }
                    else
                    {
                        return null;

                    }

                }


            return null;
        }


      


    }



    
    
    


}