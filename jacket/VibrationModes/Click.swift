//
//  Click.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI

let table2: [Clicks] = [
    Clicks(num: 1, type: "Strong Click - 100%"),
    Clicks(num: 2, type: "Strong Click - 60%"),
    Clicks(num: 3, type: "Strong Click- 30%"),
    Clicks(num: 4, type: "Sharp Click - 100%"),
    Clicks(num: 5, type: "Sharp Click- 60%"),
    Clicks(num: 6, type: "Sharp Click - 30%"),
    Clicks(num: 7, type: "Soft Bump - 100%"),
    Clicks(num: 8, type: "Soft Bump - 60%"),
    Clicks(num: 9, type: "Soft Bump - 30%"),
    Clicks(num: 10, type: "Double Click - 100%"),
    Clicks(num: 11, type: "Double Click - 60%"),
    Clicks(num: 12, type: "Triple Click - 100%"),
    Clicks(num: 13, type: "Soft Fuzz - 60%"),
    Clicks(num: 14, type: "Strong Buzz - 100%"),
    Clicks(num: 15, type: "750ms Alert - 100%"),
    Clicks(num: 16, type: "1000ms Alert - 100%"),
    Clicks(num: 17, type: "Strong Click 1 - 100%"),
    Clicks(num: 18, type: "Strong Click 2 - 80%"),
    Clicks(num: 19, type: "Strong Click 3 - 60%"),
    Clicks(num: 20, type: "Strong Click 4 - 30%"),
    Clicks(num: 21, type: "Medium Click 1 - 100%"),
    Clicks(num: 22, type: "Medium Click 2 - 80%"),
    Clicks(num: 23, type: "Medium Click 3 - 60%"),
    Clicks(num: 24, type: "Sharp Tick 1 - 100%"),
    Clicks(num: 25, type: "Sharp Tick 2 - 80%"),
    Clicks(num: 26, type: "Sharp Tick 3 - 60%"),
    Clicks(num: 27, type: "Short Double Click Strong 1  - 100%"),
    Clicks(num: 28, type: "Short Double Click Strong 2 - 80%"),
    Clicks(num: 29, type: "Short Double Click Strong 3 - 60%"),
    Clicks(num: 30, type: "Short Double Click Strong 4 - 300%"),
    Clicks(num: 31, type: "Short Double Click Medium 1 - 100%"),
    Clicks(num: 32, type: "Short Double Click Medium 2 - 80%"),
    Clicks(num: 33, type: "Short Double Click Medium 3 - 60%"),
    Clicks(num: 34, type: "Short Double Sharp Tick 1 - 100%"),
    Clicks(num: 35, type: "Short Double Sharp Tick 2 - 80%"),
    Clicks(num: 36, type: "Short Double Sharp Tick 3 - 60%"),
    Clicks(num: 37, type: "Long Double Sharp Click Strong 1 - 100%"),
    Clicks(num: 38, type: "Long Double Sharp Click Strong 2 - 80%"),
    Clicks(num: 39, type: "Long Double Sharp Click Strong 3 - 60%"),
    Clicks(num: 40, type: "Long Double Sharp Click Strong 4 - 30%"),
    Clicks(num: 41, type: "Long Double Sharp Click Medium 1 - 100%"),
    Clicks(num: 42, type: "Long Double Sharp Click Medium 2 - 80%"),
    Clicks(num: 43, type: "Long Double Sharp Click Medium 3 - 60%"),
    Clicks(num: 44, type: "Long Double Sharp Tick 1 - 100%"),
    Clicks(num: 45, type: "Long Double Sharp Tick 2 - 80%"),
    Clicks(num: 46, type: "Long Double Sharp Tick 3 - 60%")
    
    
]



struct Click: View {
    @Binding var isPresented: Bool
    @ObservedObject var env: GlobalEnvironment1 = .shared
    
    var body: some View {
//        List {
//            ForEach(table2, id: \.self) { function in
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

                ForEach(table2, id: \.self) { function in
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

            .navigationBarTitle(Text("Click and Bump"))
        }
    }
}


struct Clicks: Identifiable, Hashable {
    var id = UUID()
    var num: Int
    var type: String
}
//struct Click_Previews: PreviewProvider {
//    static var previews: some View {
//        Click()
//    }
//}
