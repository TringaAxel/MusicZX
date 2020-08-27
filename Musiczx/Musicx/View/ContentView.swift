//
//  ContentView.swift
//  Musicx
//
//  Created by Axel Tringa on 2020-08-11.
//  Copyright © 2020 Axel Tringa. All rights reserved.
//

import SwiftUI


struct Lyrics : Identifiable{
    var id = UUID()
    var name: String
    var number: String
    var name2: String
    var number2: String
    
}

struct ContentView: View {
    let lyrics = [Lyrics(name: "Work it", number:"01", name2: "Make it", number2:"02"),Lyrics(name: "Do it", number:"03",name2: "Makes us", number2:"04"),Lyrics(name: "Harder", number:"05",name2: "Better", number2:"06"),Lyrics(name: "Faster", number:"07",name2: "Stronger", number2:"08"),Lyrics(name: "More than", number:"09",name2: "Hour", number2:"10"),Lyrics(name: "Our", number:"11",name2: "Never", number2:"12"),Lyrics(name: "Ever", number:"13",name2: "After", number2:"14"),Lyrics(name: "Work is", number:"15",name2: "Over", number2:"16")]
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack{
                ForEach(lyrics){lyric in
                    VStack{
                        DoubleButton(bName1: lyric.name, nSound1: lyric.number, bName2: lyric.name2, nSound2: lyric.number2)
                        
                    }
                    .frame(width: 50)
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}

