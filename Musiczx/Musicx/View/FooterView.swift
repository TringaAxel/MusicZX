//
//  FooterView.swift
//  Musicx
//
//  Created by Axel Tringa on 2020-08-11.
//  Copyright © 2020 Axel Tringa. All rights reserved.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack{
            
            Button(action:
                {
                    // ACTION
                    UIApplication.shared.open(URL(string: "http://github.com/TringaAxel")!)
                })
                {
                    Image(systemName: "person.crop.circle.badge.checkmark")
                        .font(.system(size : 40, weight: .light))
                        .padding()
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    
                    Spacer()
                    
                    Text("Developed by Axel Tringa")
                        .font(.headline)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                }
                Spacer()
        
            Button(action:{
                
            }){
                Image(systemName: "info.circle.fill")
                    .font(.system(size : 40, weight: .light))
                    .padding()
            }
               
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
        .previewDevice("iPhone 11 Pro")
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
