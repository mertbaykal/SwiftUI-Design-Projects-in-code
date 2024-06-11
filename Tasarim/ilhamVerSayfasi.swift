//
//  ilhamVerSayfasi.swift
//  Tasarim
//
//  Created by Mert Baykal on 18/04/2024.
//

import SwiftUI

struct IlhamVerSayfasi: View {
    var body: some View {
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width // Typo düzeltildi: ekrenGenislik -> ekranGenislik
            let ekranUzunluk = geometry.size.height // Typo düzeltildi ve kelime standardize edildi: ekranUzunlugu -> ekranUzunluk
            VStack {
                Image("job").frame(width: ekranGenislik, height: ekranUzunluk / 3).padding(0)
                VStack(spacing: 100) {
                Text("Steve Jobs")
                    Text("Dünyayı değiştirecek insanlar, onu değiştirebileceklerini düşünecek kadar çılgındır.").multilineTextAlignment(.center).padding()
                    Button("İlham Ver") {
                        // Butona tıklandığında yapılacak işlem buraya yazılmalı.
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(30)
                }
            }
        }
    }
}

// Önizleme yapısı
struct IlhamVerSayfasi_Previews: PreviewProvider {
    static var previews: some View {
        IlhamVerSayfasi()
    }
}
