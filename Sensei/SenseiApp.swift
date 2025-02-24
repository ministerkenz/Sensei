//
//  SenseiApp.swift
//  Sensei
//
//  Created by Kenzo Yubitani (student LM) on 2/24/25.
//

import SwiftUI

@main
struct SenseiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(progress1: Binding.constant(ProgressBar()))
        }
    }
}
