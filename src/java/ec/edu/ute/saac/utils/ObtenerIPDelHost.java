package ec.edu.ute.saac.utils;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ObtenerIPDelHost {

    public ObtenerIPDelHost() {
    }

    public static String obtenerDatosIp() {
        try {
            InetAddress address = InetAddress.getLocalHost();
            String sHostName;
            sHostName = address.getHostName();
            // Cogemos la IP
            byte[] bIPAddress = address.getAddress();

            // IP en formato String
            String sIPAddress = "";

            for (int x = 0; x < bIPAddress.length; x++) {
                if (x > 0) {
                    // A todos los numeros les anteponemos
                    // un punto menos al primero
                    sIPAddress += ".";
                }
                // Jugamos con los bytes y cambiamos el bit del signo
                sIPAddress += bIPAddress[x] & 255;
            }
            return ("Nombre de la maquina local:" + sHostName) + ("IP de la maquina local:" + sIPAddress);
        } catch (UnknownHostException ex) {
            Logger.getLogger(ObtenerIPDelHost.class.getName()).log(Level.SEVERE, null, ex);
            return "No se ha podido resolver";
        }
    }

    public static String obtenerIP(String sHostName) {
        try {
            // Obtenemos la InetAddress de dicha URL
            InetAddress address = InetAddress.getByName(sHostName);
            // Cogemos la IP 
            byte[] bIPAddress = address.getAddress();
            return ip2string(bIPAddress);
            //return ip2string_v2(bIPAddress);
        } catch (UnknownHostException e) {
            // Volcamos la excepcion e indicamos que no se ha podido resolver
            // e.printStackTrace();
            return "No se ha podido resolver";
        }
    }

    public static String ip2string(byte[] bIPAddress) {
        String sIPAddress = "";
        for (int x = 0; x < bIPAddress.length; x++) {
            if (x > 0) {
                // A todos los numeros les anteponemos
                // un punto menos al primero    
                sIPAddress += ".";
            }
            // Jugamos con los bytes y cambiamos el bit del signo
            sIPAddress += bIPAddress[x] & 255;
        }
        return sIPAddress;
    }

    public static String ip2string_v2(byte[] bIPAddress) {
        String sIPAddress = "";
        for (int x = 0; x < bIPAddress.length; x++) {
            if (x > 0) {
                sIPAddress += ".";
            }
            sIPAddress += (bIPAddress[x] < 0) ? Integer.toString(bIPAddress[x] + 256) : Integer.toString(bIPAddress[x]);
        }
        return sIPAddress;
    }
}
