import Foundation

class Academia {
    let nome: String
    private(set) var alunosMatriculados: [String: Aluno] = [:]
    private(set) var instrutoresContratados: [String: Instrutor] = [:]
    private(set) var aparelhos: [Aparelho] = []
    private(set) var aulasDisponiveis: [Aula] = []

    init(nome: String) {
        self.nome = nome
    }

    func adicionarAparelho(_ aparelho: Aparelho) {
        aparelhos.append(aparelho)
    }

    func adicionarAula(_ aula: Aula) {
        aulasDisponiveis.append(aula)
    }

    func contratarInstrutor(_ instrutor: Instrutor) {
        instrutoresContratados[instrutor.email] = instrutor
    }

    func matricularAluno(_ aluno: Aluno) {
        if (alunosMatriculados.keys.contains(aluno.matricula)) {
            print("Erro: Aluno com a matrícula \(aluno.matricula) já existe")
        } else {
            alunosMatriculados[aluno.matricula] = aluno
            print("Aluno matriculado com sucesso!")
        }
    }

    func matricularAluno(nome: String, email: String, matricula: String, nivel: NivelAluno, plano: Plano) -> Aluno {
        let novoAluno = Aluno(nome: nome, email: email, matricula: matricula, nivel: nivel, plano: plano)
        matricularAluno(novoAluno)
        return novoAluno
    }

    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        if (alunosMatriculados.keys.contains(matricula)) {
            return alunosMatriculados[matricula]
        } else {
            return nil
        }
    }

    func listarAlunos() {
        print("\n--- Lista de Alunos Matriculados ---")
        if (alunosMatriculados.isEmpty) {
            print("Nenhum aluno matriculado")
        } else {
            let listaOrdenada = alunosMatriculados.values.sorted {$0.nome < $1.nome}
            for aluno in listaOrdenada {
                print(aluno.getDescricao())
            }
        }
        print("------------------------------------")
    }

    func listarAulas() {
        print("\n--- Lista de Aulas ---")
        if (aulasDisponiveis.isEmpty) {
            print("Nenhuma aula disponível.")
        } else {
            for aula in aulasDisponiveis {
                print(aula.getDescricao())
            }
        }
        print("----------------------")
    }
}
