//
//  Monitoring.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 11/04/25.
//

import Foundation

enum Monitoring: String, CaseIterable{
    var id: Monitoring{
        self
    }
    
    case kelembapan
    case suhu
    case amonia
    case blower
    case thi
    case cahaya
    
    var name: String {
        switch self {
        case .kelembapan:
            "Kelembapan"
        case .suhu:
            "Suhu"
        case .amonia:
            "Amonia"
        case .blower:
            "Kecepatan Blower"
        case .thi:
            "THI"
        case .cahaya:
            "Intensitas Cahaya"
        }
    }
    
    var unit: String {
        switch self{
        case .kelembapan:
            "%"
        case .suhu:
            "°C"
        case .amonia:
            "ppm"
        case .blower:
            "rpm"
        case .thi:
            ""
        case .cahaya:
            "Lux"
        }
    }
    
}
