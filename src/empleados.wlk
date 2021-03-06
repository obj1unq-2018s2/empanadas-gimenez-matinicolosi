object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var totalAcumulado = 0
	var dineroActual = 0
	var deuda = 0
	method cobrarSueldo () {
		totalAcumulado = totalAcumulado + sueldo
		dineroActual = dineroActual + sueldo
		if(deuda > 0 and dineroActual >= deuda) {dineroActual = dineroActual - deuda
			deuda = 0
		}
		if(deuda > 0 and dineroActual < deuda) {deuda = deuda - dineroActual
			dineroActual = 0
		}
	}
	method gastar(cuanto) {
		if(dineroActual < cuanto){
			deuda = deuda + (cuanto - dineroActual)
			dineroActual = 0
		}
		else {dineroActual = dineroActual - cuanto}
	} 
	method totalDeuda () {return deuda}
	method totalDinero () {return dineroActual} 
	method totalCobrado () {return totalAcumulado}
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	method cobrarSueldo () {}
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
 }
}
