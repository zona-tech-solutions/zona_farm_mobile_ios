//
//  MonitoringItem.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 11/04/25.
//

import SwiftUI

struct MonitoringItem: View {
    var sensorValue: Int
    var monitoring: Monitoring
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("\(sensorValue)")
                    Text(monitoring.unit)
                }
                Text(monitoring.name)
            }
        }
        .frame(height: 80)
        .frame(maxWidth: .infinity)
        .background(Color.gray)
        .clipShape(.rect(cornerRadius: 6))
        .shadow(color: .black.opacity(0.1), radius: 5)
    }
}

#Preview {
    MonitoringItem(sensorValue: 120, monitoring: Monitoring.amonia)
}
