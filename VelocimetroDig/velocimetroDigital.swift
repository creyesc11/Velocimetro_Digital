//
//  velocimetroDigital.swift
//  velocimetroDigital
//
//  Created by Carlos Reyes on 11/27/16.
//  Copyright (c) 2016 Carlos Reyes. All rights reserved.
//

import UIKit

// Declaración de la enumeracion: velocidades de tipo Int y sus respectivos valores.


enum Velocidades: Int{
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    // Declaración del inicializador que recibe la Velocidad y asignación de self
    // al valor de velocidadInicial.
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

// Declaración de la clase Auto.

class Auto {
    
    // Variable que se instancia llamada velocidad de la enumeración Velocidades.
    
    var velocidad : Velocidades
    
    // Se declara la función inicializadora y se crea una instancia de Velocidades
    // iniciando en apagado.
    
    init(){
        //self.velocidad = .Apagado
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    //  Declaración de la función cambioDeVelocidad() cambiando el valor de la
    //  velocidad ala siguiente velocidad gradual y,
    
    // si llega a VelocidadAlta cambia a VelocidadMedia. ** IMPORTANTE **
    
    //  Finalmente, la función debe regresar una tupla con la velocidad actual y una cadena con la leyenda de la velocidad correspondiente.
    //  Se escribió un switch para cada caso.
    
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
        
        var actual : Int
        var velocidadEnCadena : String
        
        actual = velocidad.rawValue
        
        switch velocidad {
            
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado. "
            
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad baja. "
            
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad media. "
            
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Alta. "
        }
        
        // Regresa la velocidad actual y su leyenda de la veloocidad correspondiente.
        
        return(actual, velocidadEnCadena)
    }
}


// Creación de la instancia de la clase Auto, llamada auto. 

var auto = Auto()

//  Se itera 20 veces usando un for llamadando la función cambiioDeVelocidad y se imprimen los valores en la consola.

for var i = 1; i <= 20; i++ {
    
    var velocidadActual = auto.cambioDeVelocidad()
    print("\(velocidadActual.actual), \(velocidadActual.velocidadEnCadena) \n\n")
    
    
}



