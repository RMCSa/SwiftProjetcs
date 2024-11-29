//
//  WebService.swift
//  Medico
//
//  Created by Simone Pierini Facini Rocha on 09/10/24.
//

import Foundation

//->[Specilist]?
// O ? (interrogação) no caso de retorna erro da API, força o return como nil=nulo

struct WebService{
    //npm run start
    let baseURL = "http://localhost:3000"
    
    func getAllSpecialists() async throws -> [Specialist]? {
        
        //rota = endpoint

        let endpoint = baseURL + "/especialista"
        print("Endpoint:\(endpoint)")
        
        guard let url = URL(string: endpoint) else {
            
            print("Erro na URL!")
            return nil
            
        }
        //await: é necessário quando uma função é assíncrona
        //a função data tem dois parâmetros tupla de dados (require, response) equivale ao (req,res) no Node
        
        // a constante data a tupla (rquire, response) desmembrada
        // o response seria o tratamento de respostas, que no momento não será tratado
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        //JsonDecoder
        
        let specialists = try
        //a constante specialist recebe da api os dados em bytes
        //JSONDecode pega os dados em byte decodifica para o formato json
        //o .self diz que o retorno deve ser o tipo array e não uma instância do tipo array
        JSONDecoder().decode([Specialist].self,from:data)
        
        return specialists
        
        
    } //fecha a func
} //fecha a struct

    /*
     
     a) guard = como instrução de verificação
     evitar o aninhamento de if else excessivo, usando código limpo
     
     func exemploGuard(idade: Int?){
            guard let idade = idade, idade >= 18 else {
                print("Idade inválida ou menor de 18.")
                return
            }
        print("Vc é maior de idade")
     }
     
     b) guard = como desempacotamento seguro opcional
     
     func processarDados(dados: [String: Any]) {
         guard let nome = dados["nome"] as? String,
               let idade = dados["idade"] as? Int else {
                    print("Dados incompletos ou inválidos.")
                    return
                }

         // Código a ser executado com dados válidos
         print("Nome: \(nome), Idade: \(idade)")
     }

     processarDados(dados: ["nome": "João", "idade": 30])
     
     
     
     */

    


