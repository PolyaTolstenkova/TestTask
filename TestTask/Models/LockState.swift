//
//  LockState.swift
//  TestTask
//
//  Created by Polina Tolstenkova on 11.09.2023.
//

import Foundation

enum LockState {
    case locked
    case unlocked
    
    var name: String {
        switch self {
        case .locked:
            return "unlock".localized
        case .unlocked:
            return "lock".localized
        }
    }
    
    var disabled: Bool {
        switch self {
        case .locked:
            return true
        case .unlocked:
            return false
        }
    }
}
