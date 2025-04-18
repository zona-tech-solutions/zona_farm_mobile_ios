//
//  SplashView.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 18/04/25.
//

import SwiftUI

struct SplashView: View {
    @State private var showLogin = false

        var body: some View {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color(hex: "#025464"), Color(hex: "#2A6F7D")]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack {
                    Image(.logoSplash)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .padding(.top, showLogin ? 130 : UIScreen.main.bounds.height / 2 - 25)
                        .animation(.easeInOut(duration: 0.3), value: showLogin)

                    Spacer()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        showLogin = true
                    }
                }
            }
            .sheet(isPresented: $showLogin) {
                LoginView()
                    .presentationDetents([.fraction(0.7)])
                    .presentationCornerRadius(20)
                    .interactiveDismissDisabled(true)
            }
        }
}

#Preview {
    SplashView()
}
