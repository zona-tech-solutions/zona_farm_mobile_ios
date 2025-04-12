//
//  MonitoringGridView.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 11/04/25.
//

import SwiftUI

struct MonitoringGridView: View {
    var body: some View {
        LazyVGrid(columns:[GridItem(), GridItem()] ,spacing: 10){
            MonitoringItem(sensorValue: 120, monitoring: .kotoran)
            MonitoringItem(sensorValue: 120, monitoring: .cahaya)
            MonitoringItem(sensorValue: 120, monitoring: .heatStress)
            MonitoringItem(sensorValue: 120, monitoring: .suhu)
            MonitoringItem(sensorValue: 120, monitoring: .kelembaban)
            MonitoringItem(sensorValue: 120, monitoring: .amonia)
        }
    }
}

#Preview {
    MonitoringGridView()
}
