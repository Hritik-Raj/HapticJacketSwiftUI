//
//  vibrationTypeView.swift
//  jacket
//
//  Created by Hritik Raj on 4/17/21.
//

import SwiftUI

struct vibrationTypeView: View {
    var button: String
    var body: some View {
        Button(action: {
//            self.viewRouter.currentPage = self.button.title
        }) {
            Text(button)

            .font(.system(size: 40))
            .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
        }
    }
}

//struct vibrationTypeView_Previews: PreviewProvider {
//    static var previews: some View {
//        vibrationTypeView()
//    }
//}
