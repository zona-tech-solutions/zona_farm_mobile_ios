//
//  MonitoringItem.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 11/04/25.
//

import SwiftUI

struct MonitoringItem: View {
    var sensorValue: Float
    var monitoring: Monitoring
    var indicator: Color
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("\(sensorValue.formatted(.number.precision(.fractionLength(0...2))))")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "025464"))
                    Text(monitoring.unit)
                        .font(.system(size: 10))
                }
                Text(monitoring.name)
                    .font(.system(size: 10))
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "6C9199"))
            }
            HStack{
                Spacer()
                VStack{
                    Circle()
                        .fill(indicator)
                        .frame(width: 10, height: 10)
                        .padding(2)
                    Spacer()
                }
            }
        }
        .frame(height: 60)
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(.rect(cornerRadius: 6))
        .shadow(color: .black.opacity(0.1), radius: 5)
    }
}

#Preview {
    MonitoringItem(sensorValue: 120, monitoring: Monitoring.amonia, indicator: .green)
}
