import Foundation

class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String : Aluno] = [:] 
    var capacidadeMaxima: Int 

    override init(nome: String, instrutor: Instrutor) {
        self.capacidadeMaxima = 3
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(_ aluno: Aluno) -> Bool {
        if (alunosInscritos.count >= capacidadeMaxima) {
            print("Aula lotada")
            return false 
        } else {
            print("Aula com vaga")
            print(alunosInscritos)
            return true
        }
        if (alunosInscritos.keys.contains(aluno.matricula)) {
            print("Aluno já está inscrito")
            return false
        } else {
            alunosInscritos[aluno.matricula] = aluno
            print("Aluno adicionado com sucesso!")
            return true
        }
    }

    override func getDescricao() -> String {
        return super.getDescricao() + "Número de vagas: \((alunosInscritos.count)-capacidadeMaxima) Capacidade da Turma: \(capacidadeMaxima)"
    }

}