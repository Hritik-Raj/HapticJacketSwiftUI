//
//  jacketApp.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

//import SwiftUI
//
//@main
//struct jacketApp: App {
//    var bluetooth = Bluetooth.shared
//    var body: some Scene {
//        WindowGroup {
//            ContentView().onAppear{ bluetooth.delegate = self }
//        }
//    }
//}
//
//extension jacketApp: BluetoothProtocol {
//    func state(state: Bluetooth.State) {
//        switch state {
//        case .unknown: print("◦ .unknown")
//        case .resetting: print("◦ .resetting")
//        case .unsupported: print("◦ .unsupported")
//        case .unauthorized: print("◦ bluetooth disabled, enable it in settings")
//        case .poweredOff: print("◦ turn on bluetooth")
//        case .poweredOn: print("◦ everything is ok")
//        case .error: print("• error")
//        }
//    }
//
//    func list(list: [Bluetooth.Device]) { }
//
//    func value(data: Data) { }
//}

import SwiftUI

@main
struct jacketApp: App {
    var bluetooth = Bluetooth.shared
    
    var body: some Scene {
        WindowGroup{
            ContentView()
        }
    }
}
struct appButton: ButtonStyle {
    let color: Color
    
    public init(color: Color = .accentColor) {
        self.color = color
    }
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 8)
            .padding(.vertical, 3)
            .foregroundColor(.accentColor)
            .background(Color.accentColor.opacity(0.2))
            .cornerRadius(8)
    }
}

struct appTextField: TextFieldStyle {
    @Binding var focused: Bool
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(focused ? Color.accentColor : Color.accentColor.opacity(0.2), lineWidth: 2)
            ).padding()
    }
}
