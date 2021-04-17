//
//  patterns.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI

let patternsType: [Vibration] = [
    Vibration(image: "speaker.wave.1.fill", type: "Click and Bump"),
    Vibration(image: "speaker.wave.1.fill", type: "Buzz and Pulse"),
    Vibration(image: "speaker.wave.2.fill", type: "Smooth"),
    Vibration(image: "speaker.wave.2.fill", type: "Transition Clicks"),
    Vibration(image: "speaker.wave.3.fill", type: "Transition Ramp Up"),
    Vibration(image: "speaker.wave.3.fill", type: "Transition Ramp Down")
    
]

struct patterns: View {
    @State var ShowUnit1 = false
    @State var ShowUnit2 = false
    @State var ShowUnit3 = false
    @State var ShowUnit4 = false
    @State var ShowUnit5 = false
    @State var ShowUnit6 = false
    @ObservedObject var env: GlobalEnvironment1 = .shared
    var body: some View {

        ZStack (alignment: .top){
            
            VStack (spacing: 6){
                
                Text("Vibration Mode")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                    .padding(.all)
                
                
                Button(action: {
                    self.ShowUnit1.toggle()
                }) {
                    HStack {
                        Image(systemName: "speaker.wave.1.fill")
                            .frame(width: 50, height: 10, alignment: .trailing )

                        VStack {
                            Text("Buzz and Pulse")
                        }
                    }.font(.title)
                    }
                .sheet(isPresented: $ShowUnit1) {
                    Buzz(isPresented: self.$ShowUnit1)
                }
                    .font(.system(size: 40))
                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                    .foregroundColor(.white)
                    .background(Color.gray)
                
                Button(action: {
                    self.ShowUnit2.toggle()
                }) {
                    HStack {
                        Image(systemName: "speaker.wave.1.fill")
                            .frame(width: 50, height: 10, alignment: .trailing)

                        VStack {
                            Text("Click and Bump")
                        }
                    }.font(.title)
                    }
                .sheet(isPresented: $ShowUnit2) {
                    Click(isPresented: self.$ShowUnit2)
                }
                    .font(.system(size: 40))
                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                    .foregroundColor(.white)
                    .background(Color.gray)
            
                Button(action: {
                    self.ShowUnit3.toggle()
                }) {
                    HStack {
                        Image(systemName: "speaker.wave.2.fill")
                            .frame(width: 50, height: 10, alignment: .trailing)

                        VStack {
                            Text("Smooth")
                        }
                    }.font(.title)
                    }
                .sheet(isPresented: $ShowUnit3) {
                    Smooth(isPresented: self.$ShowUnit3)
                }
                    .font(.system(size: 40))
                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                    .foregroundColor(.white)
                    .background(Color.gray)
            
                Button(action: {
                    self.ShowUnit4.toggle()
                }) {
                    HStack {
                        Image(systemName: "speaker.wave.2.fill")
                            .frame(width: 50, height: 10, alignment: .trailing)

                        VStack {
                            Text("Transition Click")
                        }
                    }.font(.title)
                    }
                .sheet(isPresented: $ShowUnit4) {
                    Transition1(isPresented: self.$ShowUnit4)
                }
                    .font(.system(size: 40))
                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                    .foregroundColor(.white)
                    .background(Color.gray)
                
                Button(action: {
                    self.ShowUnit5.toggle()
                }) {
                    HStack {
                        Image(systemName: "speaker.wave.3.fill")
                            .frame(width: 50, height: 10, alignment: .trailing)

                        VStack {
                            Text("Transition Ramp Up")
                        }
                    }.font(.title)
                    }
                .sheet(isPresented: $ShowUnit5) {
                    Transition2(isPresented: self.$ShowUnit5)
                }
                    .font(.system(size: 40))
                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    
                Button(action: {
                    self.ShowUnit6.toggle()
                }) {
                    HStack {
                        Image(systemName: "speaker.wave.3.fill")
                            .frame(width: 50, height: 10, alignment: .trailing)

                        VStack {
                            Text("Transition Ramp Down")
                        }
                    }.font(.title)
                    }
                .sheet(isPresented: $ShowUnit6) {
                    Transition3(isPresented: self.$ShowUnit6)
                }
                    .font(.system(size: 40))
                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                    .foregroundColor(.white)
                    .background(Color.gray)
                
            
            }
        }
    }
    
}



struct Vibration: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var type: String
}

struct patterns_Previews: PreviewProvider {
    static var previews: some View {
        patterns()
    }
}
