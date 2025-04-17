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
            MonitoringItem(sensorValue: 75.5, monitoring: .kelembapan, indicator: .red)
            MonitoringItem(sensorValue: 28.2, monitoring: .suhu, indicator: .yellow)
            MonitoringItem(sensorValue: 8.5, monitoring: .amonia, indicator: .red)
            MonitoringItem(sensorValue: 15.3, monitoring: .blower, indicator: .red)
            MonitoringItem(sensorValue: 103.7, monitoring: .thi, indicator: .yellow)
            MonitoringItem(sensorValue: 5.12, monitoring: .cahaya, indicator: .yellow)
        }
    }
}

#Preview {
    MonitoringGridView()
}
