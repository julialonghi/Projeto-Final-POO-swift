import Foundation 

class PlanoAnual: Plano {
    override init(nomePlano: String) {
        super.init(nomePlano: "Plano Anual (Promocional)")
    }

    override func calcularMensalidade() -> Double {
        return ((120*12)*0.80)/12
    }
}