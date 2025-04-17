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
                VStack(alignment: .leading){
                    Text("Kandang Sleman")
                        .fontWeight(.bold)
                    Text("Periode 1")
                        .font(.system(size: 15))
                }
                .foregroundColor(.white)
                
                Spacer()
                
                HStack{
                    VStack(alignment: .leading){
                        Text("usia ayam")
                            .font(.system(size: 10))
                            .foregroundColor(Color(hex: "6C9199"))
                        Text("22 Hari")
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "025464"))
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .frame(width: 70)
                    )
                    .padding(.trailing, 10)
                    
                    CustomButton(action: {
                        print("hello")
                    }, title: "arrow.right", width: 25, height: 25, cornerRadius: 5, backgroundColor: .white)
                }
            }
            
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Deteksi Penyakit")
                            .foregroundColor(Color(hex: "6C9199"))
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                        Text("Hasil Kamera Mendeteksi bakteri Salmonella")
                            .foregroundColor(Color(hex: "0E485C"))
                            .font(.system(size: 12))
                    }
                    Spacer()
                }
                .padding(.leading, 10)
                
                HStack{
                    Spacer()
                    Text("01/05/2024")
                        .foregroundColor(Color(hex: "6C9199"))
                        .font(.system(size: 10))
                        .padding(.trailing, 10)
                }
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
