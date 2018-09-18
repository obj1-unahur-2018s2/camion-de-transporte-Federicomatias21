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
		return cosas.sum({ elem => cosas.peso() }) + peso
	}

	method excedidoDePeso() {
		return self.pesoTotal() > 2500
	;
	}

	method objetosPeligrosos(nivel) {
		return cosas.filter({ elem => elem.nivelPeligrosidad() > nivel })
	}

	method objetosMasPeligrososQue(cosa) {
		return cosas.all({ elem => elem.nivelPeligrosidad() > cosa.nivelPeligrosidad() })
	}

	method puedeCircularEnRuta(nivelMaximoPeligrosidad) {
		return cosas.all({ elem => elem.nivelPeligrosidad() > nivelMaximoPeligrosidad })
	}

}

