//
//  View.swift
//  TestTask
//
//  Created by Polina Tolstenkova on 11.09.2023.
//

import Foundation
import SwiftUI

extension View {
    func transitionFullScreenCover<Content: View>(
        isPresented: Binding<Bool>,
        transition: AnyTransition = .opacity,
        content: @escaping () -> Content
    ) -> some View {
        ZStack {
            self
            ZStack {
                if isPresented.wrappedValue {
                    TransitionFullScreenCover(isPresented: isPresented, content: content)
                        .transition(transition)
                }
            }
        }
    }
}

struct TransitionFullScreenCover<Content: View>: View {
    @Binding var isPresented: Bool
    @ViewBuilder var content: Content
    
    var body: some View {
        ZStack {
            content
        }
    }
}
