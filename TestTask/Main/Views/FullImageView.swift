//
//  FullImageView.swift
//  TestTask
//
//  Created by Polina Tolstenkova on 13.09.2023.
//

import SwiftUI

struct FullImageView: View {
    @Binding var isPresented: Bool
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            Image.panda
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width - 40)
            CloseButtonView(paddingTop: 20) {
                isPresented = false
            }
        }
    }
}

struct FullImageView_Previews: PreviewProvider {
    @State static var isPresented: Bool = true
    static var previews: some View {
        FullImageView(isPresented: $isPresented)
    }
}
