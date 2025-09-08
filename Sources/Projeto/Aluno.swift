import Foundation

class Aluno: Pessoa {
    var matricula: String
    var nivel: NivelAluno
    private (set) var plano: Plano

    init(nome: String, email: String, matricula: String, nivel: NivelAluno, plano: String) {
        self.matricula = matricula 
        self.nivel = .iniciante
        super.init(nome: nome, email: email)
    }

    override func getDescricao() -> String {
        return super.getDescricao() + "Matrícula: \(matricula), Plano: \(plano)"
    }
}