import SwiftUI

struct SContaCorrente {
    var nome : String
    var saldo = 0.0
    
    mutating func sacar (_ valor : Double) {
        saldo -= valor
        
    }
    
    mutating func depositar(_ valor : Double){
          saldo += valor
    }
}

var mariaCC : SContaCorrente = SContaCorrente(nome: "Maria") // Instância

print("Conta Corrente da Maria \n Saldo: \(mariaCC)" )

class Conta {
    var saldo : Double
    private var nome : String
    
    init(saldo: Double = 0.0, nome: String) {
        self.saldo = saldo
        self.nome = nome
    }
    
    func sacar (_ valor : Double) {
        saldo -= valor
        
    }
    
    func depositar(_ valor : Double){
          saldo += valor
    }
}

class ContaPoupanca: Conta {
    var possuiCartaoCredito = 
}

var cP = ContaPoupanca(nome: "Teste")

class ContaCorrente: Conta {
    <#code#>
}

