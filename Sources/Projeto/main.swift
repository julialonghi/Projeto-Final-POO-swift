import Foundation

enum NivelAluno {
    case iniciante 
    case intermediario
    case avancado
}

protocol Manutencao {
    var nomeItem: String {get}
    var dataUltimaManutencao: String {get}
    func realizarManutencao() -> Bool
}
