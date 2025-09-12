import Foundation

class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String : Aluno] = [:] 
    var capacidadeMaxima: Int 

    override init(nome: String, instrutor: Instrutor) {
        self.capacidadeMaxima = 3
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(_ aluno: Aluno) -> Bool {
        if alunosInscritos.count >= capacidadeMaxima {
            print("Aula lotada")
            return false
        }
        if alunosInscritos.keys.contains(aluno.matricula) {
            print("Aluno já está inscrito")
            return false
        }
        alunosInscritos[aluno.matricula] = aluno
        print("O aluno \(aluno.nome), com Matricula: \(aluno.matricula).")
        print("Aluno adicionado com sucesso!")
        return true
    }

    override func getDescricao() -> String {
        return super.getDescricao() + ", Número de vagas: \(capacidadeMaxima-(alunosInscritos.count)), Capacidade da Turma: \(capacidadeMaxima)"
    }

}