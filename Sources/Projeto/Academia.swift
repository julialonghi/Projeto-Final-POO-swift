import Foundation

class Academia {
    private let nome: String
    private var alunosMatriculados: [String: Aluno]
    private var instrutoresContratados: [String: Instrutor]
    private var aparelhos: Aparelho([Aparelho])
    private var aulasDisponiveis: Aula([Aula])

    init(nome: String, alunosMatriculados: [String: Aluno], instrutoresContratados: [String: Instrutor], aparelhos: Aparelho([Aparelho]), aulasDisponiveis: Aula([Aula])) {
        self.nome = nome
        self.alunosMatriculados = alunosMatriculados
        self.instrutoresContratados = instrutoresContratados
        self.aparelhos = aparelhos
        self.aulasDisponiveis = aulasDisponiveis
    }

    func adicionarAparelho(_ aparelho: Aparelho) {
        aparelhos.append(Aparelho.nomeItem)
    }

    func adicionarAula(_ aula: Aula) {
        aulasDisponiveis.append(Aula.nome)
    }

    func contratarInstrutor(_ instrutor: Instrutor) {
        instrutoresContratados[instrutor.email] = instrutor
    }

    func matricularAluno(_ aluno: Aluno) {
        if (alunosMatriculados.keys.contains(aluno.matricula)) {
            print("Erro: Aluno com a matrícula \(aluno.matricula) já existe")
        } else {
            alunosMatriculados[aluno.matricula] = aluno
            print("Aluno adicionado com sucesso!")
        }
    }

    func matricularAluno(nome: String, email: String, matricula: String, plano: Plano) -> Aluno {
        var novoAluno = Aluno(nome: nome, email: email, matricula: matricula, plano: plano)
        matricularAluno(novoAluno)
        return novoAluno
    }

    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        if (alunosMatriculados.keys.contains(aluno.matricula)) {
            return alunosMatriculados[matricula]
        } else {
            return nil
        }
    }

    func listarAlunos() {
        print("--- Lista de Alunos Matriculados ---")
        if (alunosMatriculados.isEmpty) {
            print("Nenhum aluno matriculado")
        } else {
            let listaOrdenada = alunosMatriculados.values.sorted {$0.nome < $1.nome}
            for aluno in listaOrdenada {
                print(aluno.getDescricao())
        }
        print("------------------------------------")
    }

    func listarAulas() {
        print("--- Lista de Aulas ---")
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