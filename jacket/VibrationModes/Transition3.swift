//
//  Transition3.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI

let table6: [Transition3s] = [
    Transition3s(num: 70, type: "Transition Ramp Down Long Smooth - 100% to 0%"),
    Transition3s(num: 74, type: "Transition Ramp Down Short Smooth - 100% to 0%"),
    Transition3s(num: 76, type: "Transition Ramp Down Long Sharp - 100% to 0%"),
    Transition3s(num: 80, type: "Transition Ramp Down Short Sharp - 100% to 0%")
    
    
]



struct Transition3: View {
    @Binding var isPresented: Bool
    @ObservedObject var env: GlobalEnvironment1 = .shared
    var body: some View {
        NavigationView{
            List {

                ForEach(table6, id: \.self) { function in
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

            .navigationBarTitle(Text("Transition Ramp Down"))
        }
    }
}


struct Transition3s: Identifiable, Hashable {
    var id = UUID()
    var num: Int
    var type: String
}

