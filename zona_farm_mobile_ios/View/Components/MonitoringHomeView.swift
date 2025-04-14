//
//  MonitoringHomeView.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 14/04/25.
//

import SwiftUI

struct MonitoringHomeView: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("Kandang Sleman")
                    Text("Periode 1")
                }
                
                Spacer()
                
                HStack{
                    VStack{
                        Text("usia ayam")
                        Text("22 Hari")
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                    )
                    
                    CustomButton(action: {
                        print("hello")
                    }, title: "->", width: 40, height: 40, cornerRadius: 10, backgroundColor: .white)
                }
            }
            
            VStack{
                Text("Analisis Suara")
                Text("Terdeteksi suara batuk dari ayam")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
            )
            
            MonitoringGridView()
        }
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(                    
                    LinearGradient(
                    gradient: Gradient(colors: [Color(hex: "#1B3E55"), Color(hex: "#025464")]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
        )
    }
}

#Preview {
    MonitoringHomeView()
}
