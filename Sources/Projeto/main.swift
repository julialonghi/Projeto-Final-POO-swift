import Foundation

let academia = Academia(nome: "Academia POO 360")

let planoMensal = PlanoMensal(nome: "Plano Mensal")
let planoAnual = PlanoAnual(nome: "Plano Anual")

let instrutor1 = Instrutor(nome: "João", email: "joao@gmail.com", especialidade: "Zumba")
let instrutor2 = Instrutor(nome: "Márcio", email: "marcio@gmail.com", especialidade: "Pilates")

academia.contratarInstrutor(instrutor1)
academia.contratarInstrutor(instrutor2)

let aluno1 = Aluno(nome: "Maria", email: "maria@gmail.com", matricula: "ABR345", nivel: .iniciante, plano: planoMensal)
let aluno2 = Aluno(nome: "Carlos", email: "carlos@gmail.com", matricula: "CDB923", nivel: .avancado, plano: planoAnual)

academia.matricularAluno(aluno1)
academia.matricularAluno(aluno2)

let aulaPersonal = AulaPersonal(nome: "Zumba com João", instrutor: instrutor1, aluno: aluno1)
let aulaColetiva = AulaColetiva(nome: "Pilates com Márcio", instrutor: instrutor2)

academia.adicionarAula(aulaPersonal)
academia.adicionarAula(aulaColetiva)

aulaColetiva.inscrever(aluno1)
aulaColetiva.inscrever(aluno2)
let aluno3 = Aluno(nome: "Gabriela", email: "gabi@gmail.com", matricula: "FEK845", nivel: .intermediario, plano: planoAnual)
aulaColetiva.inscrever(aluno3)
let aluno4 = Aluno(nome: "Joana", email: "jo@gmail.com", matricula: "FBI356", nivel: .avancado, plano: planoMensal)
aulaColetiva.inscrever(aluno4)

academia.listarAulas()
academia.listarAlunos()

var listaAulas: [Aula] = []
listaAulas.append(aulaPersonal)
listaAulas.append(aulaColetiva)
for aula in listaAulas {
    print(aula.getDescricao())
}

var listaPessoas: [Pessoa] = []
listaPessoas.append(instrutor1)
listaPessoas.append(aluno1)
for pessoa in listaPessoas {
    print(pessoa.getDescricao())
}

