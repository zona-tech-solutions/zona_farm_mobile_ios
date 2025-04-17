//
//  HomeView.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 11/04/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            HStack(alignment: .center){
                VStack(alignment: .leading){
                    Image(.logoTitle)
                        .padding(.bottom, 10)
                    
                    Text("Hi, Diandra")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "025464"))
                }
                Spacer()
            }
        
            MonitoringHomeView()
            
            HStack{
                Text("Apa yang baru?")
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "025464"))
                Spacer()
                Text("lihat semua")
                    .font(.system(size: 12))
                    .foregroundColor(Color(hex: "025464"))
            }
            .padding(.top,20)
            
            ZStack{
                HStack{
                    Image(systemName: "qrcode.viewfinder")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .foregroundColor(.white)
                    VStack(alignment:.leading){
                        Text("Scan")
                        Text("Penyakit")
                    }
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 80)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(
                        LinearGradient(
                        gradient: Gradient(colors: [Color(hex: "#1B3E55"), Color(hex: "#025464")]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ))
            )
            
            HStack{
                Text("Artikel")
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "025464"))
                Spacer()
                Text("lihat semua")
                    .font(.system(size: 12))
                    .foregroundColor(Color(hex: "025464"))
            }
            .padding(.top,20)
            
            LazyVStack{
                ArticleCardView()
                ArticleCardView()
                ArticleCardView()
            }
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    HomeView()
}
