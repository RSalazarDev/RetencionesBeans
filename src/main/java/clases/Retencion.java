/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author salaz
 */
public class Retencion {
    private double salario,retencion,salarioNeto;
    
    public Retencion(String salario){
        
        this.salario = Double.parseDouble(salario);
        if (this.salario<=1000) {
            this.retencion = 0;
        }else if(this.salario<=3000){
            this.retencion = (this.salario*10)/100;
        }else{
            this.retencion = (this.salario*20)/100;
        }
        this.salarioNeto = this.salario-this.retencion;
    }
    
    
  
    
    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public double getRetencion() {
        return retencion;
    }

    public void setRetencion(double retencion) {
        this.retencion = retencion;
    }

    public double getSalarioNeto() {
        return salarioNeto;
    }

    public void setSalarioNeto(double salatioNeto) {
        this.salarioNeto = salatioNeto;
    }
    
    
}
