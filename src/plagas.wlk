class Plaga{
	var poblacion
	
	method transmiteEnfermedades() = poblacion >= 10
	method efectosDeUnAtaque(){ poblacion += poblacion * 1.1 }
	method ataque(elemento){
		self.efectosDeUnAtaque()
		elemento.efectosDeUnAtaque(self)
	}
}

class PlagaCucaracha inherits Plaga{
	var property pesoPromedio = 0
	
	method nivelDeDanio() = poblacion/2
	
	override method transmiteEnfermedades(){
		return super() and pesoPromedio >= 10
	}
	override method efectosDeUnAtaque(){
		 super() 
		 pesoPromedio += 2
	}
}

class PlagaPulga inherits Plaga {
	
	method nivelDeDanio() = poblacion * 2
}

class PlagaGarrapata inherits PlagaPulga {
	override method efectosDeUnAtaque(){ poblacion += poblacion * 1.2}
}

class PlagaMosquito inherits Plaga {
	
	method nivelDeDanio() = poblacion
	
	override method transmiteEnfermedades() {
		return super() and poblacion % 3 == 0
	}
}