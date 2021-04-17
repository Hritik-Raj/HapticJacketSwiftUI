//
//  menuView.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI

//struct menuView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//



import SwiftUI


struct menuView: View {
    @State var navigated1 = false
    @ObservedObject var env: GlobalEnvironment1 = .shared
    var body: some View {
            VStack(alignment: .leading) {
                NavigationLink("Vibrations", destination: patterns(), isActive: $navigated1)
                Button(action: {
                        self.navigated1.toggle()
                }) {
                HStack {
                    Image(systemName: "speaker.wave.3.fill")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    Text("Vibrations")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                
                .padding(.top, 100)
                }
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    Text("Messages")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                    .padding(.top, 30)
                HStack {
                    Image(systemName: "gear")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    Text("Settings")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 30)
                Spacer()
            }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 32/255, green: 32/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
        }
}

