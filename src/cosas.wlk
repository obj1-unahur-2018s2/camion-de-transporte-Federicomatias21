object knightRider {

	method peso() {
		return 500
	}

	method nivelPeligrosidad() {
		return 10
	}

}

object bumblebee {

	var transformadoEnAuto = true

	method peso() {
		return 800
	}

	method nivelPeligrosidad() {
		return if (transformadoEnAuto) {
			15
		} else {
			30
		}
	}

	method transformar() {
		transformadoEnAuto = not transformadoEnAuto
	}

}

object packLadri {

	var _cantidad = 0

	;
	method cantidad(cantidad) {
		_cantidad = cantidad
	}

	method peso() {
		if (_cantidad == 0) {
			return 0
		;} else {
			return _cantidad * 2
		}
	}

	method nivelPeligrosidad() {
		return 2
	}

}

object packAdrena {

	var _peso

	method setPeso(peso) {
		_peso = peso
	}

	method peso() {
		return _peso
	}

	method nivelPeligrosidad() {
		return 1
	}

}

object bateriaAnti {

	var _misiles = false

	method misiles(siono) {
		_misiles = siono
	}

	method peso() {
		if (_misiles) {
			return 300
		} else {
			return 200
		}
	}

	method nivelPeligrosidad() {
		if (_misiles) {
			return 100
		} else {
			return 0
		}
	}

}

object contenedorPor {

	const property cosas = []

	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}

	method peso() {
		if(!cosas.isEmpty())
		{
		 return 100	
		}
		return 100 + cosas.filter({ elem => cosas.peso() })
	}

}

