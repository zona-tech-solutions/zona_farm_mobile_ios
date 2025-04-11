//
//  HomeView.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 11/04/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("Welcome")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                    Text("Satria")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 30))
                }
                .padding(.leading, 10)
                Spacer()
            }
            
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
