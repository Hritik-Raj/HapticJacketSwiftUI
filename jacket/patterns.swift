//
//  patterns.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI
import Foundation
import Darwin

let patternsType: [Vibration] = [
    Vibration(image: "speaker.wave.1.fill", type: "Click and Bump"),
    Vibration(image: "speaker.wave.1.fill", type: "Buzz and Pulse"),
    Vibration(image: "speaker.wave.2.fill", type: "Smooth"),
    Vibration(image: "speaker.wave.2.fill", type: "Transition Clicks"),
    Vibration(image: "speaker.wave.3.fill", type: "Transition Ramp Up"),
    Vibration(image: "speaker.wave.3.fill", type: "Transition Ramp Down")
    
]

struct patterns: View {
    @ObservedObject var env: GlobalEnvironment1 = .shared
    
    @State var ShowUnit1 = false
    @State var ShowUnit2 = false
    @State var ShowUnit3 = false
    @State var ShowUnit4 = false
    @State var ShowUnit5 = false
    @State var ShowUnit6 = false
    @State var isChecked1:Bool = false
    @State var isChecked2:Bool = false
    @State var isChecked3:Bool = false
    @State var isChecked4:Bool = false
    @State var isChecked5:Bool = false
    @State var isChecked6:Bool = false
    @State var isChecked7:Bool = false
    @State var isChecked8:Bool = false
    @State var isChecked9:Bool = false
    @State var isChecked10:Bool = false
    @State var isChecked11:Bool = false
    @State var isChecked12:Bool = false
    @State var isChecked13:Bool = false
    @State var isChecked14:Bool = false
    @State var isChecked15:Bool = false
    
    var body: some View {
        ZStack (alignment: .top){
            ScrollView (.vertical, showsIndicators: false) {

            
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
                Spacer()
                Text("Select Motor Numbers")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                    .padding(.all)
                

                
                VStack {
                    HStack{
                        Button(action: {isChecked1.toggle()}){
                           HStack{
                              Image(systemName: isChecked1 ? "checkmark.square" : "square")
                              Text("Motor 1")
                           }
                        }
                        
                        Button(action: {isChecked2.toggle()}){
                           HStack{
                              Image(systemName: isChecked2 ? "checkmark.square" : "square")
                              Text("Motor 2")
                           }
                        }
                        
                        Button(action: {isChecked3.toggle()}){
                           HStack{
                              Image(systemName: isChecked3 ? "checkmark.square" : "square")
                              Text("Motor 3")
                           }
                        }
                        
                    }
                    .padding(.all)
                    Spacer()
                    HStack {
                        Button(action: {isChecked4.toggle()}){
                           HStack{
                              Image(systemName: isChecked4 ? "checkmark.square" : "square")
                              Text("Motor 4")
                           }
                        }
                        Button(action: {isChecked5.toggle()}){
                           HStack{
                              Image(systemName: isChecked5 ? "checkmark.square" : "square")
                              Text("Motor 5")
                           }
                        }
                        Button(action: {isChecked6.toggle()}){
                           HStack{
                              Image(systemName: isChecked6 ? "checkmark.square" : "square")
                              Text("Motor 6")
                           }
                        }
                        
                    }
                    .padding(.all)
                    Spacer()
                    HStack {
                        Button(action: {isChecked7.toggle()}){
                           HStack{
                              Image(systemName: isChecked7 ? "checkmark.square" : "square")
                              Text("Motor 7")
                           }
                        }
                        Button(action: {isChecked8.toggle()}){
                           HStack{
                              Image(systemName: isChecked8 ? "checkmark.square" : "square")
                              Text("Motor 8")
                           }
                        }
                        Button(action: {isChecked9.toggle()}){
                           HStack{
                              Image(systemName: isChecked9 ? "checkmark.square" : "square")
                              Text("Motor 9")
                           }
                        }
                        
                    }
                    .padding(.all)
                    Spacer()
                    HStack {
                        Button(action: {isChecked10.toggle()}){
                           HStack{
                              Image(systemName: isChecked10 ? "checkmark.square" : "square")
                              Text("Motor 10")
                           }
                        }
                        Button(action: {isChecked11.toggle()}){
                           HStack{
                              Image(systemName: isChecked11 ? "checkmark.square" : "square")
                              Text("Motor 11")
                           }
                        }
                        Button(action: {isChecked12.toggle()}){
                           HStack{
                              Image(systemName: isChecked12 ? "checkmark.square" : "square")
                              Text("Motor 12")
                           }
                        }
                        
                    }
                    .padding(.all)
                    Spacer()
                    HStack {
                        Button(action: {isChecked13.toggle()}){
                           HStack{
                              Image(systemName: isChecked13 ? "checkmark.square" : "square")
                              Text("Motor 13")
                           }
                        }
                        Button(action: {isChecked14.toggle()}){
                           HStack{
                              Image(systemName: isChecked14 ? "checkmark.square" : "square")
                              Text("Motor 14")
                           }
                        }
                        Button(action: {isChecked15.toggle()}){
                           HStack{
                              Image(systemName: isChecked15 ? "checkmark.square" : "square")
                              Text("Motor 15")
                           }
                        }
                        
                    }.padding(.all)
                    
                    Button(action: {env.stringVal = report1()
                        env.stringValMotors = report2()
                        
                    }){
                        Text("Send")
                        
                        Text(env.stringValMotors)
                        
                        Text(env.stringValMotors + env.stringVal)
                    }
                    
                  
                }
                .padding(.all)
                
                
            }
            
        }
        
    }
    
