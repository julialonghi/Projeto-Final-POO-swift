import Foundation

class PlanoMensal: Plano {
    override init(nome: String) {
        super.init(nome: "Plano Mensal")
    }

    override func calcularMensalidade() -> Double {
        return 120.0
    }
}