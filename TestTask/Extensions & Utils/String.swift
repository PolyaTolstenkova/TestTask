//
//  String.swift
//  TestTask
//
//  Created by Polina Tolstenkova on 13.09.2023.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: self)
    }
}
