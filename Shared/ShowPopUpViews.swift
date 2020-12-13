//
//  ShowPopUpView.swift
//  SwiftUINews
//
//  Created by Chee Ket Yung on 12/12/2020.
//

import SwiftUI

struct ShowPopUpViews : View {
    
    @State private var toShowPopUp1 = false
    @State private var toShowPopUp2 = false
   
    var body: some View {
     
        ZStack {
       
            VStack (spacing : 20) {
                
                Text("Click the buttons below to show pop ups")
                
                Button(action: {
                    
                    withAnimation(.linear(duration: 1)) {
                        
                        self.toShowPopUp1 = true
                        self.toShowPopUp2 = false
                        
                    }
                    
                    }, label: {
                    Text("Show Pop-up 1")
                })
                
                
                Button(action: {
                    
                    withAnimation(.linear(duration: 0.35)) {
                        
                        self.toShowPopUp2 = true
                        self.toShowPopUp1 = false
                    }
                    
                    }, label: {
                    Text("Show Pop-up 2")
                })
                
            }
            
            if $toShowPopUp1.wrappedValue {
                
                popUpView1()
                
            }
            
            
            if $toShowPopUp2.wrappedValue {
                
                popUpView2()
            }
           
        }
        
        
    }
    
    
    private func popUpView1() -> some View {
        
        VStack (spacing : 5) {

            ZStack {
           
                Circle().fill(Color.yellow).frame(width: 150, height: 150)
                Text("Hello World!").font(.headline).foregroundColor(.white)

            }
    
            Button(action: {
                
                withAnimation {
          
                    self.toShowPopUp1 = false
                    
                }
            }, label: {
                Text("Close")
            })
    
        }
        
        .padding()
        .frame(width: 250, height: 200)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 30 )
       
    }
    
    
    
    private func popUpView2() -> some View {
        
        VStack (spacing : 10) {
            
            Text("Here are some info for you to learn SwiftUI and it's cool and it's always great to be there. Hope you'd love it. By TechChee.com")
            
            
            Button(action: {
                
                withAnimation {
          
                    self.toShowPopUp2 = false
                    
                }
            }, label: {
                Text("Close")
            })
            .padding(5).background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(5).shadow(radius: 5)
            
        }
        .padding()
        .frame(width: 300, height: 200)
        .background(Color(UIColor.lightGray))
        .cornerRadius(20)
        .shadow(radius: 20 )
    }
    
}


struct ShowPopUpPreview : PreviewProvider {
    
    static var previews: some View {
        ShowPopUpViews()
    }
}
