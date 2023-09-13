//
//  CloseButtonView.swift
//  TestTask
//
//  Created by Polina Tolstenkova on 13.09.2023.
//

import SwiftUI

struct CloseButtonView: View {
    let paddingTop: CGFloat
    let action: Handler
    
    init(paddingTop: CGFloat = 50, action: @escaping Handler) {
        self.paddingTop = paddingTop
        self.action = action
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    action()
                } label: {
                    Image.xmark
                        .foregroundColor(.white)
                        .frame(width: 32, height: 32)
                        .background {
                            Circle()
                                .fill(Color.gray)
                        }
                }
            }
            Spacer()
        }.padding(.top, paddingTop)
        .padding(.trailing, 20)
    }
}

struct CloseButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CloseButtonView {}
    }
}
