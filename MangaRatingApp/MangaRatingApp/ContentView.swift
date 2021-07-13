//
//  ContentView.swift
//  MangaRatingApp
//
//  Created by Shreyas Vilaschandra Bhike on 13/07/21.
//MARK:-  The App Wizard
//MARK:-  Instagram : theappwizard2408


import SwiftUI

struct ContentView: View {
   
    var body: some View {
        ZStack{
        Color.black.opacity(1).edgesIgnoringSafeArea(.all)
        MangaView()
        }
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Profile : Identifiable {
    
    var id : Int
    var name : String
    var image : String
    var imagebg : String
    var star : String
    var offset : CGFloat
}
















struct MangaView: View {
   
    
    
    
    //Marvel Actress Data
       @State var profiles = [
           Profile(id: 0, name: "Attack On Titan", image: "p0",imagebg : "p0", star: "⭐⭐⭐⭐⭐", offset: 0),
        Profile(id: 1, name: "Naruto", image: "p1",imagebg : "p1", star: "⭐⭐⭐⭐⭐", offset: 0),
           Profile(id: 2, name: "Bleach", image: "p2",imagebg : "p2", star: "⭐⭐⭐⭐", offset: 0),
           Profile(id: 3, name: "Jujutsu Kaisen", image: "p3",imagebg : "p3", star: "⭐⭐⭐⭐⭐", offset: 0),
           Profile(id: 4, name: "Buso Renkin", image: "p4",imagebg : "p4", star: "⭐⭐⭐", offset: 0),
           Profile(id: 5, name: "Seven Deadly Sins", image: "p5",imagebg : "p5", star: "⭐⭐⭐⭐", offset: 0),
           Profile(id: 6, name: "Tokyo Revengers", image: "p6",imagebg : "p6", star: "⭐⭐⭐⭐⭐", offset: 0),
           Profile(id: 7, name: "Tokyo Ghoul", image: "p7",imagebg : "p7", star: "⭐⭐⭐⭐",  offset: 0),
           Profile(id: 8, name: "Demon Slayer", image: "p8",imagebg : "p8", star: "⭐⭐⭐⭐⭐", offset: 0),
           Profile(id: 9, name: "Black Clover", image: "p9",imagebg : "p9", star: "⭐⭐⭐⭐", offset: 0),
        Profile(id: 10, name: "Fairy Tail", image: "p10",imagebg : "p10", star: "⭐⭐⭐", offset: 0),
        Profile(id: 11, name: "Death Note", image: "p11",imagebg : "p11", star: "⭐⭐⭐⭐⭐", offset: 0),
        
       ]
       //
       var body: some View{
          
        
        VStack{
               HStack(spacing: 15){
                   Button(action: {}, label: {
                       
                       Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                   })
                   
                   Text("MANGA RATING APP")
                       .font(.title)
                       .fontWeight(.regular)
                       .foregroundColor(Color.white)
                   Spacer(minLength: 0)
                   Button(action: {}, label: {
                    
                    
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.white)
                        })
               }
               .foregroundColor(.black)
               .padding()
   
               GeometryReader{g in
                   
                   ZStack{
                       
                       ForEach(profiles.reversed()){profile in
                           
                           ProfileView(profile: profile,frame: g.frame(in: .global))
                       }
                   }
               }
               .padding([.horizontal,.bottom])
           }
//           .background()
       }
   }

struct ProfileView : View {
     @State private var animationAmount: CGFloat = 1
     @State var profile : Profile
     @State private var showingSheet = false
      
        var frame : CGRect
        var body: some View{
        
        
        ZStack{
            
            
          ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom),
                 content: {
              
              Image(profile.imagebg)
                  .resizable()
                  .opacity(0.2)
                  .blur(radius: 3.0)
                  .aspectRatio(contentMode: .fill)
                  .frame(width: frame.width,height: frame.height)
                    
              Image(profile.image)
                .resizable()
                .frame(width: 350, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
                .offset(x: 0, y: -200)
             
              ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
                  
                (profile.offset > 0 ? Color.green : Color.red).opacity(0.8)
                      .opacity(profile.offset != 0 ? 0.7 : 0)
                  
                  HStack{
                      
                      if profile.offset < 0{
                          
                          Spacer()
                      }
                      
                      Text(profile.offset == 0 ? "" : (profile.offset > 0 ? "Selected" : "Rejected"))
                          .font(.title)
                          .fontWeight(.light)
                          .foregroundColor(.white)
                          .padding(.top, 25)
                          .padding(.horizontal)
                      
                      if profile.offset > 0 {
                          
//                          Spacer()
                      }
                  }
              })
  
              LinearGradient(gradient: .init(colors: [Color.black.opacity(0),Color.black.opacity(1)]), startPoint: .center, endPoint: .bottom)
              
              VStack(spacing: 20){
                  
                  HStack{
                      
                      VStack(alignment: .leading,spacing: 12){
                          
                          Text(profile.name)
                              .font(.title)
                              .fontWeight(.bold)
                             
                          
                          Text(profile.star + " +")
                              .fontWeight(.bold)
                              .offset(x: 0, y: -5)
                      }
                      .foregroundColor(.white)
                      
                      Spacer(minLength: 0)
                  }
                  
                  HStack(spacing: 35){
                      Spacer(minLength: 0)
                    

                    
                   
                   //Button
                    ZStack{
                        Circle().frame(width: 80, height: 80, alignment: .center)
                            .foregroundColor(.blue)
    
                    Button("Show Sheet") {
                               showingSheet.toggle()
                           }
                           .sheet(isPresented: $showingSheet) {
                               SheetView()
                           }
                        
                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                    }
                    
                    
                    //Button Red
                    Button(action: {
                          withAnimation(Animation.easeIn(duration: 0.8)){
                              
                              profile.offset = -500
                          }
                          
                      }, label: {
                          
                          Image(systemName: "star")
                              .font(.system(size: 24, weight: .bold))
                              .foregroundColor(.white)
                              .padding(.all,20)
                              .background(Color.red)
                              .clipShape(Circle())
                      })
                    .shadow(color: .black, radius: 10, x: 10, y: 10)
                    
                    
                    
                  
                    
                    
                    
                   
                       
                   //Button Green
                    Button(action: {
                          withAnimation(Animation.easeIn(duration: 0.8)){
                              
                              profile.offset = 500
                          }
                          
                      }, label: {
                          
                          Image(systemName: "star.fill")
                              .font(.system(size: 24))
                              .foregroundColor(.white)
                              .padding(.all,20)
                              .background(Color.green)
                              .clipShape(Circle())
                            
                      }).shadow(color: .black, radius: 10, x: 10, y: 10)
                      
                      Spacer(minLength: 0)
                  }
                
                
              }
              .padding(.all)
          })
          .cornerRadius(20)
          .offset(x: profile.offset)
          .rotationEffect(.init(degrees: profile.offset == 0 ? 0 : (profile.offset > 0 ? 12 : -12)))
          .gesture(
          
              DragGesture()
                  .onChanged({ (value) in
                      
                      withAnimation(.default){
                          profile.offset = value.translation.width
                      }
                  })
                  .onEnded({ (value) in
                      
                      withAnimation(.easeIn){
                      
                        
                        //Profile Offset Conditions
                          if profile.offset > 150{
                              profile.offset = 500
                          }
                          else if profile.offset < -150{
                              profile.offset = -500
                          }
                          else{
                              profile.offset = 0
                          }
                      }
                  })
          )
      }
    }
  }

