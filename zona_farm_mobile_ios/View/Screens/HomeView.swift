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
                VStack(alignment: .leading){
                    Image(.logoTitle)
                        .padding(.bottom, 10)
                    Text("Hi, Diandra")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 20))
                }
                Spacer()
            }
        
            MonitoringHomeView()
            
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    HomeView()
}
