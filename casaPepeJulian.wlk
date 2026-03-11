object casa{
    var viveres = 50
    var monto = 0

    method se_rompe_algo (_monto){
        monto += _monto
        viveres -= 10
    }

    method hay_viveres(){
        return viveres > 40
    } 


    method hay_reparaciones() {
        return monto > 0
    }

    method esta_en_orden() {
        return self.hay_viveres() && !self.hay_reparaciones()
    }

}


object cuentaCorriente {
    var saldo = 0

    method depositar(_monto){
        saldo += _monto
        }

    method extraer(_monto){
        saldo -= _monto
    } 

    method ver_saldo() = saldo
}

object cuentaConGastos {
    var saldo = 0

    method depositar(_monto, costo){
        saldo = saldo + _monto - costo
    }

    method extraer(_monto){
        saldo -= _monto
    }

    method ver_saldo() = saldo
}

object cuentaCombinada {
    var primaria = 0
    var secundaria = 500
    const costo = 20

    method depositar(monto){
        primaria = primaria + monto - costo
    }

    method extraer(monto){
        if (primaria >= monto){
            primaria -= monto
        }else {
            secundaria -= monto
        }
    }

    method saldo(cuenta){
        return primaria + secundaria
    }
    
}

object cuentaConGastos {
    var saldo = 0

    method depositar(_monto, costo){
        saldo = saldo + _monto - costo
    }

    method extraer(_monto){
        saldo -= _monto
    }

    method ver_saldo() = saldo
}

object cuentaCombinada {
    var primaria = 0
    var secundaria = 500
    const costo = 20

    method depositar(monto, costo){
        cuentaCombinada.depositar(monto)
    }

    method extraer(monto){
        if (primaria >= monto){
            primaria -= monto
        }else {
            secundaria -= monto
        }
    }

    method saldo(cuenta){
        return primaria + secundaria
    }
    
}

