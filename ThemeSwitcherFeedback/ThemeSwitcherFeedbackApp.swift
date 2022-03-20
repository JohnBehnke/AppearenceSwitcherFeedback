//
//  ThemeSwitcherFeedbackApp.swift
//  ThemeSwitcherFeedback
//
//  Created by John Behnke on 3/20/22.
//

import SwiftUI

@main
struct ThemeSwitcherFeedbackApp: App {
  @ObservedObject var themeSettings = ThemeSettings.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
            .preferredColorScheme(themeSettings.currentTheme == 0 ? .light : themeSettings.currentTheme == 1 ? .dark : nil)
            .frame(width: 500, height: 500)
          
        }
    }
}
