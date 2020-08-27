//
//  DoubleButton.swift
//  Musicx
//
//  Created by Axel Tringa on 2020-08-26.
//  Copyright © 2020 Axel Tringa. All rights reserved.
//

import SwiftUI

struct DoubleButton: View {
    var bName1: String
    var nSound1: String
    var bName2: String
    var nSound2: String
    var body: some View {
        HStack{
            createButton(buttonName: bName1, nameSound: nSound1)
                .padding(.trailing, 80)
            createButton(buttonName: bName2, nameSound: nSound2)
        }.padding(.top, 20)
    }
}

struct DoubleButton_Previews: PreviewProvider {
    static var previews: some View {
        DoubleButton(bName1: "TEST", nSound1: "01",bName2: "TEST2", nSound2: "02" )
    }
}
