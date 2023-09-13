//
//  TestTaskApp.swift
//  TestTask
//
//  Created by Polina Tolstenkova on 11.09.2023.
//

import SwiftUI

@main
struct TestTaskApp: App {
    var body: some Scene {
        WindowGroup {
            MainScreen(viewModel: .init())
        }
    }
}
