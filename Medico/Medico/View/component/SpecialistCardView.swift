//
//  SpecialistCardView.swift
//  Medico
//
//  Created by Simone Pierini Facini Rocha on 25/09/24.
//

import SwiftUI

struct SpecialistCardView: View {
    
    //instância de Model/Specialist
    var specialist: Specialist
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing:16.0) {
                //colocar a imagem da maria
                Image("joao")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading, spacing:8.0){
                    Text(specialist.name)
                        .font(.title)
                        .bold()
                    Text(specialist.specialty)
                        .font(.title3)
                } //fecha o VStack interno
            }//Fecha o HStack
            
            ButtonView(text:"Agendar Consulta")
           
        }//Fecha o VStack mais externo
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(20)
        .background(Color(.lightGray).opacity(0.30))
        .cornerRadius(20.0)
        
    } //fecha o body
    
} //fecha a struct

#Preview {
    
    SpecialistCardView(specialist:
        Specialist(id:"1",
                   name:"Dr. João",
                   crm:"1234567",
                   imageUrl:"qualquerCoisa1",
                   specialty:"Neurologista",
                   email:"joao@gmail.com",
                   phoneNumber:"(19)3785-7657"))
    
}
