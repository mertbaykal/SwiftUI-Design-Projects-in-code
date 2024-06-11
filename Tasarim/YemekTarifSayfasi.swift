//
//  YemekTarifSayfasi.swift
//  Tasarim
//
//  Created by Mert Baykal on 30/04/2024.
//

import SwiftUI

struct YemekTarifSayfasi: View {
    var body: some View {
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width
            let ekranUzunkluk = geometry.size.height
            
            VStack{
                Image("yemekresim")
                    .resizable()
                    .frame(width: ekranGenislik, height: ekranUzunkluk/3)
                
                VStack(alignment: .leading){
                    Text("Kofte").font(.system(size: 30))
                        .foregroundColor(.red)
                    
                    HStack{
                        Text("izgaraya uygun")
                        Spacer()
                        Text("10 ocak")
                    }.padding()
                }.padding()
                
                Text("İzgara köfte, Türk mutfağının vazgeçilmez lezzetlerinden biridir. Genellikle kıyma, soğan, maydanoz ve baharatlarla hazırlanan köfte harcı, şekil verildikten sonra mangal veya ızgarada pişirilir.")
                    .multilineTextAlignment(.leading)
                    .padding([.leading, .trailing],50)
                
                    Spacer()
                
                HStack(spacing: 0){
                    Button("begen"){
                        
                    }.foregroundColor(.black)
                        .frame(width: ekranGenislik / 2, height: ekranUzunkluk/10)
                        .background(.yellow)
                    
                    Button("yorum"){
                        
                    }.foregroundColor(.white)
                        .frame(width: ekranGenislik/2, height: ekranUzunkluk/10)
                        .background(.orange)
                        
                        }
            }
        }
    }
}

struct YemekTarifSayfasi_Previews: PreviewProvider {
    static var previews: some View {
        YemekTarifSayfasi()
    }
}
