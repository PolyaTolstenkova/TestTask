//
//  BlueButton.swift
//  TestTask
//
//  Created by Polina Tolstenkova on 11.09.2023.
//

import SwiftUI

struct BlueButton: View {
    let text: String
    let disabled: Bool
    let width: CGFloat
    let action: Handler
    
    init(text: String, disabled: Bool = false, width: CGFloat, action: @escaping Handler) {
        self.text = text
        self.disabled = disabled
        self.width = width
        self.action = action
    }
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .frame(width: width, height: 56)
                .background {
                    RoundedRectangle(cornerRadius: 18)
                        .stroke(Color.indigo, lineWidth: 3)
                        .background {
                            RoundedRectangle(cornerRadius: 18)
                                .fill(Color.blue)
                        }
                }.opacity(disabled ? 0.5 : 1.0)
        }.disabled(disabled)
    }
}

struct BlueButton_Previews: PreviewProvider {
    static var previews: some View {
        BlueButton(text: String(), width: 0) {}
    }
}
