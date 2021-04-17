//
//  Smooth.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI

let table3: [Smooths] = [
    Smooths(num: 119, type: "Smooth Hum 1 - 100%"),
    Smooths(num: 120, type: "Smooth Hum 2 - 80%"),
    Smooths(num: 121, type: "Smooth Hum 3 - 60%"),
    Smooths(num: 122, type: "Smooth Hum 4 - 40%"),
    Smooths(num: 123, type: "Smooth Hum 5 - 20%"),
    Smooths(num: 70, type: "Transition Ramp Down Smooth Long - 100% to 0%"),
    Smooths(num: 82, type: "Transition Ramp Up Smooth Long - 0% to 100%")
]



struct Smooth: View {
    @Binding var isPresented: Bool
    @ObservedObject var env: GlobalEnvironment1 = .shared
    var body: some View {
//        List {
//            ForEach(table3, id: \.self) { function in
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

                ForEach(table3, id: \.self) { function in
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

            .navigationBarTitle(Text("Smooth"))
        }
    }
}


struct Smooths: Identifiable, Hashable {
    var id = UUID()
    var num: Int
    var type: String
}

//struct Smooth_Previews: PreviewProvider {
//    static var previews: some View {
//        Smooth()
//    }
//}
