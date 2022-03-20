//
//  ContentView.swift
//  ThemeSwitcherFeedback
//
//  Created by John Behnke on 3/20/22.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var themeSetings = ThemeSettings.shared
    var body: some View {
      VStack {
        Text("Steps to Replicate").font(.largeTitle).padding()
        VStack(alignment: .leading) {
         
          Text("1. Set your system appearence to 'Auto'").padding(5)
          Text("2. Click the button that is the opposite of the current system theme (eg: If the theme is in light mode, click 'Dark; and vice versa)").padding(5)
          Text("3. Click the system button.").padding(5)
          Text("4. You should observe that not all elements in the view switched color schemes properly.").padding(5)
        }.padding()
        
        Button {
          themeSetings.currentTheme = 0
        } label: {
          Text("Light")
        }
        Button {
          themeSetings.currentTheme = 1
        } label: {
          Text("Dark")
        }
        Button {
          themeSetings.currentTheme = 2
        } label: {
          Text("System")
        }
      }.padding()
      

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class ThemeSettings: ObservableObject {

    static let shared = ThemeSettings()

  @AppStorage("selectedAppearence") var currentTheme: Int = 0
}
