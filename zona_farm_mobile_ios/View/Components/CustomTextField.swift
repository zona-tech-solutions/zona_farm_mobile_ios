//
//  CustomTextField.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 18/04/25.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    var borderColor: Color
    var textSize: CGFloat
    var placeholderColor: Color
    
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            // Placeholder text
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(placeholderColor)
                    .font(.system(size: textSize))
                    .padding(.horizontal, 12)
            }
            
            // Actual TextField
            TextField("", text: $text)
                .font(.system(size: textSize))
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(borderColor, lineWidth: 1)
                )
        }
    }
}