    func report1() -> String {
        let str = String(env.vibeNum, radix: 2)
        return pad(string: str, toSize: 7)
    }
    
    func pad(string : String, toSize: Int) -> String {
      var padded = string
      for _ in 0..<(toSize - string.count) {
        padded = "0" + padded
      }
        return padded
    }
    
    func report2()-> String {
        var sum_:Int = 0
        if isChecked1 == true {
            sum_ += 1
        }
        if isChecked2 == true {
            sum_ += 2
        }
        if isChecked3 == true {
            sum_ += 4
        }
        if isChecked4 == true {
            sum_ += 8
        }
        if isChecked5 == true {
            sum_ += 16
        }
        if isChecked6 == true {
            sum_ += 32
        }
        if isChecked7 == true {
            sum_ += 64
        }
        if isChecked8 == true {
            sum_ += 128
        }
        if isChecked9 == true {
            sum_ += 256
        }
        if isChecked10 == true {
            sum_ += 512
        }
        if isChecked11 == true {
            sum_ += 1024
        }
        if isChecked12 == true {
            sum_ += 2048
        }
        if isChecked13 == true {
            sum_ += 4096
        }
        if isChecked14 == true {
            sum_ += 8192
        }
        if isChecked15 == true {
            sum_ += 16384
        }
        
        let str = String(sum_, radix: 2)
        return pad2(string: str, toSize: 15)
    }
    
