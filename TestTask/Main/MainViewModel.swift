//
//  MainViewModel.swift
//  TestTask
//
//  Created by Polina Tolstenkova on 11.09.2023.
//

import Foundation

class MainViewModel: ObservableObject {
    @Published var state: LockState = .unlocked
    @Published var topImageViewIsShown: Bool = false
    @Published var fullImageViewIsShown: Bool = false
    
    func toggleState() {
        switch state {
        case .locked:
            state = .unlocked
        case .unlocked:
            state = .locked
        }
    }
    
    func openFromTop() {
        topImageViewIsShown = true
    }
    
    func openFull() {
        fullImageViewIsShown = true
    }
}
