import plagas.*

class Hogar{
	var property nivelDeMugre = 0
	var property nivelDeConfort = 0
	
	method esBueno() = nivelDeConfort >= nivelDeMugre/2
	method efectosDeUnAtaque(plaga){
		nivelDeMugre += plaga.nivelDeDanio()
	}	
}

class Huerta{
	var property capacidadDeProduccion = 0
	var nivelDeProduccion
		
	method esBueno() = capacidadDeProduccion > nivelDeProduccion
	method efectosDeUnAtaque(plaga){
		if(plaga.transmiteEnfermedades()){
			 capacidadDeProduccion = capacidadDeProduccion - plaga.nivelDeDanio() * 0.90 - 10
		}
		else { capacidadDeProduccion -= plaga.nivelDeDanio() * 0.90}
	}
}

class Mascota {
	var property nivelDeSalud = 0
	
	method esBueno() = nivelDeSalud > 250
	method efectosDeUnAtaque(plaga){
		if (plaga.transmiteEnfermedades()){
			return 	nivelDeSalud -= plaga.nivelDeDanio()
		}
		else { return nivelDeSalud}	
	}
}

class Barrio {
	const property elementosDelBarrio = []
	
	method agregarElemento(elemento){
		elementosDelBarrio.add(elemento)
	}
}