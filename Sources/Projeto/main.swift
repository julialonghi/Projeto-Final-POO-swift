import Foundation

enum NivelAluno {
    case iniciante 
    case intermediario
    case avancado
}

let aluno = Aluno(nome: "ju", email: "ju@", matricula: "1234e", nivel: .iniciante, plano: "Plano Mensal")

print(aluno.nome)
print(aluno.email)
print(aluno.matricula)
print(aluno.nivel)
print(aluno.plano)