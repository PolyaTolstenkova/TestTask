//
//  MainScreen.swift
//  TestTask
//
//  Created by Polina Tolstenkova on 11.09.2023.
//

import SwiftUI

struct MainScreen: View {
    @ObservedObject var viewModel: MainViewModel
    private let screenWidth: CGFloat = UIScreen.main.bounds.width
    private let screenHeight: CGFloat = UIScreen.main.bounds.height
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                Image.panda
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: screenHeight * 0.3, alignment: .leading)
                    .clipped()
                HStack(spacing: 20) {
                    BlueButton(text: viewModel.state.name, width: screenWidth / 2 - 30) {
                        viewModel.toggleState()
                    }
                    BlueButton(
                        text: "open_from_top".localized,
                        disabled: viewModel.state.disabled,
                        width: screenWidth / 2 - 30
                    ) {
                        withAnimation {
                            viewModel.openFromTop()
                        }
                    }
                }
                Spacer()
                BlueButton(text: "open_full".localized, width: screenWidth - 40) {
                    viewModel.openFull()
                }
            }
        }.transitionFullScreenCover(
            isPresented: $viewModel.topImageViewIsShown,
            transition: .move(edge: .top)
        ) {
            TopImageView(
                isPresented: $viewModel.topImageViewIsShown,
                width: screenWidth,
                height: screenHeight
            )
        }.fullScreenCover(isPresented: $viewModel.fullImageViewIsShown) {
            FullImageView(isPresented: $viewModel.fullImageViewIsShown)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen(viewModel: .init())
    }
}
