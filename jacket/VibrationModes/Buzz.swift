//
//  Buzz.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI

let table1: [Buzzes] = [
    Buzzes(num: 47, type: "Buzz 1 - 100%"),
    Buzzes(num: 48, type: "Buzz 2 - 80%"),
    Buzzes(num: 49, type: "Buzz 3 - 60%"),
    Buzzes(num: 50, type: "Buzz 4 - 40%"),
    Buzzes(num: 51, type: "Buzz 5 - 20%"),
    Buzzes(num: 52, type: "Pulsing Strong 1 - 100%"),
    Buzzes(num: 53, type: "Pulsing Strong 2 - 60%"),
    Buzzes(num: 54, type: "Pulsing Medium 1 - 100%"),
    Buzzes(num: 55, type: "Pulsing Medium 2 - 60%"),
    Buzzes(num: 55, type: "Pulsing Sharp 1 - 100%"),
    Buzzes(num: 56, type: "Pulsing Sharp 2 - 60%"),
    
    
]



struct Buzz: View {
    @Binding var isPresented: Bool
    @ObservedObject var env: GlobalEnvironment1 = .shared
    var body: some View {
//        List {
//            ForEach(table1, id: \.self) { function in
//                Button (action: {
//                    env.vibeNum = function.num
//                })
//                {
//                Text(function.type)
//                }
//            }
//        }
        
        NavigationView{
            List {

                ForEach(table1, id: \.self) { function in
                    Button(action: {
                        if self.isPresented == true {
                            self.isPresented = false
                            env.vibeNum = function.num
                        }
                    }) {
                        Text(function.type)
                    }
                }
            }

            .navigationBarTitle(Text("Buzz and Pulse"))
        }
    }
}


struct Buzzes: Identifiable, Hashable {
    var id = UUID()
    var num: Int
    var type: String
}

//struct Buzz_Previews: PreviewProvider {
//    static var previews: some View {
//        Buzz()
//    }
//}
