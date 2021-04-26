//
//  Transition2.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI

let table5: [Transition2s] = [
    Transition2s(num: 82, type: "Transition Ramp Up Long Smooth - 0% to 100%"),
    Transition2s(num: 86, type: "Transition Ramp Up Short Smooth - 0% to 100%"),
    Transition2s(num: 88, type: "Transition Ramp Up Long Sharp - 0% to 100%"),
    Transition2s(num: 92, type: "Transition Ramp Up Short Sharp - 0% to 100%")
]



struct Transition2: View {
    @Binding var isPresented: Bool
    @ObservedObject var env: GlobalEnvironment1 = .shared
    var body: some View {
        
        NavigationView{
            List {

                ForEach(table5, id: \.self) { function in
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

            .navigationBarTitle(Text("Transition Ramp Up"))
        }
    }
}


struct Transition2s: Identifiable, Hashable {
    var id = UUID()
    var num: Int
    var type: String
}
