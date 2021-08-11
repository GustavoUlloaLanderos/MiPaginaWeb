using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Gulloa.Modelo;


namespace Gulloa.controladores
{
    public class ControladorSolicitud

    {

        public static BaseDatosGulloaEntities dbc = new BaseDatosGulloaEntities();

       

        public static Boolean addSolicitud(string nombreSolicitud, string correoSolicitud, string asuntoSolicitud, string mensajeSolicitud) {


            Solicitud nuevaSolicitud = new Solicitud();
            nuevaSolicitud.nombre = nombreSolicitud;
            nuevaSolicitud.correo = correoSolicitud;
            nuevaSolicitud.asunto = asuntoSolicitud;
            nuevaSolicitud.mensaje = mensajeSolicitud;

            dbc.Solicitud.Add(nuevaSolicitud);

            dbc.SaveChanges();

            return true;


        }

        public static List<Solicitud> getAll()
        {
            var solicitud = from s in dbc.Solicitud
                            select s;

                            return solicitud.ToList();

        }



    
    
    }
}