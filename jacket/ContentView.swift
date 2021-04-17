//
//  ContentView.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var env: GlobalEnvironment1 = .shared
    @State var showMenu = false
        
        var body: some View {
            
            let drag = DragGesture()
                .onEnded {
                    if $0.translation.width < -100 {
                        withAnimation {
                            self.showMenu = false
                        }
                    }
                }
            
            return NavigationView {
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        MainView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                        if self.showMenu {
                            menuView()
                                .frame(width: geometry.size.width/2)
                                .transition(.move(edge: .leading))
                        }
                    }
                        .gesture(drag)
                }
                    .navigationBarTitle("4D Jacket", displayMode: .inline)
                    .navigationBarItems(leading: (
                        Button(action: {
                            withAnimation {
                                self.showMenu.toggle()
                            }
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .imageScale(.large)
                        }
                    ))
            }
        }
}

struct MainView: View {
    @ObservedObject var env: GlobalEnvironment1 = .shared
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
               self.showMenu = true
            }
        }) {
//            Text("Show Menu")
        }
    }
}



class GlobalEnvironment1: ObservableObject {
    private init() {}
    static let shared = GlobalEnvironment1()
    @Published var vibeNum: Int = 0
    
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
