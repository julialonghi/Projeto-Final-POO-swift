import Foundation 

class PlanoAnual: Plano {
    override init(nome: String) {
        super.init(nome: "Plano Anual (Promocional)")
    }

    override func calcularMensalidade() -> Double {
        return ((120*12)*0.80)/12
    }
}