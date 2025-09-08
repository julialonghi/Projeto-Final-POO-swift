import Foundation

class PlanoMensal: Plano {
    override init(nomePlano: String) {
        super.init(nomePlano: "Plano Mensal")
    }

    override func calcularMensalidade() -> Double {
        return 120.0
    }
}