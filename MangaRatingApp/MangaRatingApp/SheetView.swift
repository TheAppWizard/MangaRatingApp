//
//  SheetView.swift
//  MangaRatingApp
//
//  Created by Shreyas Vilaschandra Bhike on 13/07/21.
//

import SwiftUI

struct SheetView: View {
    
    @State private var name: String = "Feedback"

    var body: some View {
        
        ZStack{
        Color.black.edgesIgnoringSafeArea(.all)
            
        Image("p0").resizable()
            .blur(radius: 20)
            
            Circle()
                .foregroundColor(.black).frame(width: 500, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 0, y: 300)
           
            
            VStack{
                
            Spacer()
            
            Image("p0").resizable()
                .frame(width: 300, height: 400, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
                
                
                
                
                Text("Attack On Titan")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                Text("⭐⭐⭐⭐⭐")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
              
                
                Spacer().frame(width: 100, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                ZStack{
                    Rectangle().foregroundColor(.gray).opacity(0.2)
                        .frame(width: 350, height: 200, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                    
                    TextField("Feedback", text: $name)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 200, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                        .offset(x: 20, y: -80)
                    
                    
                    
                    ZStack{
                    Circle().frame(width: 60, height: 60, alignment: .center)
                        .foregroundColor(.blue)
                        
                    Image(systemName: "pencil")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        
                    }.offset(x: 120, y: 50)
                }
                
            }.padding()
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