    func pad2(string : String, toSize: Int) -> String {
      var padded = string
      for _ in 0..<(toSize - string.count) {
        padded = "0" + padded
      }
        return padded
    }
}


    struct MainViewPatterns: View {
        @ObservedObject var env: GlobalEnvironment1 = .shared
        @Binding var showMenu: Bool
        
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var ShowUnit3 = false
        @State var ShowUnit4 = false
        @State var ShowUnit5 = false
        @State var ShowUnit6 = false
        @State var isChecked1:Bool = false
        @State var isChecked2:Bool = false
        @State var isChecked3:Bool = false
        @State var isChecked4:Bool = false
        @State var isChecked5:Bool = false
        @State var isChecked6:Bool = false
        @State var isChecked7:Bool = false
        @State var isChecked8:Bool = false
        @State var isChecked9:Bool = false
        @State var isChecked10:Bool = false
        @State var isChecked11:Bool = false
        @State var isChecked12:Bool = false
        @State var isChecked13:Bool = false
        @State var isChecked14:Bool = false
        @State var isChecked15:Bool = false
        
        var bluetooth = Bluetooth.shared
        @State var presented: Bool = false
        @State var list = [Bluetooth.Device]()
        @State var isConnected: Bool = Bluetooth.shared.current != nil { didSet { if isConnected { presented.toggle() } } }
        
        @State var response = Data()
        @State var string: String = ""
        @State var value: Float = 0
        @State var state: Bool = false { didSet { bluetooth.send([UInt8(state.int)]) } }
        
        @State var editing = false
        
        var body: some View {
            ZStack (alignment: .top){
                ScrollView (.vertical, showsIndicators: false) {
    //                Text("Placeholder")
                
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
                    Spacer()
                    Text("Select Motor Numbers")
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                        .padding(.all)
                    

                    
                    VStack {
                        HStack{
                            Button(action: {isChecked1.toggle()}){
                               HStack{
                                  Image(systemName: isChecked1 ? "checkmark.square" : "square")
                                  Text("Motor 1")
                               }
                            }
                            
                            Button(action: {isChecked2.toggle()}){
                               HStack{
                                  Image(systemName: isChecked2 ? "checkmark.square" : "square")
                                  Text("Motor 2")
                               }
                            }
                            
                            Button(action: {isChecked3.toggle()}){
                               HStack{
                                  Image(systemName: isChecked3 ? "checkmark.square" : "square")
                                  Text("Motor 3")
                               }
                            }
                            
                        }
                        .padding(.all)
                        Spacer()
                        HStack {
                            Button(action: {isChecked4.toggle()}){
                               HStack{
                                  Image(systemName: isChecked4 ? "checkmark.square" : "square")
                                  Text("Motor 4")
                               }
                            }
                            Button(action: {isChecked5.toggle()}){
                               HStack{
                                  Image(systemName: isChecked5 ? "checkmark.square" : "square")
                                  Text("Motor 5")
                               }
                            }
                            Button(action: {isChecked6.toggle()}){
                               HStack{
                                  Image(systemName: isChecked6 ? "checkmark.square" : "square")
                                  Text("Motor 6")
                               }
                            }
                            
                        }
                        .padding(.all)
                        Spacer()
                        HStack {
                            Button(action: {isChecked7.toggle()}){
                               HStack{
                                  Image(systemName: isChecked7 ? "checkmark.square" : "square")
                                  Text("Motor 7")
                               }
                            }
                            Button(action: {isChecked8.toggle()}){
                               HStack{
                                  Image(systemName: isChecked8 ? "checkmark.square" : "square")
                                  Text("Motor 8")
                               }
                            }
                            Button(action: {isChecked9.toggle()}){
                               HStack{
                                  Image(systemName: isChecked9 ? "checkmark.square" : "square")
                                  Text("Motor 9")
                               }
                            }
                            
                        }
                        .padding(.all)
                        Spacer()
                        HStack {
                            Button(action: {isChecked10.toggle()}){
                               HStack{
                                  Image(systemName: isChecked10 ? "checkmark.square" : "square")
                                  Text("Motor 10")
                               }
                            }
                            Button(action: {isChecked11.toggle()}){
                               HStack{
                                  Image(systemName: isChecked11 ? "checkmark.square" : "square")
                                  Text("Motor 11")
                               }
                            }
                            Button(action: {isChecked12.toggle()}){
                               HStack{
                                  Image(systemName: isChecked12 ? "checkmark.square" : "square")
                                  Text("Motor 12")
                               }
                            }
                            
                        }
                        .padding(.all)
                        Spacer()
                        HStack {
                            Button(action: {isChecked13.toggle()}){
                               HStack{
                                  Image(systemName: isChecked13 ? "checkmark.square" : "square")
                                  Text("Motor 13")
                               }
                            }
                            Button(action: {isChecked14.toggle()}){
                               HStack{
                                  Image(systemName: isChecked14 ? "checkmark.square" : "square")
                                  Text("Motor 14")
                               }
                            }
                            Button(action: {isChecked15.toggle()}){
                               HStack{
                                  Image(systemName: isChecked15 ? "checkmark.square" : "square")
                                  Text("Motor 15")
                               }
                            }
                            
                        }.padding(.all)
                        
                        Button(action: {env.stringVal = report1()
                            env.stringValMotors = report2()
                            
                        }){
                            Text("Send")
                            
                            Text(env.stringValMotors)
                            
                            Text(env.stringValMotors + env.stringVal)
                        }
                        
                      
                    }
                    .padding(.all)
                    
                    
                }
                
            }
            
        }
        
        func report1() -> String {
            let str = String(env.vibeNum, radix: 2)
            return pad(string: str, toSize: 7)
        }
        
        func pad(string : String, toSize: Int) -> String {
          var padded = string
          for _ in 0..<(toSize - string.count) {
            padded = "0" + padded
          }
            return padded
        }
        
        func report2()-> String {
            var sum_:Int = 0
            if isChecked1 == true {
                sum_ += 1
            }
            if isChecked2 == true {
                sum_ += 2
            }
            if isChecked3 == true {
                sum_ += 4
            }
            if isChecked4 == true {
                sum_ += 8
            }
            if isChecked5 == true {
                sum_ += 16
            }
            if isChecked6 == true {
                sum_ += 32
            }
            if isChecked7 == true {
                sum_ += 64
            }
            if isChecked8 == true {
                sum_ += 128
            }
            if isChecked9 == true {
                sum_ += 256
            }
            if isChecked10 == true {
                sum_ += 512
            }
            if isChecked11 == true {
                sum_ += 1024
            }
            if isChecked12 == true {
                sum_ += 2048
            }
            if isChecked13 == true {
                sum_ += 4096
            }
            if isChecked14 == true {
                sum_ += 8192
            }
            if isChecked15 == true {
                sum_ += 16384
            }
            
            let str = String(sum_, radix: 2)
            return pad2(string: str, toSize: 15)
        }
        
        func pad2(string : String, toSize: Int) -> String {
          var padded = string
          for _ in 0..<(toSize - string.count) {
            padded = "0" + padded
          }
            return padded
        }
        
        func sendValue(_ value: Float) {
            if Int(value) != Int(self.value) {
                guard let sendValue = map(Int(value), of: 0...100, to: 0...255) else { return }
                bluetooth.send([UInt8(state.int), UInt8(sendValue)])
            }
            self.value = value
        }
        
        func map(_ value: Int, of: ClosedRange<Int>, to: ClosedRange<Int>) -> Int? {
            guard let ofmin = of.min(), let ofmax = of.max(), let tomin = to.min(), let tomax = to.max() else { return nil }
            return Int(tomin + (tomax - tomin) * (value - ofmin) / (ofmax - ofmin))
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

//
//extension patterns: BluetoothProtocol {
//    func state(state: Bluetooth.State) {
//        switch state {
//        case .unknown: print("◦ .unknown")
//        case .resetting: print("◦ .resetting")
//        case .unsupported: print("◦ .unsupported")
//        case .unauthorized: print("◦ bluetooth disabled, enable it in settings")
//        case .poweredOff: print("◦ turn on bluetooth")
//        case .poweredOn: print("◦ everything is ok")
//        case .error: print("• error")
//        case .connected:
//            print("◦ connected to \(bluetooth.current?.name ?? "")")
//            isConnected = true
//        case .disconnected:
//            print("◦ disconnected")
//            isConnected = false
//        }
//    }
//    
//    func list(list: [Bluetooth.Device]) { self.list = list }
//    
//    func value(data: Data) { response = data }
//}
