
public func userInfo(_ nome : String,_ apelido : String,_ idade : Int,_ altura : Double) -> String{
    let userData : String = """
                                \n
                                Nome: \(nome)\n
                                Apelido: \(apelido)\n
                                Idade: \(idade)\n
                                Altura: \(altura)cm
                            """
    return userData
}

let lista : Array<Int> = [1,2,3,4,5,6]

var aux =  15
switch aux {
    case 0...10: print("Números está entre")
    case let x where x%2==0: print("È Par")
    case let x where x%2 != 0: print("È Impar 1")
    case let x where x%2 != 0 && x>10: print("È Impar 2")
default: print("\(aux) não se encaixa")
}

var count = 0
while count <= 10 {
    print("joga truco")
    count += 1
}

repeat{
    print("sla")
    count -= 1
} while count >= 5

for i in 1...10{
  print(i)
}
print(userInfo("Rafael","Rafa", 18,1.80))
//              ,3025147)´~→≤ĸ jmuy7,ht6bg5fvcsx12

