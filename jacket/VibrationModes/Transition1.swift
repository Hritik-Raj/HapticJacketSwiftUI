//
//  Transition1.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI

let table4: [Transition1s] = [
    Transition1s(num: 58, type: "Transition Click 1 - 100%"),
    Transition1s(num: 59, type: "Transition Click 2 - 80%"),
    Transition1s(num: 60, type: "Transition Click 3 - 60%"),
    Transition1s(num: 61, type: "Transition Click 4 - 40%"),
    Transition1s(num: 62, type: "Transition Click 5 - 20%"),
    Transition1s(num: 63, type: "Transition Click 6 - 10%"),
    Transition1s(num: 64, type: "Transition Hum 1 - 100%"),
    Transition1s(num: 65, type: "Transition Hum 2 - 80%"),
    Transition1s(num: 66, type: "Transition Hum 3 - 60%"),
    Transition1s(num: 67, type: "Transition Hum 4 - 40%"),
    Transition1s(num: 68, type: "Transition Hum 5 - 20%"),
    Transition1s(num: 69, type: "Transition Hum 6 - 10%")
    
    
]



struct Transition1: View {
    @Binding var isPresented: Bool
    @ObservedObject var env: GlobalEnvironment1 = .shared
    var body: some View {
        
        NavigationView{
            List {

                ForEach(table4, id: \.self) { function in
                    Button(action: {
                        if self.isPresented == true {
                            self.isPresented = false
                            env.vibeNum = function.num
                        }
                    }) {
                        Text(function.type)
                            .font(.system(size: 15))
                    }
                }
            }

            .navigationBarTitle(Text("Transition Click"))
        }
    }
}


struct Transition1s: Identifiable, Hashable {
    var id = UUID()
    var num: Int
    var type: String
}
