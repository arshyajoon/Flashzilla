//
//  SettingsView.swift
//  Flashzilla.swift
//
//  Created by Arshya GHAVAMI on 4/17/21.
//

import SwiftUI
  
class CardSettings: ObservableObject {
    @Published var cardsBackInArray = true
}

struct SettingsView: View {
    @EnvironmentObject  var cardSettings: CardSettings
    var body: some View {
        NavigationView {
            Toggle(isOn: $cardSettings.cardsBackInArray) {
                Text("Put cards back in the pile after wrong answers")
            }
           
            .navigationBarTitle(Text("Settings"))
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
