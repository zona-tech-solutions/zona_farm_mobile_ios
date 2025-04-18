//
//  LoginView.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 18/04/25.
//

import SwiftUI

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack(spacing: 20) {
            VStack{
                Text("Selamat Datang")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "22577A"))
                
                Text("Silakan masukkan detail di bawah ini untuk melanjutkan.")
                    .foregroundColor(Color(hex: "22577A"))
                    .font(.system(size: 12))
            }
            .padding(.bottom, 20)

            VStack(alignment:.leading){
                Text("Email")
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "22577A"))
                CustomTextField(
                    placeholder: "Masukkan alamat email",
                    borderColor: Color(hex: "1B3E55"),
                    textSize: 16,
                    placeholderColor:  Color(hex: "7797AD"),
                    text: $email
                )
            }
            

            VStack{
                HStack{
                    Text("Kata sandi")
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "22577A"))
                    Spacer()
                    Text("Lupa kata sandi?")
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: "3082C0"))
                    
                }
                CustomTextField(
                    placeholder: "Masukkan kata sandi",
                    borderColor: Color(hex: "1B3E55"),
                    textSize: 16,
                    placeholderColor: Color(hex: "7797AD"),
                    text: $password
                )
            }

            Button(action: {
                //masukin function
            }) {
                Text("Masuk")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(LinearGradient(
                        gradient: Gradient(colors: [Color(hex: "#025464"), Color(hex: "#2A6F7D")]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            HStack{
                Text("Belum punya akun?")
                    .foregroundColor(Color(hex: "22577A"))
                Button {
                    //arahin ke daftar section
                } label: {
                    Text("Daftar")
                        .foregroundColor(Color(hex: "3082C0"))
                }
            }
            .fontWeight(.regular)
            
            Spacer()
        }
        .padding()
        .background(Color.white)
    }
}

#Preview {
    LoginView()
}
