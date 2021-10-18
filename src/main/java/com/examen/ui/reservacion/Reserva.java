package com.examen.ui.reservacion;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;
import java.util.Objects;
import java.util.Date;

public class Reserva implements Serializable {

    String nombre;
    String correo;
    double telefono;
    String fechaIngreso;
    String fechaSalida;
    int cantidadDias;
    int cantidadNoches;
    int cantidadAdultos;
    int cantidadNinnos;
    Boolean desayuno;
    Boolean wifi;
    Boolean parqueo;
    double precioFinal = 0;



    public Reserva(String nombre, String correo, double telefono, String fechaIngreso, String fechaSalida,int cantidadAdultos, int cantidadNinnos, Boolean desayuno, Boolean wifi,
                   Boolean parqueo){
        this.nombre = nombre;
        this.correo = correo;
        this.telefono = telefono;
        this.fechaIngreso = fechaIngreso;
        this.fechaSalida = fechaSalida;
        this.cantidadAdultos = cantidadAdultos;
        this.cantidadNinnos = cantidadNinnos;
        this.desayuno = desayuno;
        this.wifi = wifi;
        this.parqueo = parqueo;
        this.precioFinal = 0;
    }

    public String getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(String fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public String getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(String fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public int getCantidadDias() {
        return cantidadDias;
    }

    public void setCantidadDias(int cantidadDias) {
        this.cantidadDias = cantidadDias;
    }

    public double getPrecioFinal() {
        return precioFinal;
    }

    public void setPrecioFinal(double precioFinal) {
        this.precioFinal = precioFinal;
    }

    public String getNombre() {
        return nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public double getTelefono() {
        return telefono;
    }

    public int getCantidadAdultos() {
        return cantidadAdultos;
    }

    public int getCantidadNinnos() {
        return cantidadNinnos;
    }

    public Boolean getDesayuno() {
        return desayuno;
    }

    public Boolean getWifi() {
        return wifi;
    }

    public Boolean getParqueo() {
        return parqueo;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public void setCantidadAdultos(int cantidadAdultos) {
        this.cantidadAdultos = cantidadAdultos;
    }

    public void setCantidadNinnos(int cantidadNinnos) {
        this.cantidadNinnos = cantidadNinnos;
    }

    public void setDesayuno(Boolean desayuno) {
        this.desayuno = desayuno;
    }

    public void setWifi(Boolean wifi) {
        this.wifi = wifi;
    }

    public void setParqueo(Boolean parqueo) {
        this.parqueo = parqueo;
    }

    public void setPrecioFinal(){
        int precioBase = 34000;
        double precioFinal;
        double precioConDesayuno;

        //Total por noche
        if(cantidadNinnos == 0){
            precioFinal = cantidadAdultos * precioBase;
        }else{
            precioFinal = cantidadAdultos * precioBase * (double)(cantidadNinnos/2);
        }

        //Total por dias

        precioFinal = precioFinal * cantidadDias;

        //Tiene desyuno o no

        if(desayuno){
            precioConDesayuno = precioBase * ((precioBase*1.5)/100) * cantidadDias;
            this.precioFinal =  precioFinal + precioConDesayuno;
        }else {
            this.precioFinal = precioFinal;
        }
    }


    public void setCantidadDiasNoches(){

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.ENGLISH);

        LocalDate dateStart = LocalDate.parse(fechaIngreso, formatter);

        LocalDate dateEnd = LocalDate.parse(fechaSalida, formatter);

        this.cantidadDias = dateEnd.compareTo(dateStart);
        this.cantidadNoches = cantidadDias-1;
    }

}
