//
//  createButton.swift
//  Musicx
//
//  Created by Axel Tringa on 2020-08-11.
//  Copyright © 2020 Axel Tringa. All rights reserved.
//

import SwiftUI

struct createButton: View  {
    var buttonName: String
    var nameSound: String
    var body: some View {
         Button(action: {
            playSound(sound: self.nameSound, type: "mp3")
             }){
           HStack{
            Text(self.buttonName)
                   .fontWeight(.black)
                   .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                   }
               }
               .frame(width: 100, height: 50)
               .background(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
               .cornerRadius(30)
               .shadow(color: .black, radius: 10, x: 0, y: 10)
    }
}

struct createButton_Previews: PreviewProvider {
    static var previews: some View {
        createButton(buttonName: "test", nameSound: "01")
    }
}
