import Foundation

class Aula {
    var nome: String
    var instrutor: Instrutor

    init(nome: String, instrutor: Instrutor) {
        self.nome = nome
        self.instrutor = instrutor
    }

    func getDescricao() -> String {
        return "Nome da aula: \(nome) Nome do instrutor: \(instrutor.nome)"
    }
}