//
//  ContentView.swift
//  EmojiLover
//
//  Created by Jubal Jacob on 20/01/24.
//

import SwiftUI

enum Emoji: String, CaseIterable{
    case 😂,🤣,👅,😍;
}

struct ContentView: View {
    @State var selection: Emoji = .😂
    var body: some View {
        VStack {
            
            Text("Select any emoji").font(.system(size: 40)).fontWeight(.bold)
            Text(selection.rawValue).font(.system(size: 150))
            
            Picker("Select Emoji", selection: $selection){
                ForEach(Emoji.allCases, id: \.self){
                    emoji in Text(emoji.rawValue)
                }
            }
            .pickerStyle(.segmented)
        }
        .navigationTitle("Emoji Lovers!")
        .padding(16)
    }
}

#Preview {
    ContentView()
}
