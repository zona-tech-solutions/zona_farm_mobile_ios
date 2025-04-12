//
//  HomeView.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 11/04/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            HStack(alignment: .center){
                VStack{
                    Text("Welcome")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                    Text("Satria")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 30))
                }
                Spacer()
                
                Button(action: {}, label: {
                    HStack{
                        Text("Pupuk")
                            .foregroundColor(.white)
                    }
                    .frame(width: 80, height: 40)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray)
                    )
                })
            }
        
            VStack{
                Text("Analisis Suara")
                Text("Terdeteksi suara batuk dari ayam")
            }
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.gray)
            )
            
            MonitoringGridView()
            
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    HomeView()
}
