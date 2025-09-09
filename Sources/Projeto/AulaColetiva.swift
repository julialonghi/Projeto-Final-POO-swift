import Foundation

class AulaColetiva: Aula {
    private(set) var alunosInscritos [String : Aluno] = [:]
    var capacidadeMaxima: Int 

    init(nome: String, instrutor: Instrutor, alunosInscritos [String : Aluno], capacidadeMaxima: Int) {
        self.alunosInscritos = alunosInscritos
        self.capacidadeMaxima = 25
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool {
        if (alunosInscritos.count >= capacidadeMaxima) {
            print("Aula lotada")
        } else {
            print("Aula com vaga")
        }
        if (alunosInscritos.contains {$1.key == aluno}) {
            print("Aluno já está inscrito")
        } else {
            alunosInscritos.insert(aluno)
            print("Aluno adicionado com sucesso!")
        }
    }

}