//
//  PopUpOnAppear.swift
//  SwiftUINews
//
//  Created by Chee Ket Yung on 13/12/2020.
//

import SwiftUI


struct PopUpViewOnAppear : View {
    
    @State private var showPopUp = false 
    
    var body: some View {
     
        ZStack {
   
            VStack(alignment: .leading, spacing: 5){
                
                Text ("Great you're here. Have a nice day! A Pop-up will show in 3 seconds")
            }
            .onAppear{
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                
                    
                    withAnimation(.linear(duration: 0.5)){
                        
                        self.showPopUp = true
                    }
                }
                
            }
            
            
            if $showPopUp.wrappedValue {
                
                popUpView()
            }
        }
        
        
    }
    
    
    private func popUpView() -> some View {
            
        VStack (spacing : 10) {

            ZStack {
           
                Circle().fill(Color.green)
                .frame(width: 200, height: 200)
                
                Text("Welcome to TechChee.com")
                    .foregroundColor(.white)
                    .font(Font.custom("Avenir-Black", size: 24.0))
                

            }
    
         
        }
        
        .padding()
        .frame(width: 250, height: 250)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 20 )
        .onAppear{
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            
                
                withAnimation(.linear(duration: 0.5)){
                    
                    self.showPopUp = false
                }
            }
            
        }
       
    }
    
}



struct ShowPopUpOnAppearPreview : PreviewProvider {
    
    static var previews: some View {
        PopUpViewOnAppear()
    }
}
