//
//  Specialist.swift
//  Medico
//
//  Created by Simone Pierini Facini Rocha on 25/09/24.
//

import Foundation

struct Specialist: Identifiable, Codable {
    
    let id: String
    let name: String
    let crm: String
    let imageUrl: String
    let specialty: String
    let email: String
    let phoneNumber: String
    
    //colocar =
    enum CodingKeys: String, CodingKey{
        case id
        case name = "nome"
        case crm
        case imageUrl = "imagem"
        case specialty = "especialidade"
        case email
        case phoneNumber = "telefone"
    }
}//fecha a struct Specialist
    //colocar fora do end da struct e no plural

/*
    let specialists: [Specialist] = [
        
        Specialist(id:"1",
                   name:"Dr. João",
                   crm:"1234567",
                   imageUrl:"https://www.jlramos.com.br/wp-content/uploads/elementor/thumbs/portrait-of-handsome-smiling-african-american-doct-2022-01-05-01-36-43-utc-scaled-qc94d8jh82xk8coeadjjvzu1x6kzij2s3k2iguy83s.jpg",
                   specialty:"Neurologista",
                   email:"joao@gmail.com",
                   phoneNumber:"(19)3785-7657"),
        
        Specialist(id:"2",
                   name:"Dra. Maria",
                   crm:"1234568",
                   imageUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPd1ag04qAxUqyFsA1waifXN9eNnce45gdKQ&s",
                   specialty:"Cardiologista",
                   email:"maria@gmail.com",
                   phoneNumber:"(19)3784-4567"),
        
    ]
 
 */
    
    

