//
//  MonitoringGridView.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 11/04/25.
//

import SwiftUI

struct MonitoringGridView: View {
    var body: some View {
        LazyVGrid(columns:[GridItem(), GridItem(), GridItem()] ,spacing: 10){
            MonitoringItem(sensorValue: 120, monitoring: .kelembapan)
            MonitoringItem(sensorValue: 120, monitoring: .suhu)
            MonitoringItem(sensorValue: 120, monitoring: .amonia)
            MonitoringItem(sensorValue: 120, monitoring: .blower)
            MonitoringItem(sensorValue: 120, monitoring: .thi)
            MonitoringItem(sensorValue: 120, monitoring: .cahaya)
        }
    }
}

#Preview {
    MonitoringGridView()
}
