//
//  ContentView.swift
//  Tasarim
//
//  Created by Mert Baykal on 17/04/2024.
//

import SwiftUI

// HStack = yanyana
// VStack = ust ustte
// ZStack = ic ice

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width
            let ekranYukseklik = geometry.size.height
            
            VStack {
                Yazi(icerik: "merhaba", yaziboyutu: 30)
                HStack(spacing: 0) {
                    kirmizi().frame(width: ekranGenislik/2, height: 100)
                    Rectangle().fill(.green).frame(width: 80, height: 80).padding([.leading,.trailing],3)
                    Rectangle().fill(.blue).frame(width: 50, height: 50).padding(.top,30).padding(.bottom,3)
                    
                }
                Image("Image").frame(width: ekranGenislik/2, height: ekranYukseklik/2)
            }
        }
    }
}

#Preview {
    ContentView()
}


struct kirmizi: View {
    var body: some View {
        Rectangle().fill(.red)
    }
}

struct yesil: View {
    var body: some View {
        Rectangle().fill(.red).frame(width: 100, height: 100)
    }
}

struct Yazi: View {
    var icerik = " "
    var yaziboyutu = 0
    var body: some View {
        Text(icerik).font(.system(size: CGFloat(yaziboyutu)))
    }
}
