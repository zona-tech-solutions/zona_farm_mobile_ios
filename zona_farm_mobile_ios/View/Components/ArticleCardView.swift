//
//  ArticleCardView.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 17/04/25.
//

import SwiftUI

struct ArticleCardView: View {
    var body: some View {
        HStack{
            Image(.artikelSample)
                .resizable()
                .frame(width: 100, height: 80)
            VStack(alignment:.leading){
                Text("Inovasi Pakan Ayam Murah")
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "025464"))
                Text("Seperti yang kita ketahui pakan ayam merupakan komponen yang sangat penting dalam mendukung tumbuh kembang ayam baca selengkapnya......")
                    .font(.system(size: 10))
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(hex: "0E485C"), lineWidth: 1)
                .frame(height: 100)
        )
    }
}

#Preview {
    ArticleCardView()
}
