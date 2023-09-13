//
//  TopImageView.swift
//  TestTask
//
//  Created by Polina Tolstenkova on 11.09.2023.
//

import SwiftUI

struct TopImageView: View {
    @Binding var isPresented: Bool
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        ZStack {
            Image.panda
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width, height: height, alignment: .leading)
                .clipped()
                .ignoresSafeArea()
            CloseButtonView {
                isPresented = false
            }
        }
    }
}

struct TopImageView_Previews: PreviewProvider {
    @State static var isPresented: Bool = true
    static var previews: some View {
        TopImageView(isPresented: $isPresented, width: 0, height: 0)
    }
}
