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
    
    case kotoran
    case cahaya
    case heatStress
    case suhu
    case kelembaban
    case amonia
    
    var name: String {
        switch self {
        case .kotoran:
            "Deteksi Kotoran"
        case .cahaya:
            "Cahaya"
        case .heatStress:
            "Heatstress Index"
        case .suhu:
            "Suhu"
        case .kelembaban:
            "Kelembaban"
        case .amonia:
            "Amonia"
        }
    }
    
    var unit: String {
        switch self{
        case .kotoran:
            ""
        case .cahaya:
            "Lux"
        case .heatStress:
            "%"
        case .suhu:
            "C"
        case .kelembaban:
            "%"
        case .amonia:
            "ppm"
        }
    }
    
}
