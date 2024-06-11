//
//  loginSayfa.swift
//  Tasarim
//
//  Created by Mert Baykal on 28/04/2024.
//

import SwiftUI

struct loginSayfa: View {
    @State private var tfKulaniciAdi = " "
    @State private var tfSifre = " "

    var body: some View {
        VStack(spacing: 50) {
        
        
            Image("logo")
            
            TextField("kulanici adi", text: $tfKulaniciAdi)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("sifre", text: $tfSifre)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Log In"){
                
            }.foregroundColor(.white)
                .padding()
                .background(.red)
                .cornerRadius(8)
            
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.indigo)
    }
}

#Preview {
    loginSayfa()
}
