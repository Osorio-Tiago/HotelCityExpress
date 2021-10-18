package com.examen.ui.reservacion;

import java.io.Serializable;
import java.util.Objects;
import java.util.Date;

public class Reserva implements Serializable {

    String nombre;
    String correo;
    int telefono;
    int cantidadDias;
    int cantidadAdultos;
    int cantidadNinnos;
    Boolean desayuno;
    Boolean wifi;
    Boolean parqueo;
    double precioFinal = 0;



    public Reserva(){

    }

    public Reserva(String nombre, String correo, int telefono, int cantidadDias, int cantidadAdultos, int cantidadNinnos, Boolean desayuno, Boolean wifi, Boolean parqueo) {
        this.nombre = nombre;
        this.correo = correo;
        this.telefono = telefono;
        this.cantidadDias = cantidadDias;
        this.cantidadAdultos = cantidadAdultos;
        this.cantidadNinnos = cantidadNinnos;
        this.desayuno = desayuno;
        this.wifi = wifi;
        this.parqueo = parqueo;
        this.precioFinal = 0;
    }

    public String getNombre() {
        return nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public int getTelefono() {
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
}
