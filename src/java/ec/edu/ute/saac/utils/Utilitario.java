
package ec.edu.ute.saac.utils;

/**
 *
 * @author oscardavid
 */

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class Utilitario {
 
  
    private static final Log log = LogFactory.getLog(Utilitario.class);
    private Random random = new Random();

    protected Integer getNextValue() {
        return random.nextInt(64);
    }



    public static String devuelveFechaEnLetras() {

        Calendar fecha = Calendar.getInstance();
        fecha.setTime(new Date());
        String armaFecha = Utilitario.devuelveDiaSemana(fecha.get(Calendar.DAY_OF_WEEK)) + fecha.get(Calendar.DAY_OF_MONTH) + " de " + Utilitario.devuelveMes(fecha.get(Calendar.MONTH)) + " " + fecha.get(Calendar.YEAR) + " " + fecha.get(Calendar.HOUR_OF_DAY) + ":" + Utilitario.devuelveMinuto(fecha.get(Calendar.MINUTE));
        return armaFecha;
    }
    
    public static String trim(String valor){
        if(valor!=null)
            valor =valor.trim();
        return valor;
    }
    
    public static String toUpper(String valor){
        if(valor!=null)
            valor =valor.toUpperCase();
        return valor;
    }
    

    public static String devuelveFechaEnLetras(Date fechaParametro) {
        Calendar fecha = Calendar.getInstance();
        fecha.setTime(fechaParametro);
        String armaFecha = Utilitario.devuelveDiaSemana(fecha.get(Calendar.DAY_OF_WEEK)) + fecha.get(Calendar.DAY_OF_MONTH) + " de " + Utilitario.devuelveMes(fecha.get(Calendar.MONTH)) + " " + fecha.get(Calendar.YEAR) + " " + fecha.get(Calendar.HOUR_OF_DAY) + ":" + Utilitario.devuelveMinuto(fecha.get(Calendar.MINUTE)
                
                );
        return armaFecha;
    }

    public static boolean string2boolean(String valor){
        boolean resultado = false;
        if(valor!=null){
            valor=valor.trim();
            resultado = "1".equals(valor);
        }
        return resultado;
        
    }
    protected static String devuelveFechaEnLetrasSinHora(Date fechaParametro) {
        Calendar fecha = Calendar.getInstance();
        fecha.setTime(fechaParametro);
        String armaFecha = devuelveDiaSemana(fecha.get(Calendar.DAY_OF_WEEK)) + fecha.get(Calendar.DAY_OF_MONTH) + " de " + devuelveMes(fecha.get(Calendar.MONTH)) + " " + fecha.get(Calendar.YEAR);
        return armaFecha;
    }

    public static String devuelveMinuto(int minuto) {
        if (minuto < 10) {
            return String.valueOf("0" + minuto);
        } else {
            return String.valueOf(minuto);
        }
    }

    public static Date obtenerFechaDesde(Date fechaDesde) {
        Calendar fechaDesdeAux = Calendar.getInstance();
        fechaDesdeAux.setTime(fechaDesde);
        fechaDesdeAux.set(Calendar.HOUR_OF_DAY, 0);
        fechaDesdeAux.set(Calendar.MINUTE, 0);
        fechaDesdeAux.set(Calendar.SECOND, 0);
        return fechaDesdeAux.getTime();
    }

    protected Date obtenerFechaHasta(Date fechaHasta) {
        Calendar fechaHastaAux = Calendar.getInstance();
        fechaHastaAux.setTime(fechaHasta);
        fechaHastaAux.set(Calendar.HOUR_OF_DAY, 23);
        fechaHastaAux.set(Calendar.MINUTE, 59);
        fechaHastaAux.set(Calendar.SECOND, 59);
        return fechaHastaAux.getTime();
    }

 

    protected String devuelveCantidadEnMoneda(Double valor) {
        DecimalFormatSymbols simbols = new DecimalFormatSymbols();
        simbols.setDecimalSeparator('.');
        simbols.setPatternSeparator(',');
        NumberFormat formato = new DecimalFormat("############0.00", simbols);
        return formato.format(valor);
    }

    private static String devuelveDiaSemana(int dia) {
        switch (dia) {
            case 1:
                return "Domingo ";
            case 2:
                return "Lunes ";
            case 3:
                return "Martes ";
            case 4:
                return "Miércoles ";
            case 5:
                return "Jueves ";
            case 6:
                return "Viernes ";
            case 7:
                return "Sabado ";
            default:
                return "";

        }
    }

    private static String devuelveMes(int mes) {
        switch (mes) {
            case 0:
                return "Enero";
            case 1:
                return "Febrero";
            case 2:
                return "Marzo";
            case 3:
                return "Abril";
            case 4:
                return "Mayo";
            case 5:
                return "Junio";
            case 6:
                return "Julio";
            case 7:
                return "Agosto";
            case 8:
                return "Septiembre";
            case 9:
                return "Octubre";
            case 10:
                return "Noviembre";
            case 11:
                return "Diciembre";
            default:
                return "";
        }
    }


    protected Date devuelveFechaPorCadena(String cadena) {
        try {
            DateFormat fecha = new SimpleDateFormat("dd/MM/yyyy");
            Date fechaParseada = fecha.parse(cadena);
            Calendar cal = Calendar.getInstance();
            cal.setTime(fechaParseada);
            return cal.getTime();
        } catch (Exception e) {
            log.error("no se puede formatear", e);
            return null;
        }
    }

    protected boolean validaRangoFecha(Date fechaDesde, Date fechaHasta) throws Exception {
        Calendar fechaSistema = Calendar.getInstance();
        Calendar fechaIngresoUsuario = Calendar.getInstance();
        fechaSistema.setTime(fechaDesde);
        fechaIngresoUsuario.setTime(fechaHasta);

        String fechaSistemaString = fechaSistema.get(Calendar.YEAR) + "-" + fechaSistema.get(Calendar.MONTH) + "-" + fechaSistema.get(Calendar.DATE);
        String fechaIngresoString = fechaIngresoUsuario.get(Calendar.YEAR) + "-" + fechaIngresoUsuario.get(Calendar.MONTH) + "-" + fechaIngresoUsuario.get(Calendar.DATE);
        SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd");
        Date fechaSistemaAux = formatoFecha.parse(fechaSistemaString);
        Date fechaIngresoAux = formatoFecha.parse(fechaIngresoString);
        if (fechaSistemaAux.before(fechaIngresoAux) || fechaSistemaAux.equals(fechaIngresoAux)) {
            return true;
        } else {
            return false;
        }
    }


   






    protected String calculaAniosMeses(int anioDesde, int mesDesde, int anioHasta, int mesHasta) {
        int resultadoAnios = anioHasta - anioDesde;
        int resultadoMeses = mesHasta - mesDesde;
        String devuelveEdad = "";
        if (resultadoAnios == 0) {
            if (resultadoMeses == 1) {
                devuelveEdad = resultadoMeses + " mes";
            } else {
                if (resultadoMeses == 0) {
                    devuelveEdad = "1 mes";
                } else {
                    if (resultadoMeses < 0) {
                        devuelveEdad = "Edad no válida";
                    } else {
                        devuelveEdad = resultadoMeses + " meses";
                    }
                }
            }
        } else {
            if (resultadoAnios == 1 && mesDesde == mesHasta) {
                devuelveEdad = "1 año";
            } else {
                if (resultadoAnios == 1 && mesDesde > mesHasta) {
                    int mesesFinales = (12 - mesDesde) + mesHasta;
                    devuelveEdad = mesesFinales + " meses";
                } else {
                    if (resultadoAnios == 1 && mesDesde < mesHasta) {
                        if (resultadoMeses == 1) {
                            devuelveEdad = "1 año " + resultadoMeses + " mes";
                        } else {
                            devuelveEdad = "1 año " + resultadoMeses + " meses";
                        }
                    }
                }
            }
            if (resultadoAnios > 1 && mesDesde == mesHasta) {
                devuelveEdad = resultadoAnios + " años";
            } else {
                if (resultadoAnios > 1 && mesDesde > mesHasta) {
                    int mesesFinales1 = (12 - mesDesde) + (mesHasta);
                    resultadoAnios = resultadoAnios - 1;
                    if (resultadoAnios == 1) {
                        devuelveEdad = resultadoAnios + " año " + mesesFinales1 + " meses";
                    } else {
                        devuelveEdad = resultadoAnios + " años " + mesesFinales1 + " meses";
                    }
                } else {
                    if (resultadoAnios > 1 && mesDesde < mesHasta) {
                        if (resultadoMeses == 1) {
                            devuelveEdad = resultadoAnios + " años " + resultadoMeses + " mes";
                        } else {
                            devuelveEdad = resultadoAnios + " años " + resultadoMeses + " meses";
                        }
                    }
                }
            }
            if (resultadoAnios < 0) {
                devuelveEdad = "Rango no válido";
            }
        }
        return devuelveEdad;
    }

    
   
    private int nextValidDay(int dayOfWeek) {
        //dom=1, lun=2, mar=3, mie=4, jue=5, vie=6, sab=7
        //return dayOfWeek == 6 ? 3 : dayOfWeek == 7 ? 2 : 1;
        return dayOfWeek == 7 ? 2 : dayOfWeek == 1 ? 1 : 0;
    } 
}
