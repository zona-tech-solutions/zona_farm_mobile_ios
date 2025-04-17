//
//  CustomButton.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 12/04/25.
//

import SwiftUI

struct CustomButton: View {
    var action: () -> Void
    var title: String
    var width: CGFloat
    var height: CGFloat
    var cornerRadius: CGFloat
    var backgroundColor: Color
    
    var body: some View {
        Button(action: action, label: {
            HStack{
                Image(systemName: title)
                    .resizable()
                    .frame(width: width-width/3, height: height-height/3)
                    .foregroundColor(Color(hex: "025464"))
            }
            .frame(width: width, height: height)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(backgroundColor)
            )
        })
    }
}

#Preview {
    CustomButton(action: {
        print("halo")
    }, title: "arrow.right", width: 80, height: 40, cornerRadius: 10, backgroundColor: .gray )
}
