import cosas.*

object camion {

	const property cosas = []
	const peso = 1000

	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}

	method descargar(unaCosa) {
		cosas.remove(unaCosa)
	}

	method pesoTotal() {
		return cosas.sum({ elem => elem.peso() }) + peso
	}

	method excedidoDePeso() {
		const pesomaximo=2500
		return self.pesoTotal() > pesomaximo
	;
	}

	method objetosPeligrosos(nivel) {
		return cosas.filter({ elem => elem.nivelPeligrosidad() > nivel })
	}

	method objetosMasPeligrososQue(cosa) {
		return cosas.filter({ elem => elem.nivelPeligrosidad() > cosa.nivelPeligrosidad() })
	}


	method puedeCircularEnRuta(nivelMaximoPeligrosidad) {
		return cosas.all({ elem => elem.nivelPeligrosidad() < nivelMaximoPeligrosidad })
	}

}

